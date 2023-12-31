<?php
/**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

class RokSprocket_Layout_Headlines extends RokSprocket_AbstractLayout
{
	/**
	 * @var bool
	 */
	protected static $instanceHeadersRendered = false;
	/**
	 * @var string
	 */
	protected $name = 'headlines';


	protected function cleanItemParams()
	{
		foreach ($this->items as $item_id => &$item) {

			$item->setPrimaryImage($this->setupImage($item, 'headlines_image_default', 'headlines_image_default_custom', 'headlines_item_image'));
			$item->setPrimaryLink($this->setupLink($item,'headlines_link_default','headlines_link_default_custom', 'headlines_item_link'));

			// clean from tags and limit words amount
			$words_amount = $this->parameters->get('headlines_previews_length', 20);
			$stripped = strip_tags($item->getText());
			$preview = $this->_getWords($stripped, $words_amount);
			if (strlen($stripped) != strlen($preview)) $item->setText($preview . "…");


			// resizing images if needed
			if ($item->getPrimaryImage() && $this->parameters->get('headlines_resize_enable', false)){
				$width = $this->parameters->get('headlines_resize_width', 0);
				$height = $this->parameters->get('headlines_resize_height', 0);
				$item->getPrimaryImage()->resize($width, $height);
			}
		}
	}

	/**
	 * @return bool|string
	 */
	public function renderBody()
	{

		$theme_basefile = $this->container[sprintf('roksprocket.layouts.%s.themes.%s.basefile', $this->name, $this->theme)];
		return $this->theme_context->load($theme_basefile, array(
		                                                  'layout'    => $this,
		                                                  'items'     => $this->items,
		                                                  'parameters'=> $this->parameters
		                                             ));
	}

	/**
	 * Called to render headers that should be included on a per module instance basis
	 */
	public function renderInstanceHeaders()
	{
		RokCommon_Header::addScript($this->theme_context->getUrl('headlines.js'));
		RokCommon_Header::addStyle($this->theme_context->getUrl('headlines.css'));

		$id = $this->parameters->get('module_id');
		$settings				= new stdClass();
		$settings->accordion 	= $this->parameters->get('headlines_enable_accordion', 1);
		$settings->autoplay  	= $this->parameters->get('headlines_autoplay', 0);
		$settings->delay	 	= $this->parameters->get('headlines_autoplay_delay', 5);
		$options				= json_encode($settings);

		$js   = array();
		$js[] = "window.addEvent('domready', function(){";
		$js[] = "	RokSprocket.instances.headlines.attach(" . $id . ", '" . $options . "');";
		$js[] = "});";
		RokCommon_Header::addInlineScript(implode("\n", $js) . "\n");
	}

	/**
	 * Called to render headers that should be included only once per Layout type used
	 */
	public function renderLayoutHeaders()
	{
		if (!self::$instanceHeadersRendered) {

			$instance   = array();
			$instance[] = "window.addEvent('domready', function(){";
			$instance[] = "		RokSprocket.instances.headlines = new RokSprocket.Headlines();";
			$instance[] = "});";

			RokCommon_Header::addInlineScript(implode("\n", $instance) . "\n");

			self::$instanceHeadersRendered = true;
		}
	}

	public function _getWords($string, $amount = false)
	{
		if (!$amount) $amount = strlen($string);
		$words = explode(' ', $string, ($amount + 1));
		if(count($words) > $amount) array_pop($words);

		return implode(' ', $words);
	}
}
