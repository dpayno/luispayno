<?php
/**
* @version   $Id: copyright.php 490 2012-05-01 04:04:23Z btowles $
* @author    RocketTheme http://www.rockettheme.com
* @copyright Copyright (C) 2007 - ${copyright_year} RocketTheme, LLC
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*
* Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
*
*/
defined('JPATH_BASE') or die();

gantry_import('core.gantryfeature');

class GantryFeatureCopyright extends GantryFeature {
    var $_feature_name = 'copyright';

	function render($position="") {
	    ob_start();
	    ?>
	    <div class="rt-block">
			<span class="copytext"><?php echo $this->get('text'); ?></span>
		</div>
		<?php
	    return ob_get_clean();
	}
}