<?php
/**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access
defined('ROKCOMMON') or die;

/**
 *
 */
interface RokCommon_Registry_IConverter
{
    /**
     * Convert a registry type object to a RokCommon_Registry
     * @static
     * @abstract
     *
     * @param object $original The original registry type object to convert to a RokCommon_Registry
     */
    public function convert($original);
}
