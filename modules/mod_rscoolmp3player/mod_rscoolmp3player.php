<?php
/**
 * @version 1.2 $Id: mod_rscoolmp3player.php
 * @package Joomla 1.6.x, 1.7.x, 2.5.x
 * @subpackage RS-CoolMP3Player flash image slideshow module.
 * @copyright (C) 2010-2015 RS Web Solutions (http://www.rswebsols.com)
 * @license GNU/GPL
 */

defined( '_JEXEC' ) or die( 'Restricted access' ); // no direct access allowed

// Include the syndicate functions only once
require_once dirname(__FILE__).DS.'helper.php'; // get helper files

$rscoolmp3player = modRSCoolMP3PlayerHelper::getRSCoolMP3Player($module->id,$params);

require JModuleHelper::getLayoutPath('mod_rscoolmp3player', $params->get('layout', 'default'));
?>