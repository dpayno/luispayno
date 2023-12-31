<?php
/**
 * @version   $Id: PlatformInfo.php 48519 2012-02-03 23:18:52Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

interface RokCommon_PlatformInfo
{
    /**
     * Returns the URL for a given file based on the full file path passed in
     *
     * @param $filepath
     *
     * @return string
     */
    public function getUrlForPath($filepath);

    /**
     * @abstract
     *
     * @param bool $admin
     *
     * @return string the name of the current template
     */
    public function getDefaultTemplate($admin = false);

    /**
     * @abstract
     *
     * @param bool $admin
     *
     * @return string the path to the current template/theme root
     */
    public function getDefaultTemplatePath($admin = false);

    /**
     * @abstract
     * @return string the path to the current platform root
     */
    public function getRootPath();

    /**
     * @abstract
     *
     * @param RokCommon_Service_Container $container
     */
    public function setPlatformParameters(RokCommon_Service_Container &$container);


}
