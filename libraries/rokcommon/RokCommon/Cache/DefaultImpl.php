<?php
/**
 * @version   $Id: DefaultImpl.php 48519 2012-02-03 23:18:52Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 * Original Author and Licence
 * @author    Mateusz 'MatheW' Wójcik, <mat.wojcik@gmail.com>
 * @link      http://mwojcik.pl
 * @version   1.0
 * @license   GPL
 */

defined('ROKCOMMON') or die;

/**
 * @package    RokCommon
 * @subpackage Cache
 */
class RokCommon_Cache_DefaultImpl implements RokCommon_Cache
{

    /**
     * @var RokCommon_Cache_Driver
     */
    protected $driver;

    /**
     * Default cache lifetime in seconds
     *
     * @var int
     */
    protected $defaultLifeTime = 300;

    /**
     * Specifies if debug mode is on
     *
     * @var boolean
     */
    protected $debugMode = false;


    /**
     * Constructor
     *
     * @param \RokCommon_Cache_Driver $driver
     * @param int                     $defaultLifeTime Default cache lifetime in seconds
     */
    public function __construct(RokCommon_Cache_Driver $driver, $defaultLifeTime = 0)
    {
        $this->driver = $driver;
        if (is_numeric($defaultLifeTime) && $defaultLifeTime > 0) $this->defaultLifeTime = $defaultLifeTime;
    }

    /**
     * @param \RokCommon_Cache_Driver $driver
     */
    public function setDriver($driver)
    {
        $this->driver = $driver;
    }


    /**
     * Save data to cache
     *
     * @param string $groupName  Name of group of cache
     * @param string $identifier Identifier of data - it should be unique in group
     * @param mixed  $data       Data
     *
     * @internal param string $driver Driver strategy
     *
     * @throws RokCommon_Cache_Exception
     * @return boolean
     */
    public function set($groupName, $identifier, $data)
    {
        try {
            return $this->driver->set($groupName, $identifier, serialize($data));
        } catch (RokCommon_Cache_Exception $e) {
            if ($this->debugMode) throw $e; else return false;
        }
    }

    /**
     * Gets data from cache
     *
     * @param string $groupName  Name of group
     * @param string $identifier Identifier of data
     *
     * @internal param string $driver Driver strategy
     *
     * @throws RokCommon_Cache_Exception
     * @return mixed
     */
    public function get($groupName, $identifier)
    {
        try {
            if (!$this->driver->exists($groupName, $identifier)) return false;
            $data = $this->driver->get($groupName, $identifier);
            if ($data === false) return false;
            return unserialize($data);
        } catch (RokCommon_Cache_Exception $e) {
            if ($this->debugMode) throw $e; else return false;
        }
    }

    /**
     * Clears all cache generated by this class with one/all drivers
     *
     * @internal param string $driver Name of driver strategy
     *
     * @return boolean
     */
    public function clearAllCache()
    {
        try {
            return $this->driver->clearAllCache();
        } catch (RokCommon_Cache_Exception $e) {
            if ($this->debugMode) throw $e; else return false;
        }
    }


    /**
     * Sets the lifetime
     *
     * @param int    $lifetime  Lifetime of the cache
     * @param string $driver    Name of driver strategy
     *
     * @return boolean
     */
    public function setLifeTime($lifetime, $driver = NULL)
    {
        try {
            return $this->driver->setLifeTime($lifetime);
        } catch (RokCommon_Cache_Exception $e) {
            if ($this->debugMode) throw $e; else return false;
        }
    }

    /**
     * Clears cache of specified group  with one/all drivers
     *
     * @param string $groupName Name of group
     * @param string $driver    Name of driver strategy
     *
     * @return boolean
     */
    public function clearGroupCache($groupName, $driver = NULL)
    {
        try {
            return $this->driver->clearGroupCache($groupName);
        } catch (RokCommon_Cache_Exception $e) {
            if ($this->debugMode) throw $e; else return false;
        }
    }

    /**
     * Clears cache of specified identifier of group  with one/all drivers
     *
     * @param string $groupName  Name of group
     * @param string $identifier Identifier
     * @param string $driver     Name of driver strategy
     *
     * @return boolean
     */
    public function clearCache($groupName, $identifier, $driver = NULL)
    {
        try {
            return $this->driver->clearCache($groupName, $identifier);
        } catch (RokCommon_Cache_Exception $e) {
            if ($this->debugMode) throw $e; else return false;
        }
    }

    /**
     * Turns debug mode on. Exceptions will be thrown
     *
     */
    public function debugModeOn()
    {
        $this->debugMode = true;
    }

    /**
     * Turns debug mode off. No exceptions will be thrown
     *
     */
    public function debugModeOff()
    {
        $this->debugMode = false;
    }



}