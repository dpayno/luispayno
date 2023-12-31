<?php
/**
* @version   $Id: body_iphonemainbody.php 490 2012-05-01 04:04:23Z btowles $
* @author    RocketTheme http://www.rockettheme.com
* @copyright Copyright (C) 2007 - ${copyright_year} RocketTheme, LLC
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*
* Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
*
*/
defined('GANTRY_VERSION') or die();

gantry_import('core.gantrylayout');

/**
 *
 * @package gantry
 * @subpackage html.layouts
 */
class GantryLayoutBody_iPhoneMainBody extends GantryLayout {
    var $render_params = array(
        'schema'        =>  null,
        'classKey'      =>  null
    );
    function render($params = array()){
        global $gantry;

        $fparams = $this-> _getParams($params);

        // logic to determine if the component should be displayed
        $display_component = !($gantry->get("component-enabled",true)==false && JRequest::getVar('view') == 'featured');
        ob_start();

?>          
<div id="rt-main">
    <div class="rt-container">
        <div class="rt-grid-12">
            <div class="rt-block component-block">
                <?php if ($display_component) : ?>
                <div class="component-content">
                    <jdoc:include type="component" />
                </div>
                <?php endif; ?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<?php
        return ob_get_clean();
    }
}