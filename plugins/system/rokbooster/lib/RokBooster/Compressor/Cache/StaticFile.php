<?php
/**
 * @version   $Id: StaticFile.php 314 2012-04-27 02:48:00Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - ${copyright_year} RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
defined('ROKBOOSTER_LIB') or die('Restricted access');

/**
 *
 */
class RokBooster_Compressor_Cache_StaticFile implements RokBooster_Compressor_ICache
{
	/**
	 * @var object
	 */
	protected $options;

	/**
	 * @param $checksum
	 *
	 * @return bool
	 */
	public function isCacheExpired($checksum)
	{
		//see if file is stale
		$expired    = true;
		$cache_file = $this->options->cache_path . $checksum . '.php';
		if (file_exists($cache_file)) {
			$expired = ((int)strtotime('now') > ((int)filectime($cache_file) + (int)$this->options->cache_time)) ? true : false;
		}
		return $expired;
	}

	/**
	 * @param $checksum
	 *
	 * @return bool
	 */
	public function doesCacheExist($checksum)
	{
		if (file_exists($this->options->cache_path . $checksum . '.php')) {
			return true;
		}
		return false;
	}

	/**
	 * @param $checksum
	 *
	 * @return string
	 */
	public function getCacheUrl($checksum)
	{
		return $this->options->cache_url . $checksum . '.php';
	}

	/**
	 *
	 * @param $checksum
	 *
	 * @return mixed
	 */
	public function setCacheAsValid($checksum)
	{
		$cache_file = $this->options->cache_path . $checksum . '.php';
		if (file_exists($cache_file)) {
			touch($cache_file);
		}
	}


	/**
	 * @param $checksum
	 *
	 * @return bool|string
	 */
	public function getCacheContent($checksum)
	{
		$cache_file = $this->options->cache_path . $checksum . '.php';
		if (file_exists($cache_file)) {

			return file_get_contents($cache_file);
		}
		return '';
	}


	/**
	 * @param $options
	 */
	public function __construct($options)
	{
		$this->options = $options;
	}


	/**
	 * @return bool
	 */
	protected function isGzipEnabled()
	{
		//override param if gzip not available
		if ($this->options->use_gzip) {
			if (!isset($_SERVER['HTTP_ACCEPT_ENCODING'])) {
				return false;
			}

			$encoding = false;

			if (false !== strpos($_SERVER['HTTP_ACCEPT_ENCODING'], 'gzip')) {
				$encoding = 'gzip';
			}

			if (false !== strpos($_SERVER['HTTP_ACCEPT_ENCODING'], 'x-gzip')) {
				$encoding = 'x-gzip';
			}

			if (!$encoding) {
				return false;
			}

			if (!extension_loaded('zlib') || ini_get('zlib.output_compression')) {
				return false;
			}

			return $encoding;
		}
		return false;
	}

	/**
	 * @param string $type
	 *
	 * @return string
	 */
	protected function getOutHeader($type)
	{
		$cache_time = $this->options->cache_time;
		$exp        = '"Expires: ' . gmdate("D, d M Y H:i:s", time() + (60 * $cache_time)) . ' GMT"';

		$encoding = $this->isGzipEnabled();
		$header   = '<?php ';
		if ($encoding !== false) {
			$header .= 'ob_start ("ob_gzhandler"); ';
		}
		$header .= 'header("Content-type: ' . $type . '; charset= UTF-8"); ';
		if ($encoding !== false) {
			$header .= 'header("Cache-Control: must-revalidate"); ';
			$header .= 'header(' . $exp . '); ';
			$header .= 'header("X-Content-Encoded-By: RokBooster"); ';
		}
		$header .= '?>';
		return $header;
	}

	/**
	 * @param       $checksum
	 * @param       $cont
	 * @param       $mimetype
	 *
	 * @param bool  $addheaders
	 *
	 * @throws Exception
	 * @return bool
	 */
	public function write($checksum, $cont, $addheaders = true, $mimetype = 'application/x-javascript')
	{
		$temp_file  = $checksum . '_working.php';
		$final_file = $checksum . '.php';

		$output = '';
		if ($addheaders) {
			$output .= $this->getOutHeader($mimetype, strlen($cont));
			$output .= "\n\n/*** " . $checksum . " ***/\n\n";
		}
		$output .= $cont;
		$fh = fopen($this->options->cache_path . $temp_file, 'w') or die("can't open file");

		if (fwrite($fh, $output)) {
			fclose($fh);
		} else {
			fclose($fh);
			throw new Exception("Can not write to path: `" . $this->options->cache_path . "`");
		}

		if (file_exists($final_file)) {
			unlink($final_file);
		}
		rename($this->options->cache_path . $temp_file, $this->options->cache_path . $final_file);
		return true;
	}

	/**
	 * @param RokBooster_Compressor_FileGroup $filegroup
	 */
	public function writeScriptFile(RokBooster_Compressor_FileGroup $filegroup)
	{
		$this->write($filegroup->getChecksum(), $filegroup->getResult(), true, 'application/x-javascript');
	}

	/**
	 * @param RokBooster_Compressor_InlineGroup $inlinegroup
	 */
	public function writeInlineScriptFile(RokBooster_Compressor_InlineGroup $inlinegroup)
	{
		$this->write($inlinegroup->getChecksum(), $inlinegroup->getResult(), false);
	}

	/**
	 * @param RokBooster_Compressor_FileGroup $filegroup
	 */
	public function writeStyleFile(RokBooster_Compressor_FileGroup $filegroup)
	{
		$this->write($filegroup->getChecksum(), $filegroup->getResult(), true, 'text/css');
	}

	/**
	 * @param RokBooster_Compressor_InlineGroup $inlinegroup
	 */
	public function writeInlineStyleFile(RokBooster_Compressor_InlineGroup $inlinegroup)
	{
		$this->write($inlinegroup->getChecksum(), $inlinegroup->getResult(), false);
	}
}
