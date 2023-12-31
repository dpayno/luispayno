<?php
/**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

class RokSprocket_ItemCollection extends RokCommon_Collection
{
	/**
	 *
	 */
	const SORT_METHOD_AUTOMATIC = 'automatic';

	/**
	 *
	 */
	const SORT_METHOD_MANUAL = 'manual';

	/**
	 *
	 */
	const SORT_METHOD_RANDOM = 'random';

	/**
	 *
	 */
	const APPEND_UNSORTED_BEFORE = 'before';

	/**
	 *
	 */
	const APPEND_UNSORTED_AFTER = 'after';

	/**
	 * @param $method
	 * @param $options
	 */
	public function sort($method = self::SORT_METHOD_AUTOMATIC, $options = array())
	{
		if ($method == self::SORT_METHOD_MANUAL) {
			$append = self::APPEND_UNSORTED_AFTER;
			if (!isset($options['append'])) {
				$append = $options['append'];
			}
			$this->manualSort($append);
		} elseif ($method == self::SORT_METHOD_RANDOM) {
			$applyrandom = true;
			if(isset( $options['applyrandom']))
			{
				$applyrandom = $options['applyrandom'];
			}
			if ($applyrandom){
				$this->randomSort();
			}
		}
	}

	/**
	 * @param string $append
	 */
	protected function manualSort($append = self::APPEND_UNSORTED_AFTER)
	{

		if ($append == self::APPEND_UNSORTED_AFTER) {
			$sort_callback = array('RokSprocket_ItemCollection', 'cmpForManualOrderWithAdditionalAfter');
		} else {
			$sort_callback = array('RokSprocket_ItemCollection', 'cmpForManualOrderWithAdditionalBefore');
		}
		uasort($this->items, $sort_callback);
	}

	/**
	 * @param RokSprocket_Item $a
	 * @param RokSprocket_Item $b
	 *
	 * @return int
	 */
	protected static function cmpForManualOrderWithAdditionalAfter($a, $b)
	{
		if ($a->getOrder() === null && $b->getOrder() === null) {
			if ($a->getDbOrder() === $b->getDbOrder()) {
				return 0;
			}
			return ($a->getDbOrder() < $b->getDbOrder()) ? -1 : 1;
		} elseif ($a->getOrder() !== null && $b->getOrder() === null) {
			return -1; // a comes before b
		} elseif ($a->getOrder() === null && $b->getOrder() !== null) {
			return 1; // a comes after b
		} elseif ($a->getOrder() === $b->getOrder()) {
			return 0;
		} else {
			return ($a->getOrder() < $b->getOrder()) ? -1 : 1;
		}
	}

	/**
	 * @param RokSprocket_Item $a
	 * @param RokSprocket_Item $b
	 *
	 * @return int
	 */
	protected static function cmpForManualOrderWithAdditionalBefore($a, $b)
	{
		if ($a->getOrder() === null && $b->getOrder() === null) {
			if ($a->getDbOrder() === $b->getDbOrder()) {
				return 0;
			}
			return ($a->getDbOrder() < $b->getDbOrder()) ? -1 : 1;
		} elseif ($a->getOrder() !== null && $b->getOrder() === null) {
			return 1; // a comes before b
		} elseif ($a->getOrder() === null && $b->getOrder() !== null) {
			return -1; // a comes after b
		} elseif ($a->getOrder() === $b->getOrder()) {
			return 0;
		} else {
			return ($a->getOrder() < $b->getOrder()) ? -1 : 1;
		}
	}

	/**
	 *
	 */
	protected function randomSort()
	{
		$keys = array_keys($this->items);
		shuffle($keys);
		$this->items = array_merge(array_flip($keys), $this->items);
	}
}
