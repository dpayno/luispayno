<?php
/**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

class RokCommon_Filter_Type_Date extends RokCommon_Filter_Type
{
    /**
     * @var string
     */
    protected $type = 'date';
    /**
     * @var bool
     */
    protected $isselector = true;

    protected $selection_types = array(
        'withinlast'        => 'RokCommon_Filter_Type_DateWithinLast',
        'exactly'           => 'RokCommon_Filter_Type_DateSelection',
        'before'            => 'RokCommon_Filter_Type_DateSelection',
        'after'             => 'RokCommon_Filter_Type_DateSelection',
        'today'             => 'RokCommon_Filter_Type_DateHiddenEnabled',
        'yesterday'         => 'RokCommon_Filter_Type_DateHiddenEnabled',
        'thisweek'          => 'RokCommon_Filter_Type_DateHiddenEnabled',
        'thismonth'         => 'RokCommon_Filter_Type_DateHiddenEnabled',
        'thisyear'          => 'RokCommon_Filter_Type_DateHiddenEnabled'
    );

    protected $selection_labels = array(
        'withinlast'        => 'within last',
        'exactly'           => 'exactly',
        'before'            => 'before',
        'after'             => 'after',
        'today'             => 'today',
        'yesterday'         => 'yesterday',
        'thisweek'          => 'this week',
        'thismonth'         => 'this month',
        'thisyear'          => 'this year'
    );

    public function getChunkSelectionRender()
    {
        return rc__('ROKCOMMON_FILTER_DATE_RENDER', $this->getTypeDescription()) ;
    }

    public function render($name, $type, $values)
    {
        return rc__('ROKCOMMON_FILTER_DATE_RENDER', parent::render($name, $type, $values)) ;
    }
}
