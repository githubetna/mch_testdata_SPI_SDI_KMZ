-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.0.51b-community-nt - MySQL Community Edition (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para mcheng
CREATE DATABASE IF NOT EXISTS `mcheng` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mcheng`;

-- Volcando estructura para tabla mcheng.acceptablevalues
CREATE TABLE IF NOT EXISTS `acceptablevalues` (
  `Station` char(20) NOT NULL,
  `Variable` char(15) NOT NULL,
  `Datum` char(1) NOT NULL,
  `Datee` date NOT NULL default '1901-01-01',
  `EndDate` date default NULL,
  `StartTime` time default NULL,
  `EndTime` time default NULL,
  `MinValue` double default NULL,
  `alert1min` double default NULL,
  `alert2min` double default NULL,
  `alert2max` double default NULL,
  `alert1max` double default NULL,
  `MaxValue` double default NULL,
  `Changee` double default NULL,
  `Minutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Variable`,`Datum`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.acceptvaluesh
CREATE TABLE IF NOT EXISTS `acceptvaluesh` (
  `Station` char(15) NOT NULL,
  `Variable` char(15) NOT NULL,
  `Datum` char(3) NOT NULL,
  `StrtDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL default '2099-12-31 00:00:00',
  `StartTime` time NOT NULL,
  `EndTime` time default NULL,
  `minvalueh` double default NULL,
  `maxvalueh` double default NULL,
  `MinValue` double default NULL,
  `alert1min` double default NULL,
  `alert2min` double default NULL,
  `alert2max` double default NULL,
  `alert1max` double default NULL,
  `MaxValue` double default NULL,
  `Changee` double default NULL,
  `Minutes` int(11) default NULL,
  `stddev` double default NULL,
  `Mean` double default NULL,
  `minvaluev` double default NULL,
  `maxvaluev` double default NULL,
  `positive` char(2) default NULL,
  `NumRecs` int(11) default NULL,
  `startdateh` datetime default NULL,
  `enddateh` datetime default NULL,
  PRIMARY KEY  (`Station`,`Variable`,`Datum`,`StrtDate`,`EndDate`,`StartTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.autostation
CREATE TABLE IF NOT EXISTS `autostation` (
  `SatelliteID` char(8) NOT NULL default '',
  `Name` char(15) default NULL,
  `Name2` char(50) default NULL,
  `Station` char(20) default NULL,
  `Management` char(10) default NULL,
  `Type` char(25) default NULL,
  `Keyy` char(4) default NULL,
  `Statee` char(5) default NULL,
  `State2` char(20) default NULL,
  `Regional` char(50) default NULL,
  `Latitude` char(9) default NULL,
  `Longitude` char(10) default NULL,
  `Altitude` char(5) default NULL,
  `TransmTime` char(8) default NULL,
  `Image` char(80) default NULL,
  `HtmlName` char(80) default NULL,
  `Generate` char(2) default NULL,
  `SummerTime` char(2) default NULL,
  `HoursToUTC` int(11) default NULL,
  `DTStartDate` datetime default NULL,
  `DTEndDate` datetime default NULL,
  PRIMARY KEY  (`SatelliteID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.autovariable
CREATE TABLE IF NOT EXISTS `autovariable` (
  `Station` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `period` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.autovariablemaxdate
CREATE TABLE IF NOT EXISTS `autovariablemaxdate` (
  `SatelliteID` char(8) NOT NULL default '',
  `DateTimee` datetime NOT NULL default '2001-01-01 00:00:00',
  `Sequen` int(11) NOT NULL default '0',
  `Area` char(15) default NULL,
  `Name` char(30) default NULL,
  `Variable` char(15) default NULL,
  `Period` int(11) default NULL,
  PRIMARY KEY  (`SatelliteID`,`DateTimee`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.autovariableoptions
CREATE TABLE IF NOT EXISTS `autovariableoptions` (
  `Optionn` char(15) NOT NULL default '',
  `xOpt` int(11) NOT NULL default '0',
  `Variable` char(15) default NULL,
  `Variable2` char(15) default NULL,
  PRIMARY KEY  (`Optionn`,`xOpt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.autovariablevalues
CREATE TABLE IF NOT EXISTS `autovariablevalues` (
  `Station` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `Adjust1` double NOT NULL default '0',
  `Adjust2` double NOT NULL default '0',
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `NoDataValue` double default NULL,
  `CriticalHigh` double default NULL,
  `CriticalLow` double default NULL,
  PRIMARY KEY  (`Station`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.catchments
CREATE TABLE IF NOT EXISTS `catchments` (
  `Catchment` char(5) NOT NULL default '',
  `Catchment2` char(20) default NULL,
  `CatchmentName` char(150) default NULL,
  PRIMARY KEY  (`Catchment`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.checkk
CREATE TABLE IF NOT EXISTS `checkk` (
  `Variable` char(15) NOT NULL,
  `Datum` char(1) NOT NULL,
  `Sequen` int(11) NOT NULL,
  `Type` char(1) default NULL,
  `Checkk` text,
  PRIMARY KEY  (`Variable`,`Datum`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.codes
CREATE TABLE IF NOT EXISTS `codes` (
  `Codee` char(10) NOT NULL default '',
  `Message` char(150) default NULL,
  PRIMARY KEY  (`Codee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.contourlinedefn
CREATE TABLE IF NOT EXISTS `contourlinedefn` (
  `Map` varchar(30) NOT NULL default '',
  `StnGroup` varchar(20) NOT NULL default '',
  `Variable` varchar(15) NOT NULL default '',
  `Period` varchar(15) NOT NULL default '',
  `MapType` varchar(15) default NULL,
  `Colors` varchar(15) default NULL,
  `JPGresoln` int(11) default NULL,
  `Heading1` varchar(150) default NULL,
  `Heading2` varchar(150) default NULL,
  `DegreesFormat` int(11) default NULL,
  `LabelSize` varchar(10) default NULL,
  `HeadingSize` varchar(10) default NULL,
  `AnnotSize` varchar(10) default NULL,
  `MeanCell` varchar(5) default NULL,
  `InterLines` varchar(10) default NULL,
  `StateLines` varchar(10) default NULL,
  `RiverLines` varchar(10) default NULL,
  `RiverColor` varchar(12) default NULL,
  `SeaColor` varchar(12) default NULL,
  `AreaCell` varchar(5) default NULL,
  `ImageArea` varchar(5) default NULL,
  `SmoothingLvl` varchar(5) default NULL,
  `AnnotSpacing` varchar(12) default NULL,
  `AnnotLineSize` varchar(12) default NULL,
  `AnnotLineColor` varchar(12) default NULL,
  `StdLineSize` varchar(12) default NULL,
  `ColorCommLin` varchar(12) default NULL,
  `AnnotatedInterv` varchar(10) default NULL,
  `CommonInterv` varchar(10) default NULL,
  `ValueType` varchar(15) default NULL,
  `AxisPlot` varchar(30) default NULL,
  `TraceLine` varchar(10) default NULL,
  `HeadingData1` varchar(30) default NULL,
  `HeadingData2` varchar(30) default NULL,
  `AngleProj` varchar(10) default NULL,
  `ProjHeight` varchar(10) default NULL,
  `GeogLocation` varchar(30) default NULL,
  `Portrait` char(1) default NULL,
  `StartEndInterv` varchar(20) default NULL,
  `BaseWidth` varchar(10) default NULL,
  `PercentOK` double default NULL,
  `AutoFormat` char(1) default NULL,
  `HtmName` varchar(250) default NULL,
  `HtmDescrn` text,
  `WithRivers` char(1) default NULL,
  PRIMARY KEY  (`Map`,`StnGroup`,`Variable`,`Period`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.convtables
CREATE TABLE IF NOT EXISTS `convtables` (
  `ConvTable` char(15) NOT NULL default '',
  `XValue` double NOT NULL default '0',
  `YValue` double default NULL,
  PRIMARY KEY  (`ConvTable`,`XValue`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daairtemp
CREATE TABLE IF NOT EXISTS `daairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dabarompresmax
CREATE TABLE IF NOT EXISTS `dabarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dabarompresmin
CREATE TABLE IF NOT EXISTS `dabarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dabarompressure
CREATE TABLE IF NOT EXISTS `dabarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dabateryvoltage
CREATE TABLE IF NOT EXISTS `dabateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daccloudheight
CREATE TABLE IF NOT EXISTS `daccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dacloudcover
CREATE TABLE IF NOT EXISTS `dacloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dacloudheight
CREATE TABLE IF NOT EXISTS `dacloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dacloudtype
CREATE TABLE IF NOT EXISTS `dacloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dadamarea
CREATE TABLE IF NOT EXISTS `dadamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dadewpoint
CREATE TABLE IF NOT EXISTS `dadewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dadircloudy
CREATE TABLE IF NOT EXISTS `dadircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dadirgust
CREATE TABLE IF NOT EXISTS `dadirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dadirwinddom
CREATE TABLE IF NOT EXISTS `dadirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daelecstorm
CREATE TABLE IF NOT EXISTS `daelecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daentrance
CREATE TABLE IF NOT EXISTS `daentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daevaporation
CREATE TABLE IF NOT EXISTS `daevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daevappiche
CREATE TABLE IF NOT EXISTS `daevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daextraction
CREATE TABLE IF NOT EXISTS `daextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daextraction2
CREATE TABLE IF NOT EXISTS `daextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dafloortemp
CREATE TABLE IF NOT EXISTS `dafloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dafog
CREATE TABLE IF NOT EXISTS `dafog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dafrost
CREATE TABLE IF NOT EXISTS `dafrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dageopotheight
CREATE TABLE IF NOT EXISTS `dageopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dageotemp10
CREATE TABLE IF NOT EXISTS `dageotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dageotemp20
CREATE TABLE IF NOT EXISTS `dageotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dageotemp5
CREATE TABLE IF NOT EXISTS `dageotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dageotemp50
CREATE TABLE IF NOT EXISTS `dageotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dagraphprecip
CREATE TABLE IF NOT EXISTS `dagraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dagustspeed
CREATE TABLE IF NOT EXISTS `dagustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dahail
CREATE TABLE IF NOT EXISTS `dahail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daheliophany
CREATE TABLE IF NOT EXISTS `daheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dahighcloudtype
CREATE TABLE IF NOT EXISTS `dahighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dahumtemp
CREATE TABLE IF NOT EXISTS `dahumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daindcloudcover
CREATE TABLE IF NOT EXISTS `daindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dainterntemp
CREATE TABLE IF NOT EXISTS `dainterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dalevel
CREATE TABLE IF NOT EXISTS `dalevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dalevel2
CREATE TABLE IF NOT EXISTS `dalevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dalevel3
CREATE TABLE IF NOT EXISTS `dalevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dalowcloudtype
CREATE TABLE IF NOT EXISTS `dalowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dalowmidcloud
CREATE TABLE IF NOT EXISTS `dalowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.damedcloudy
CREATE TABLE IF NOT EXISTS `damedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.damidcloudtype
CREATE TABLE IF NOT EXISTS `damidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.damist
CREATE TABLE IF NOT EXISTS `damist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.danetevap
CREATE TABLE IF NOT EXISTS `danetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.danetrad
CREATE TABLE IF NOT EXISTS `danetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.danosnowground
CREATE TABLE IF NOT EXISTS `danosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dao2
CREATE TABLE IF NOT EXISTS `dao2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dao2mgl
CREATE TABLE IF NOT EXISTS `dao2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dapanelvoltage
CREATE TABLE IF NOT EXISTS `dapanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daph
CREATE TABLE IF NOT EXISTS `daph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dapotencialenerv
CREATE TABLE IF NOT EXISTS `dapotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daprecipitation
CREATE TABLE IF NOT EXISTS `daprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daprecipmax60
CREATE TABLE IF NOT EXISTS `daprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dapresstime
CREATE TABLE IF NOT EXISTS `dapresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dapresstrend
CREATE TABLE IF NOT EXISTS `dapresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darelhum50
CREATE TABLE IF NOT EXISTS `darelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darelhum80
CREATE TABLE IF NOT EXISTS `darelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darelhum90
CREATE TABLE IF NOT EXISTS `darelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darelhumidity
CREATE TABLE IF NOT EXISTS `darelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darelhummax
CREATE TABLE IF NOT EXISTS `darelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darelhummed
CREATE TABLE IF NOT EXISTS `darelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darelhummin
CREATE TABLE IF NOT EXISTS `darelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dariverflow
CREATE TABLE IF NOT EXISTS `dariverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dariverflow2
CREATE TABLE IF NOT EXISTS `dariverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.darivervolume
CREATE TABLE IF NOT EXISTS `darivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasaltiness
CREATE TABLE IF NOT EXISTS `dasaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasealevelpress
CREATE TABLE IF NOT EXISTS `dasealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasnowdepth
CREATE TABLE IF NOT EXISTS `dasnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasnowonground
CREATE TABLE IF NOT EXISTS `dasnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasolarrad
CREATE TABLE IF NOT EXISTS `dasolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daspeedwinddom
CREATE TABLE IF NOT EXISTS `daspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daspillage
CREATE TABLE IF NOT EXISTS `daspillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daspillway
CREATE TABLE IF NOT EXISTS `daspillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dastaticlevel
CREATE TABLE IF NOT EXISTS `dastaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasteamtension
CREATE TABLE IF NOT EXISTS `dasteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dastrgvolume
CREATE TABLE IF NOT EXISTS `dastrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasunshine
CREATE TABLE IF NOT EXISTS `dasunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dasunstroke
CREATE TABLE IF NOT EXISTS `dasunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.datempmax
CREATE TABLE IF NOT EXISTS `datempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.datempmean
CREATE TABLE IF NOT EXISTS `datempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.datempmin
CREATE TABLE IF NOT EXISTS `datempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.datempminint
CREATE TABLE IF NOT EXISTS `datempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.datimepas1
CREATE TABLE IF NOT EXISTS `datimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.datimepas2
CREATE TABLE IF NOT EXISTS `datimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.daturbidity
CREATE TABLE IF NOT EXISTS `daturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.davisibility
CREATE TABLE IF NOT EXISTS `davisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.davisibilitye
CREATE TABLE IF NOT EXISTS `davisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dawaterdispon
CREATE TABLE IF NOT EXISTS `dawaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dawaterexit
CREATE TABLE IF NOT EXISTS `dawaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dawaterspeed
CREATE TABLE IF NOT EXISTS `dawaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dawatertemp
CREATE TABLE IF NOT EXISTS `dawatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dawinddirn
CREATE TABLE IF NOT EXISTS `dawinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dawindjourney
CREATE TABLE IF NOT EXISTS `dawindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dawindspeed
CREATE TABLE IF NOT EXISTS `dawindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MaxMonth` int(11) default NULL,
  `MaxTimesMonth` int(11) default NULL,
  `MinMonth` int(11) default NULL,
  `MinTimesMonth` int(11) default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `DaysData` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcairtemp
CREATE TABLE IF NOT EXISTS `dcairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcbarompresmax
CREATE TABLE IF NOT EXISTS `dcbarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcbarompresmin
CREATE TABLE IF NOT EXISTS `dcbarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcbarompressure
CREATE TABLE IF NOT EXISTS `dcbarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcbateryvoltage
CREATE TABLE IF NOT EXISTS `dcbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcccloudheight
CREATE TABLE IF NOT EXISTS `dcccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dccloudcover
CREATE TABLE IF NOT EXISTS `dccloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dccloudheight
CREATE TABLE IF NOT EXISTS `dccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dccloudtype
CREATE TABLE IF NOT EXISTS `dccloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcdamarea
CREATE TABLE IF NOT EXISTS `dcdamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcdewpoint
CREATE TABLE IF NOT EXISTS `dcdewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcdircloudy
CREATE TABLE IF NOT EXISTS `dcdircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcdirgust
CREATE TABLE IF NOT EXISTS `dcdirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcdirwinddom
CREATE TABLE IF NOT EXISTS `dcdirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcelecstorm
CREATE TABLE IF NOT EXISTS `dcelecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcentrance
CREATE TABLE IF NOT EXISTS `dcentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcevaporation
CREATE TABLE IF NOT EXISTS `dcevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcevappiche
CREATE TABLE IF NOT EXISTS `dcevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcextraction
CREATE TABLE IF NOT EXISTS `dcextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcextraction2
CREATE TABLE IF NOT EXISTS `dcextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcfloortemp
CREATE TABLE IF NOT EXISTS `dcfloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcfog
CREATE TABLE IF NOT EXISTS `dcfog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcfrost
CREATE TABLE IF NOT EXISTS `dcfrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcgeopotheight
CREATE TABLE IF NOT EXISTS `dcgeopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcgeotemp10
CREATE TABLE IF NOT EXISTS `dcgeotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcgeotemp20
CREATE TABLE IF NOT EXISTS `dcgeotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcgeotemp5
CREATE TABLE IF NOT EXISTS `dcgeotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcgeotemp50
CREATE TABLE IF NOT EXISTS `dcgeotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcgraphprecip
CREATE TABLE IF NOT EXISTS `dcgraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcgustspeed
CREATE TABLE IF NOT EXISTS `dcgustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dchail
CREATE TABLE IF NOT EXISTS `dchail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcheliophany
CREATE TABLE IF NOT EXISTS `dcheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dchighcloudtype
CREATE TABLE IF NOT EXISTS `dchighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dchumtemp
CREATE TABLE IF NOT EXISTS `dchumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcindcloudcover
CREATE TABLE IF NOT EXISTS `dcindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcinterntemp
CREATE TABLE IF NOT EXISTS `dcinterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dclevel
CREATE TABLE IF NOT EXISTS `dclevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dclevel2
CREATE TABLE IF NOT EXISTS `dclevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dclevel3
CREATE TABLE IF NOT EXISTS `dclevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dclowcloudtype
CREATE TABLE IF NOT EXISTS `dclowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dclowmidcloud
CREATE TABLE IF NOT EXISTS `dclowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcmedcloudy
CREATE TABLE IF NOT EXISTS `dcmedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcmidcloudtype
CREATE TABLE IF NOT EXISTS `dcmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcmist
CREATE TABLE IF NOT EXISTS `dcmist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcnetevap
CREATE TABLE IF NOT EXISTS `dcnetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcnetrad
CREATE TABLE IF NOT EXISTS `dcnetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcnosnowground
CREATE TABLE IF NOT EXISTS `dcnosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dco2
CREATE TABLE IF NOT EXISTS `dco2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dco2mgl
CREATE TABLE IF NOT EXISTS `dco2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcpanelvoltage
CREATE TABLE IF NOT EXISTS `dcpanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcph
CREATE TABLE IF NOT EXISTS `dcph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcpotencialenerv
CREATE TABLE IF NOT EXISTS `dcpotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcprecipitation
CREATE TABLE IF NOT EXISTS `dcprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcprecipmax60
CREATE TABLE IF NOT EXISTS `dcprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcpresstime
CREATE TABLE IF NOT EXISTS `dcpresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcpresstrend
CREATE TABLE IF NOT EXISTS `dcpresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrelhum50
CREATE TABLE IF NOT EXISTS `dcrelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrelhum80
CREATE TABLE IF NOT EXISTS `dcrelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrelhum90
CREATE TABLE IF NOT EXISTS `dcrelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrelhumidity
CREATE TABLE IF NOT EXISTS `dcrelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrelhummax
CREATE TABLE IF NOT EXISTS `dcrelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrelhummed
CREATE TABLE IF NOT EXISTS `dcrelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrelhummin
CREATE TABLE IF NOT EXISTS `dcrelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcriverflow
CREATE TABLE IF NOT EXISTS `dcriverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcriverflow2
CREATE TABLE IF NOT EXISTS `dcriverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcrivervolume
CREATE TABLE IF NOT EXISTS `dcrivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsaltiness
CREATE TABLE IF NOT EXISTS `dcsaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsealevelpress
CREATE TABLE IF NOT EXISTS `dcsealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsnowdepth
CREATE TABLE IF NOT EXISTS `dcsnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsnowonground
CREATE TABLE IF NOT EXISTS `dcsnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsolarrad
CREATE TABLE IF NOT EXISTS `dcsolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcspeedwinddom
CREATE TABLE IF NOT EXISTS `dcspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcspillage
CREATE TABLE IF NOT EXISTS `dcspillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcspillway
CREATE TABLE IF NOT EXISTS `dcspillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcstaticlevel
CREATE TABLE IF NOT EXISTS `dcstaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsteamtension
CREATE TABLE IF NOT EXISTS `dcsteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcstrgvolume
CREATE TABLE IF NOT EXISTS `dcstrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsunshine
CREATE TABLE IF NOT EXISTS `dcsunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcsunstroke
CREATE TABLE IF NOT EXISTS `dcsunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dctempmax
CREATE TABLE IF NOT EXISTS `dctempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dctempmean
CREATE TABLE IF NOT EXISTS `dctempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dctempmin
CREATE TABLE IF NOT EXISTS `dctempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dctempminint
CREATE TABLE IF NOT EXISTS `dctempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dctimepas1
CREATE TABLE IF NOT EXISTS `dctimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dctimepas2
CREATE TABLE IF NOT EXISTS `dctimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcturbidity
CREATE TABLE IF NOT EXISTS `dcturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcvisibility
CREATE TABLE IF NOT EXISTS `dcvisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcvisibilitye
CREATE TABLE IF NOT EXISTS `dcvisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcwaterdispon
CREATE TABLE IF NOT EXISTS `dcwaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcwaterexit
CREATE TABLE IF NOT EXISTS `dcwaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcwaterspeed
CREATE TABLE IF NOT EXISTS `dcwaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcwatertemp
CREATE TABLE IF NOT EXISTS `dcwatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcwinddirn
CREATE TABLE IF NOT EXISTS `dcwinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcwindjourney
CREATE TABLE IF NOT EXISTS `dcwindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dcwindspeed
CREATE TABLE IF NOT EXISTS `dcwindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `dekad` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddairtemp
CREATE TABLE IF NOT EXISTS `ddairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddavailability
CREATE TABLE IF NOT EXISTS `ddavailability` (
  `Station` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `Ndata` int(11) default NULL,
  `StrtDate` datetime default NULL,
  `EndDate` datetime default NULL,
  `Percent1` double default NULL,
  `Ndata2` int(11) default NULL,
  `MedDate` datetime default NULL,
  `Percent2` double default NULL,
  PRIMARY KEY  (`Station`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddbarompresmax
CREATE TABLE IF NOT EXISTS `ddbarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddbarompresmin
CREATE TABLE IF NOT EXISTS `ddbarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddbarompressure
CREATE TABLE IF NOT EXISTS `ddbarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddbateryvoltage
CREATE TABLE IF NOT EXISTS `ddbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddccloudheight
CREATE TABLE IF NOT EXISTS `ddccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddcloudcover
CREATE TABLE IF NOT EXISTS `ddcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddcloudheight
CREATE TABLE IF NOT EXISTS `ddcloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddcloudtype
CREATE TABLE IF NOT EXISTS `ddcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dddamarea
CREATE TABLE IF NOT EXISTS `dddamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dddewpoint
CREATE TABLE IF NOT EXISTS `dddewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dddircloudy
CREATE TABLE IF NOT EXISTS `dddircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dddirgust
CREATE TABLE IF NOT EXISTS `dddirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dddirwinddom
CREATE TABLE IF NOT EXISTS `dddirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddelecstorm
CREATE TABLE IF NOT EXISTS `ddelecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddentrance
CREATE TABLE IF NOT EXISTS `ddentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddevaporation
CREATE TABLE IF NOT EXISTS `ddevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddevappiche
CREATE TABLE IF NOT EXISTS `ddevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddextraction
CREATE TABLE IF NOT EXISTS `ddextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddextraction2
CREATE TABLE IF NOT EXISTS `ddextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddfloortemp
CREATE TABLE IF NOT EXISTS `ddfloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddfog
CREATE TABLE IF NOT EXISTS `ddfog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddfrost
CREATE TABLE IF NOT EXISTS `ddfrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddgeopotheight
CREATE TABLE IF NOT EXISTS `ddgeopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddgeotemp10
CREATE TABLE IF NOT EXISTS `ddgeotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddgeotemp20
CREATE TABLE IF NOT EXISTS `ddgeotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddgeotemp5
CREATE TABLE IF NOT EXISTS `ddgeotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddgeotemp50
CREATE TABLE IF NOT EXISTS `ddgeotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddgraphprecip
CREATE TABLE IF NOT EXISTS `ddgraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddgustspeed
CREATE TABLE IF NOT EXISTS `ddgustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddhail
CREATE TABLE IF NOT EXISTS `ddhail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddheliophany
CREATE TABLE IF NOT EXISTS `ddheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddhighcloudtype
CREATE TABLE IF NOT EXISTS `ddhighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddhumtemp
CREATE TABLE IF NOT EXISTS `ddhumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddindcloudcover
CREATE TABLE IF NOT EXISTS `ddindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddinterntemp
CREATE TABLE IF NOT EXISTS `ddinterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddlevel
CREATE TABLE IF NOT EXISTS `ddlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddlevel2
CREATE TABLE IF NOT EXISTS `ddlevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddlevel3
CREATE TABLE IF NOT EXISTS `ddlevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddlowcloudtype
CREATE TABLE IF NOT EXISTS `ddlowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddlowmidcloud
CREATE TABLE IF NOT EXISTS `ddlowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddmedcloudy
CREATE TABLE IF NOT EXISTS `ddmedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddmidcloudtype
CREATE TABLE IF NOT EXISTS `ddmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddmist
CREATE TABLE IF NOT EXISTS `ddmist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddnetevap
CREATE TABLE IF NOT EXISTS `ddnetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddnetrad
CREATE TABLE IF NOT EXISTS `ddnetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddnosnowground
CREATE TABLE IF NOT EXISTS `ddnosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddo2
CREATE TABLE IF NOT EXISTS `ddo2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddo2mgl
CREATE TABLE IF NOT EXISTS `ddo2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddpanelvoltage
CREATE TABLE IF NOT EXISTS `ddpanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddph
CREATE TABLE IF NOT EXISTS `ddph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddpotencialenerv
CREATE TABLE IF NOT EXISTS `ddpotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddprecipitation
CREATE TABLE IF NOT EXISTS `ddprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddprecipmax60
CREATE TABLE IF NOT EXISTS `ddprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddpresstime
CREATE TABLE IF NOT EXISTS `ddpresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddpresstrend
CREATE TABLE IF NOT EXISTS `ddpresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrelhum50
CREATE TABLE IF NOT EXISTS `ddrelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrelhum80
CREATE TABLE IF NOT EXISTS `ddrelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrelhum90
CREATE TABLE IF NOT EXISTS `ddrelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrelhumidity
CREATE TABLE IF NOT EXISTS `ddrelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrelhummax
CREATE TABLE IF NOT EXISTS `ddrelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrelhummed
CREATE TABLE IF NOT EXISTS `ddrelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrelhummin
CREATE TABLE IF NOT EXISTS `ddrelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddriverflow
CREATE TABLE IF NOT EXISTS `ddriverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddriverflow2
CREATE TABLE IF NOT EXISTS `ddriverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddrivervolume
CREATE TABLE IF NOT EXISTS `ddrivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsaltiness
CREATE TABLE IF NOT EXISTS `ddsaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsealevelpress
CREATE TABLE IF NOT EXISTS `ddsealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsnowdepth
CREATE TABLE IF NOT EXISTS `ddsnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsnowonground
CREATE TABLE IF NOT EXISTS `ddsnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsolarrad
CREATE TABLE IF NOT EXISTS `ddsolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddspeedwinddom
CREATE TABLE IF NOT EXISTS `ddspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddspillage
CREATE TABLE IF NOT EXISTS `ddspillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddspillway
CREATE TABLE IF NOT EXISTS `ddspillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddstaticlevel
CREATE TABLE IF NOT EXISTS `ddstaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsteamtension
CREATE TABLE IF NOT EXISTS `ddsteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddstrgvolume
CREATE TABLE IF NOT EXISTS `ddstrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsunshine
CREATE TABLE IF NOT EXISTS `ddsunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddsunstroke
CREATE TABLE IF NOT EXISTS `ddsunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddtempmax
CREATE TABLE IF NOT EXISTS `ddtempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddtempmean
CREATE TABLE IF NOT EXISTS `ddtempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddtempmin
CREATE TABLE IF NOT EXISTS `ddtempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddtempminint
CREATE TABLE IF NOT EXISTS `ddtempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddtimepas1
CREATE TABLE IF NOT EXISTS `ddtimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddtimepas2
CREATE TABLE IF NOT EXISTS `ddtimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddturbidity
CREATE TABLE IF NOT EXISTS `ddturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddvisibility
CREATE TABLE IF NOT EXISTS `ddvisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddvisibilitye
CREATE TABLE IF NOT EXISTS `ddvisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddwaterdispon
CREATE TABLE IF NOT EXISTS `ddwaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddwaterexit
CREATE TABLE IF NOT EXISTS `ddwaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddwaterspeed
CREATE TABLE IF NOT EXISTS `ddwaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddwatertemp
CREATE TABLE IF NOT EXISTS `ddwatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddwinddirn
CREATE TABLE IF NOT EXISTS `ddwinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddwindjourney
CREATE TABLE IF NOT EXISTS `ddwindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ddwindspeed
CREATE TABLE IF NOT EXISTS `ddwindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=83;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deairtemp
CREATE TABLE IF NOT EXISTS `deairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.debarompresmax
CREATE TABLE IF NOT EXISTS `debarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.debarompresmin
CREATE TABLE IF NOT EXISTS `debarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.debarompressure
CREATE TABLE IF NOT EXISTS `debarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.debateryvoltage
CREATE TABLE IF NOT EXISTS `debateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deccloudheight
CREATE TABLE IF NOT EXISTS `deccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.decloudcover
CREATE TABLE IF NOT EXISTS `decloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.decloudheight
CREATE TABLE IF NOT EXISTS `decloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.decloudtype
CREATE TABLE IF NOT EXISTS `decloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dedamarea
CREATE TABLE IF NOT EXISTS `dedamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dedewpoint
CREATE TABLE IF NOT EXISTS `dedewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dedircloudy
CREATE TABLE IF NOT EXISTS `dedircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dedirgust
CREATE TABLE IF NOT EXISTS `dedirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dedirwinddom
CREATE TABLE IF NOT EXISTS `dedirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deelecstorm
CREATE TABLE IF NOT EXISTS `deelecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deentrance
CREATE TABLE IF NOT EXISTS `deentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deevaporation
CREATE TABLE IF NOT EXISTS `deevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deevappiche
CREATE TABLE IF NOT EXISTS `deevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deextraction
CREATE TABLE IF NOT EXISTS `deextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deextraction2
CREATE TABLE IF NOT EXISTS `deextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.defloortemp
CREATE TABLE IF NOT EXISTS `defloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.defog
CREATE TABLE IF NOT EXISTS `defog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.defrost
CREATE TABLE IF NOT EXISTS `defrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.degeopotheight
CREATE TABLE IF NOT EXISTS `degeopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.degeotemp10
CREATE TABLE IF NOT EXISTS `degeotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.degeotemp20
CREATE TABLE IF NOT EXISTS `degeotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.degeotemp5
CREATE TABLE IF NOT EXISTS `degeotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.degeotemp50
CREATE TABLE IF NOT EXISTS `degeotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.degraphprecip
CREATE TABLE IF NOT EXISTS `degraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.degustspeed
CREATE TABLE IF NOT EXISTS `degustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dehail
CREATE TABLE IF NOT EXISTS `dehail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deheliophany
CREATE TABLE IF NOT EXISTS `deheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dehighcloudtype
CREATE TABLE IF NOT EXISTS `dehighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dehumtemp
CREATE TABLE IF NOT EXISTS `dehumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deindcloudcover
CREATE TABLE IF NOT EXISTS `deindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deinterntemp
CREATE TABLE IF NOT EXISTS `deinterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.delevel
CREATE TABLE IF NOT EXISTS `delevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.delevel2
CREATE TABLE IF NOT EXISTS `delevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.delevel3
CREATE TABLE IF NOT EXISTS `delevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.delowcloudtype
CREATE TABLE IF NOT EXISTS `delowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.delowmidcloud
CREATE TABLE IF NOT EXISTS `delowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.demedcloudy
CREATE TABLE IF NOT EXISTS `demedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.demidcloudtype
CREATE TABLE IF NOT EXISTS `demidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.demist
CREATE TABLE IF NOT EXISTS `demist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.denetevap
CREATE TABLE IF NOT EXISTS `denetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.denetrad
CREATE TABLE IF NOT EXISTS `denetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.denosnowground
CREATE TABLE IF NOT EXISTS `denosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deo2
CREATE TABLE IF NOT EXISTS `deo2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deo2mgl
CREATE TABLE IF NOT EXISTS `deo2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.depanelvoltage
CREATE TABLE IF NOT EXISTS `depanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deph
CREATE TABLE IF NOT EXISTS `deph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.depotencialenerv
CREATE TABLE IF NOT EXISTS `depotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deprecipitation
CREATE TABLE IF NOT EXISTS `deprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deprecipmax60
CREATE TABLE IF NOT EXISTS `deprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.depresstime
CREATE TABLE IF NOT EXISTS `depresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.depresstrend
CREATE TABLE IF NOT EXISTS `depresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derelhum50
CREATE TABLE IF NOT EXISTS `derelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derelhum80
CREATE TABLE IF NOT EXISTS `derelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derelhum90
CREATE TABLE IF NOT EXISTS `derelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derelhumidity
CREATE TABLE IF NOT EXISTS `derelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derelhummax
CREATE TABLE IF NOT EXISTS `derelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derelhummed
CREATE TABLE IF NOT EXISTS `derelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derelhummin
CREATE TABLE IF NOT EXISTS `derelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derivedvariable2
CREATE TABLE IF NOT EXISTS `derivedvariable2` (
  `Station` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `CalculationForm` text,
  PRIMARY KEY  (`Station`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derivedvariable3
CREATE TABLE IF NOT EXISTS `derivedvariable3` (
  `Station` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `CalculationForm` text,
  PRIMARY KEY  (`Station`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deriverflow
CREATE TABLE IF NOT EXISTS `deriverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deriverflow2
CREATE TABLE IF NOT EXISTS `deriverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.derivervolume
CREATE TABLE IF NOT EXISTS `derivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desaltiness
CREATE TABLE IF NOT EXISTS `desaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desealevelpress
CREATE TABLE IF NOT EXISTS `desealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desnowdepth
CREATE TABLE IF NOT EXISTS `desnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desnowonground
CREATE TABLE IF NOT EXISTS `desnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desolarrad
CREATE TABLE IF NOT EXISTS `desolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.despeedwinddom
CREATE TABLE IF NOT EXISTS `despeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.despillage
CREATE TABLE IF NOT EXISTS `despillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.despillway
CREATE TABLE IF NOT EXISTS `despillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.destaticlevel
CREATE TABLE IF NOT EXISTS `destaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desteamtension
CREATE TABLE IF NOT EXISTS `desteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.destrgvolume
CREATE TABLE IF NOT EXISTS `destrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desunshine
CREATE TABLE IF NOT EXISTS `desunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.desunstroke
CREATE TABLE IF NOT EXISTS `desunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.detempmax
CREATE TABLE IF NOT EXISTS `detempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.detempmean
CREATE TABLE IF NOT EXISTS `detempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.detempmin
CREATE TABLE IF NOT EXISTS `detempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.detempminint
CREATE TABLE IF NOT EXISTS `detempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.detimepas1
CREATE TABLE IF NOT EXISTS `detimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.detimepas2
CREATE TABLE IF NOT EXISTS `detimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.deturbidity
CREATE TABLE IF NOT EXISTS `deturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.devisibility
CREATE TABLE IF NOT EXISTS `devisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.devisibilitye
CREATE TABLE IF NOT EXISTS `devisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dewaterdispon
CREATE TABLE IF NOT EXISTS `dewaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dewaterexit
CREATE TABLE IF NOT EXISTS `dewaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dewaterspeed
CREATE TABLE IF NOT EXISTS `dewaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dewatertemp
CREATE TABLE IF NOT EXISTS `dewatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dewinddirn
CREATE TABLE IF NOT EXISTS `dewinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dewindjourney
CREATE TABLE IF NOT EXISTS `dewindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dewindspeed
CREATE TABLE IF NOT EXISTS `dewindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxValue` double default NULL,
  `MaxCode` char(10) default NULL,
  `DateTimeMin` datetime default NULL,
  `MinValue` double default NULL,
  `MinCode` char(10) default NULL,
  `CumulValue` double default NULL,
  `DayNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  `Source` char(10) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=300000000 AVG_ROW_LENGTH=157;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmairtemp
CREATE TABLE IF NOT EXISTS `dmairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmbarompresmax
CREATE TABLE IF NOT EXISTS `dmbarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmbarompresmin
CREATE TABLE IF NOT EXISTS `dmbarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmbarompressure
CREATE TABLE IF NOT EXISTS `dmbarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmbateryvoltage
CREATE TABLE IF NOT EXISTS `dmbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmccloudheight
CREATE TABLE IF NOT EXISTS `dmccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmcloudcover
CREATE TABLE IF NOT EXISTS `dmcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmcloudheight
CREATE TABLE IF NOT EXISTS `dmcloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmcloudtype
CREATE TABLE IF NOT EXISTS `dmcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmdamarea
CREATE TABLE IF NOT EXISTS `dmdamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmdewpoint
CREATE TABLE IF NOT EXISTS `dmdewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmdircloudy
CREATE TABLE IF NOT EXISTS `dmdircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmdirgust
CREATE TABLE IF NOT EXISTS `dmdirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmdirwinddom
CREATE TABLE IF NOT EXISTS `dmdirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmelecstorm
CREATE TABLE IF NOT EXISTS `dmelecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmentrance
CREATE TABLE IF NOT EXISTS `dmentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmevaporation
CREATE TABLE IF NOT EXISTS `dmevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmevappiche
CREATE TABLE IF NOT EXISTS `dmevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmextraction
CREATE TABLE IF NOT EXISTS `dmextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmextraction2
CREATE TABLE IF NOT EXISTS `dmextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmfloortemp
CREATE TABLE IF NOT EXISTS `dmfloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmfog
CREATE TABLE IF NOT EXISTS `dmfog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmfrost
CREATE TABLE IF NOT EXISTS `dmfrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmgeopotheight
CREATE TABLE IF NOT EXISTS `dmgeopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmgeotemp10
CREATE TABLE IF NOT EXISTS `dmgeotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmgeotemp20
CREATE TABLE IF NOT EXISTS `dmgeotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmgeotemp5
CREATE TABLE IF NOT EXISTS `dmgeotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmgeotemp50
CREATE TABLE IF NOT EXISTS `dmgeotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmgraphprecip
CREATE TABLE IF NOT EXISTS `dmgraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmgustspeed
CREATE TABLE IF NOT EXISTS `dmgustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmhail
CREATE TABLE IF NOT EXISTS `dmhail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmheliophany
CREATE TABLE IF NOT EXISTS `dmheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmhighcloudtype
CREATE TABLE IF NOT EXISTS `dmhighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmhumtemp
CREATE TABLE IF NOT EXISTS `dmhumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmindcloudcover
CREATE TABLE IF NOT EXISTS `dmindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dminterntemp
CREATE TABLE IF NOT EXISTS `dminterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmlevel
CREATE TABLE IF NOT EXISTS `dmlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmlevel2
CREATE TABLE IF NOT EXISTS `dmlevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmlevel3
CREATE TABLE IF NOT EXISTS `dmlevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmlowcloudtype
CREATE TABLE IF NOT EXISTS `dmlowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmlowmidcloud
CREATE TABLE IF NOT EXISTS `dmlowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmmedcloudy
CREATE TABLE IF NOT EXISTS `dmmedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmmidcloudtype
CREATE TABLE IF NOT EXISTS `dmmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmmist
CREATE TABLE IF NOT EXISTS `dmmist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmnetevap
CREATE TABLE IF NOT EXISTS `dmnetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmnetrad
CREATE TABLE IF NOT EXISTS `dmnetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmnosnowground
CREATE TABLE IF NOT EXISTS `dmnosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmo2
CREATE TABLE IF NOT EXISTS `dmo2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmo2mgl
CREATE TABLE IF NOT EXISTS `dmo2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmpanelvoltage
CREATE TABLE IF NOT EXISTS `dmpanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmph
CREATE TABLE IF NOT EXISTS `dmph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmpotencialenerv
CREATE TABLE IF NOT EXISTS `dmpotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmprecipitation
CREATE TABLE IF NOT EXISTS `dmprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmprecipmax60
CREATE TABLE IF NOT EXISTS `dmprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmpresstime
CREATE TABLE IF NOT EXISTS `dmpresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmpresstrend
CREATE TABLE IF NOT EXISTS `dmpresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrelhum50
CREATE TABLE IF NOT EXISTS `dmrelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrelhum80
CREATE TABLE IF NOT EXISTS `dmrelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrelhum90
CREATE TABLE IF NOT EXISTS `dmrelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrelhumidity
CREATE TABLE IF NOT EXISTS `dmrelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrelhummax
CREATE TABLE IF NOT EXISTS `dmrelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrelhummed
CREATE TABLE IF NOT EXISTS `dmrelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrelhummin
CREATE TABLE IF NOT EXISTS `dmrelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmriverflow
CREATE TABLE IF NOT EXISTS `dmriverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmriverflow2
CREATE TABLE IF NOT EXISTS `dmriverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmrivervolume
CREATE TABLE IF NOT EXISTS `dmrivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsaltiness
CREATE TABLE IF NOT EXISTS `dmsaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsealevelpress
CREATE TABLE IF NOT EXISTS `dmsealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsnowdepth
CREATE TABLE IF NOT EXISTS `dmsnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsnowonground
CREATE TABLE IF NOT EXISTS `dmsnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsolarrad
CREATE TABLE IF NOT EXISTS `dmsolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmspeedwinddom
CREATE TABLE IF NOT EXISTS `dmspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmspillage
CREATE TABLE IF NOT EXISTS `dmspillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmspillway
CREATE TABLE IF NOT EXISTS `dmspillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmstaticlevel
CREATE TABLE IF NOT EXISTS `dmstaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsteamtension
CREATE TABLE IF NOT EXISTS `dmsteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmstrgvolume
CREATE TABLE IF NOT EXISTS `dmstrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsunshine
CREATE TABLE IF NOT EXISTS `dmsunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmsunstroke
CREATE TABLE IF NOT EXISTS `dmsunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmtempmax
CREATE TABLE IF NOT EXISTS `dmtempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmtempmean
CREATE TABLE IF NOT EXISTS `dmtempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmtempmin
CREATE TABLE IF NOT EXISTS `dmtempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmtempminint
CREATE TABLE IF NOT EXISTS `dmtempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmtimepas1
CREATE TABLE IF NOT EXISTS `dmtimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmtimepas2
CREATE TABLE IF NOT EXISTS `dmtimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmturbidity
CREATE TABLE IF NOT EXISTS `dmturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmvisibility
CREATE TABLE IF NOT EXISTS `dmvisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmvisibilitye
CREATE TABLE IF NOT EXISTS `dmvisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmwaterdispon
CREATE TABLE IF NOT EXISTS `dmwaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmwaterexit
CREATE TABLE IF NOT EXISTS `dmwaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmwaterspeed
CREATE TABLE IF NOT EXISTS `dmwaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmwatertemp
CREATE TABLE IF NOT EXISTS `dmwatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmwinddirn
CREATE TABLE IF NOT EXISTS `dmwinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmwindjourney
CREATE TABLE IF NOT EXISTS `dmwindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dmwindspeed
CREATE TABLE IF NOT EXISTS `dmwindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsairtemp
CREATE TABLE IF NOT EXISTS `dsairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsbarompresmax
CREATE TABLE IF NOT EXISTS `dsbarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsbarompresmin
CREATE TABLE IF NOT EXISTS `dsbarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsbarompressure
CREATE TABLE IF NOT EXISTS `dsbarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsbateryvoltage
CREATE TABLE IF NOT EXISTS `dsbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsccloudheight
CREATE TABLE IF NOT EXISTS `dsccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dscloudcover
CREATE TABLE IF NOT EXISTS `dscloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dscloudheight
CREATE TABLE IF NOT EXISTS `dscloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dscloudtype
CREATE TABLE IF NOT EXISTS `dscloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsdamarea
CREATE TABLE IF NOT EXISTS `dsdamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsdewpoint
CREATE TABLE IF NOT EXISTS `dsdewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsdircloudy
CREATE TABLE IF NOT EXISTS `dsdircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsdirgust
CREATE TABLE IF NOT EXISTS `dsdirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsdirwinddom
CREATE TABLE IF NOT EXISTS `dsdirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dselecstorm
CREATE TABLE IF NOT EXISTS `dselecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsentrance
CREATE TABLE IF NOT EXISTS `dsentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsevaporation
CREATE TABLE IF NOT EXISTS `dsevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsevappiche
CREATE TABLE IF NOT EXISTS `dsevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsextraction
CREATE TABLE IF NOT EXISTS `dsextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsextraction2
CREATE TABLE IF NOT EXISTS `dsextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsfloortemp
CREATE TABLE IF NOT EXISTS `dsfloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsfog
CREATE TABLE IF NOT EXISTS `dsfog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsfrost
CREATE TABLE IF NOT EXISTS `dsfrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsgeopotheight
CREATE TABLE IF NOT EXISTS `dsgeopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsgeotemp10
CREATE TABLE IF NOT EXISTS `dsgeotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsgeotemp20
CREATE TABLE IF NOT EXISTS `dsgeotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsgeotemp5
CREATE TABLE IF NOT EXISTS `dsgeotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsgeotemp50
CREATE TABLE IF NOT EXISTS `dsgeotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsgraphprecip
CREATE TABLE IF NOT EXISTS `dsgraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsgustspeed
CREATE TABLE IF NOT EXISTS `dsgustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dshail
CREATE TABLE IF NOT EXISTS `dshail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsheliophany
CREATE TABLE IF NOT EXISTS `dsheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dshighcloudtype
CREATE TABLE IF NOT EXISTS `dshighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dshumtemp
CREATE TABLE IF NOT EXISTS `dshumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsindcloudcover
CREATE TABLE IF NOT EXISTS `dsindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsinterntemp
CREATE TABLE IF NOT EXISTS `dsinterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dslevel
CREATE TABLE IF NOT EXISTS `dslevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dslevel2
CREATE TABLE IF NOT EXISTS `dslevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dslevel3
CREATE TABLE IF NOT EXISTS `dslevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dslowcloudtype
CREATE TABLE IF NOT EXISTS `dslowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dslowmidcloud
CREATE TABLE IF NOT EXISTS `dslowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsmedcloudy
CREATE TABLE IF NOT EXISTS `dsmedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsmidcloudtype
CREATE TABLE IF NOT EXISTS `dsmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsmist
CREATE TABLE IF NOT EXISTS `dsmist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsnetevap
CREATE TABLE IF NOT EXISTS `dsnetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsnetrad
CREATE TABLE IF NOT EXISTS `dsnetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsnosnowground
CREATE TABLE IF NOT EXISTS `dsnosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dso2
CREATE TABLE IF NOT EXISTS `dso2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dso2mgl
CREATE TABLE IF NOT EXISTS `dso2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dspanelvoltage
CREATE TABLE IF NOT EXISTS `dspanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsph
CREATE TABLE IF NOT EXISTS `dsph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dspotencialenerv
CREATE TABLE IF NOT EXISTS `dspotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsprecipitation
CREATE TABLE IF NOT EXISTS `dsprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsprecipmax60
CREATE TABLE IF NOT EXISTS `dsprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dspresstime
CREATE TABLE IF NOT EXISTS `dspresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dspresstrend
CREATE TABLE IF NOT EXISTS `dspresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrelhum50
CREATE TABLE IF NOT EXISTS `dsrelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrelhum80
CREATE TABLE IF NOT EXISTS `dsrelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrelhum90
CREATE TABLE IF NOT EXISTS `dsrelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrelhumidity
CREATE TABLE IF NOT EXISTS `dsrelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrelhummax
CREATE TABLE IF NOT EXISTS `dsrelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrelhummed
CREATE TABLE IF NOT EXISTS `dsrelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrelhummin
CREATE TABLE IF NOT EXISTS `dsrelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsriverflow
CREATE TABLE IF NOT EXISTS `dsriverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsriverflow2
CREATE TABLE IF NOT EXISTS `dsriverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsrivervolume
CREATE TABLE IF NOT EXISTS `dsrivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssaltiness
CREATE TABLE IF NOT EXISTS `dssaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssealevelpress
CREATE TABLE IF NOT EXISTS `dssealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssnowdepth
CREATE TABLE IF NOT EXISTS `dssnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssnowonground
CREATE TABLE IF NOT EXISTS `dssnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssolarrad
CREATE TABLE IF NOT EXISTS `dssolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsspeedwinddom
CREATE TABLE IF NOT EXISTS `dsspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsspillage
CREATE TABLE IF NOT EXISTS `dsspillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsspillway
CREATE TABLE IF NOT EXISTS `dsspillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsstaticlevel
CREATE TABLE IF NOT EXISTS `dsstaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssteamtension
CREATE TABLE IF NOT EXISTS `dssteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsstrgvolume
CREATE TABLE IF NOT EXISTS `dsstrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssunshine
CREATE TABLE IF NOT EXISTS `dssunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dssunstroke
CREATE TABLE IF NOT EXISTS `dssunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dstempmax
CREATE TABLE IF NOT EXISTS `dstempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dstempmean
CREATE TABLE IF NOT EXISTS `dstempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dstempmin
CREATE TABLE IF NOT EXISTS `dstempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dstempminint
CREATE TABLE IF NOT EXISTS `dstempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dstimepas1
CREATE TABLE IF NOT EXISTS `dstimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dstimepas2
CREATE TABLE IF NOT EXISTS `dstimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsturbidity
CREATE TABLE IF NOT EXISTS `dsturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsvisibility
CREATE TABLE IF NOT EXISTS `dsvisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dsvisibilitye
CREATE TABLE IF NOT EXISTS `dsvisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dswaterdispon
CREATE TABLE IF NOT EXISTS `dswaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dswaterexit
CREATE TABLE IF NOT EXISTS `dswaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dswaterspeed
CREATE TABLE IF NOT EXISTS `dswaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dswatertemp
CREATE TABLE IF NOT EXISTS `dswatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dswinddirn
CREATE TABLE IF NOT EXISTS `dswinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dswindjourney
CREATE TABLE IF NOT EXISTS `dswindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dswindspeed
CREATE TABLE IF NOT EXISTS `dswindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Weekk` int(11) default NULL,
  `Valuee` double default NULL,
  `Codee` char(10) default NULL,
  `DateTimeMax` datetime default NULL,
  `MaxCode` char(10) default NULL,
  `MaxValue` double default NULL,
  `DateTimeMin` datetime default NULL,
  `MinCode` char(10) default NULL,
  `MinValue` double default NULL,
  `CumulValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMaxValue` double default NULL,
  `CumulMinValue` double default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtairtemp
CREATE TABLE IF NOT EXISTS `dtairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtbarompresmax
CREATE TABLE IF NOT EXISTS `dtbarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtbarompresmin
CREATE TABLE IF NOT EXISTS `dtbarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtbarompressure
CREATE TABLE IF NOT EXISTS `dtbarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtbateryvoltage
CREATE TABLE IF NOT EXISTS `dtbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtccloudheight
CREATE TABLE IF NOT EXISTS `dtccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtcloudcover
CREATE TABLE IF NOT EXISTS `dtcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtcloudheight
CREATE TABLE IF NOT EXISTS `dtcloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtcloudtype
CREATE TABLE IF NOT EXISTS `dtcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtdamarea
CREATE TABLE IF NOT EXISTS `dtdamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtdewpoint
CREATE TABLE IF NOT EXISTS `dtdewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtdircloudy
CREATE TABLE IF NOT EXISTS `dtdircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtdirgust
CREATE TABLE IF NOT EXISTS `dtdirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtdirwinddom
CREATE TABLE IF NOT EXISTS `dtdirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtelecstorm
CREATE TABLE IF NOT EXISTS `dtelecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtentrance
CREATE TABLE IF NOT EXISTS `dtentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtevaporation
CREATE TABLE IF NOT EXISTS `dtevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtevappiche
CREATE TABLE IF NOT EXISTS `dtevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtextraction
CREATE TABLE IF NOT EXISTS `dtextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtextraction2
CREATE TABLE IF NOT EXISTS `dtextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtfloortemp
CREATE TABLE IF NOT EXISTS `dtfloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtfog
CREATE TABLE IF NOT EXISTS `dtfog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtfrost
CREATE TABLE IF NOT EXISTS `dtfrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtgeopotheight
CREATE TABLE IF NOT EXISTS `dtgeopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtgeotemp10
CREATE TABLE IF NOT EXISTS `dtgeotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtgeotemp20
CREATE TABLE IF NOT EXISTS `dtgeotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtgeotemp5
CREATE TABLE IF NOT EXISTS `dtgeotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtgeotemp50
CREATE TABLE IF NOT EXISTS `dtgeotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtgraphprecip
CREATE TABLE IF NOT EXISTS `dtgraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtgustspeed
CREATE TABLE IF NOT EXISTS `dtgustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dthail
CREATE TABLE IF NOT EXISTS `dthail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtheliophany
CREATE TABLE IF NOT EXISTS `dtheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dthighcloudtype
CREATE TABLE IF NOT EXISTS `dthighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dthumtemp
CREATE TABLE IF NOT EXISTS `dthumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtindcloudcover
CREATE TABLE IF NOT EXISTS `dtindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtinterntemp
CREATE TABLE IF NOT EXISTS `dtinterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtlevel
CREATE TABLE IF NOT EXISTS `dtlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtlevel2
CREATE TABLE IF NOT EXISTS `dtlevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtlevel3
CREATE TABLE IF NOT EXISTS `dtlevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtlowcloudtype
CREATE TABLE IF NOT EXISTS `dtlowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtlowmidcloud
CREATE TABLE IF NOT EXISTS `dtlowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtmedcloudy
CREATE TABLE IF NOT EXISTS `dtmedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtmidcloudtype
CREATE TABLE IF NOT EXISTS `dtmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtmist
CREATE TABLE IF NOT EXISTS `dtmist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtnetevap
CREATE TABLE IF NOT EXISTS `dtnetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtnetrad
CREATE TABLE IF NOT EXISTS `dtnetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtnosnowground
CREATE TABLE IF NOT EXISTS `dtnosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dto2
CREATE TABLE IF NOT EXISTS `dto2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dto2mgl
CREATE TABLE IF NOT EXISTS `dto2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtpanelvoltage
CREATE TABLE IF NOT EXISTS `dtpanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtph
CREATE TABLE IF NOT EXISTS `dtph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtpotencialenerv
CREATE TABLE IF NOT EXISTS `dtpotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtprecipitation
CREATE TABLE IF NOT EXISTS `dtprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtprecipmax60
CREATE TABLE IF NOT EXISTS `dtprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtpresstime
CREATE TABLE IF NOT EXISTS `dtpresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtpresstrend
CREATE TABLE IF NOT EXISTS `dtpresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrelhum50
CREATE TABLE IF NOT EXISTS `dtrelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrelhum80
CREATE TABLE IF NOT EXISTS `dtrelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrelhum90
CREATE TABLE IF NOT EXISTS `dtrelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrelhumidity
CREATE TABLE IF NOT EXISTS `dtrelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrelhummax
CREATE TABLE IF NOT EXISTS `dtrelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrelhummed
CREATE TABLE IF NOT EXISTS `dtrelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrelhummin
CREATE TABLE IF NOT EXISTS `dtrelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtriverflow
CREATE TABLE IF NOT EXISTS `dtriverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtriverflow2
CREATE TABLE IF NOT EXISTS `dtriverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtrivervolume
CREATE TABLE IF NOT EXISTS `dtrivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsaltiness
CREATE TABLE IF NOT EXISTS `dtsaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsealevelpress
CREATE TABLE IF NOT EXISTS `dtsealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsnowdepth
CREATE TABLE IF NOT EXISTS `dtsnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsnowonground
CREATE TABLE IF NOT EXISTS `dtsnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsolarrad
CREATE TABLE IF NOT EXISTS `dtsolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtspeedwinddom
CREATE TABLE IF NOT EXISTS `dtspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtspillage
CREATE TABLE IF NOT EXISTS `dtspillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtspillway
CREATE TABLE IF NOT EXISTS `dtspillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtstaticlevel
CREATE TABLE IF NOT EXISTS `dtstaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsteamtension
CREATE TABLE IF NOT EXISTS `dtsteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtstrgvolume
CREATE TABLE IF NOT EXISTS `dtstrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsunshine
CREATE TABLE IF NOT EXISTS `dtsunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtsunstroke
CREATE TABLE IF NOT EXISTS `dtsunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dttempmax
CREATE TABLE IF NOT EXISTS `dttempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dttempmean
CREATE TABLE IF NOT EXISTS `dttempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dttempmin
CREATE TABLE IF NOT EXISTS `dttempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dttempminint
CREATE TABLE IF NOT EXISTS `dttempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dttimepas1
CREATE TABLE IF NOT EXISTS `dttimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dttimepas2
CREATE TABLE IF NOT EXISTS `dttimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtturbidity
CREATE TABLE IF NOT EXISTS `dtturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtvisibility
CREATE TABLE IF NOT EXISTS `dtvisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtvisibilitye
CREATE TABLE IF NOT EXISTS `dtvisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtwaterdispon
CREATE TABLE IF NOT EXISTS `dtwaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtwaterexit
CREATE TABLE IF NOT EXISTS `dtwaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtwaterspeed
CREATE TABLE IF NOT EXISTS `dtwaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtwatertemp
CREATE TABLE IF NOT EXISTS `dtwatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtwinddirn
CREATE TABLE IF NOT EXISTS `dtwinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtwindjourney
CREATE TABLE IF NOT EXISTS `dtwindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.dtwindspeed
CREATE TABLE IF NOT EXISTS `dtwindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Valuee` double default NULL,
  `CorrValue` double default NULL,
  `Codee` char(10) default NULL,
  `Source` char(10) default NULL,
  `MeasurementMinutes` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=600000000 AVG_ROW_LENGTH=79;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ftpproclog
CREATE TABLE IF NOT EXISTS `ftpproclog` (
  `Filee` char(250) NOT NULL default '',
  `Datee` datetime default NULL,
  PRIMARY KEY  (`Filee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ftptrans
CREATE TABLE IF NOT EXISTS `ftptrans` (
  `TransOption` char(30) NOT NULL default '',
  `IPAddress` char(90) default NULL,
  `Userr` char(30) default NULL,
  `Password` char(30) default NULL,
  PRIMARY KEY  (`TransOption`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.genmapsbycoords
CREATE TABLE IF NOT EXISTS `genmapsbycoords` (
  `Map` char(30) NOT NULL default '',
  `Longitude1` double NOT NULL default '0',
  `Latitude1` double NOT NULL default '0',
  `Longitude2` double NOT NULL default '0',
  `Latitude2` double NOT NULL default '0',
  `resoln` int(11) NOT NULL default '0',
  `coastline` int(11) NOT NULL default '0',
  `coastcolor` int(11) NOT NULL default '0',
  `borderline` int(11) NOT NULL default '0',
  `bordercolor` int(11) NOT NULL default '0',
  `riverline` int(11) NOT NULL default '0',
  `rivercolour` int(11) NOT NULL default '0',
  `projection` char(10) NOT NULL default '',
  `ncellipsoid` char(10) NOT NULL default '',
  `lat0` double NOT NULL default '0',
  `lon0` double NOT NULL default '0',
  `xm` double NOT NULL default '0',
  `yn` double NOT NULL default '0',
  `lat1` double NOT NULL default '0',
  `lon1` double NOT NULL default '0',
  `lat2` double NOT NULL default '0',
  `lon2` double NOT NULL default '0',
  `lat3` double NOT NULL default '0',
  `lon3` double NOT NULL default '0',
  `Zone` int(11) NOT NULL default '1',
  `sur` int(11) NOT NULL default '0',
  `x0` double NOT NULL default '0',
  `y0` double NOT NULL default '0',
  `h` double NOT NULL default '0',
  `r` double NOT NULL default '6350',
  `latts` double NOT NULL default '0',
  `poligperim` char(30) NOT NULL default '',
  PRIMARY KEY  (`Map`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.geogpixelmaps
CREATE TABLE IF NOT EXISTS `geogpixelmaps` (
  `Map` char(30) NOT NULL default '',
  `Longitude1` double default NULL,
  `Latitude1` double default NULL,
  `Xp1` double default NULL,
  `Yp1` double default NULL,
  `Longitude2` double default NULL,
  `Latitude2` double default NULL,
  `Xp2` double default NULL,
  `Yp2` double default NULL,
  `mapname` char(250) default NULL,
  PRIMARY KEY  (`Map`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.geogpixelmaps4
CREATE TABLE IF NOT EXISTS `geogpixelmaps4` (
  `Map` char(30) NOT NULL default '',
  `Longitude1` double NOT NULL default '0',
  `Latitude1` double NOT NULL default '0',
  `Xp1` double default NULL,
  `Yp1` double default NULL,
  `Longitude2` double default NULL,
  `Latitude2` double default NULL,
  `Xp2` double default NULL,
  `Yp2` double default NULL,
  `Longitude3` double default NULL,
  `Latitude3` double default NULL,
  `Xp3` double default NULL,
  `Yp3` double default NULL,
  `Longitude4` double default NULL,
  `Latitude4` double default NULL,
  `Xp4` double default NULL,
  `Yp4` double default NULL,
  `mapname` char(250) default NULL,
  PRIMARY KEY  (`Map`,`Longitude1`,`Latitude1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.groupmaps
CREATE TABLE IF NOT EXISTS `groupmaps` (
  `Map` char(30) NOT NULL default '',
  `Groupp` char(15) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `Userr` char(20) NOT NULL default '',
  `Period` char(5) NOT NULL default '',
  `Interv1` double NOT NULL default '0',
  `Color1` int(11) NOT NULL default '0',
  `Interv2` double NOT NULL default '0',
  `Color2` int(11) NOT NULL default '0',
  `Interv3` double NOT NULL default '0',
  `Color3` int(11) NOT NULL default '0',
  `Interv4` double NOT NULL default '0',
  `Color4` int(11) NOT NULL default '0',
  `Interv5` double NOT NULL default '0',
  `Color5` int(11) NOT NULL default '0',
  `Interv6` double NOT NULL default '0',
  `Color6` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Map`,`Variable`,`Userr`,`Period`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.hydroregion
CREATE TABLE IF NOT EXISTS `hydroregion` (
  `HydroReg` char(5) NOT NULL default '',
  `HydroReg2` char(20) default NULL,
  `HydrRegionName` char(150) default NULL,
  PRIMARY KEY  (`HydroReg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.intxxnetmapoptions
CREATE TABLE IF NOT EXISTS `intxxnetmapoptions` (
  `Optionn` char(15) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `Map` char(30) default NULL,
  `StnGroup` char(20) default NULL,
  `Name` char(30) default NULL,
  `StationType` char(15) default NULL,
  PRIMARY KEY  (`Optionn`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.isolinelog
CREATE TABLE IF NOT EXISTS `isolinelog` (
  `Optionn` char(60) NOT NULL default '',
  `DateTimee` datetime default NULL,
  `NumRecs` int(11) default NULL,
  `ActDate` datetime default NULL,
  PRIMARY KEY  (`Optionn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.logproclog
CREATE TABLE IF NOT EXISTS `logproclog` (
  `Filee` char(250) NOT NULL default '',
  `Datee` datetime default NULL,
  PRIMARY KEY  (`Filee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.mapascroquis
CREATE TABLE IF NOT EXISTS `mapascroquis` (
  `Map` char(30) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `Userr` char(20) NOT NULL default '',
  `Period` char(5) NOT NULL default '',
  `Interv1` double NOT NULL default '0',
  `Color1` int(11) NOT NULL default '0',
  `Interv2` double NOT NULL default '0',
  `Color2` int(11) NOT NULL default '0',
  `Interv3` double NOT NULL default '0',
  `Color3` int(11) NOT NULL default '0',
  `Interv4` double NOT NULL default '0',
  `Color4` int(11) NOT NULL default '0',
  `Interv5` double NOT NULL default '0',
  `Color5` int(11) NOT NULL default '0',
  `Interv6` double NOT NULL default '0',
  `Color6` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Map`,`Variable`,`Userr`,`Period`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.maps
CREATE TABLE IF NOT EXISTS `maps` (
  `Map` char(30) NOT NULL default '',
  `Location` char(250) default NULL,
  PRIMARY KEY  (`Map`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.mapsbyclrcoords
CREATE TABLE IF NOT EXISTS `mapsbyclrcoords` (
  `Map` char(30) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `Userr` char(20) NOT NULL default '',
  `Period` char(5) NOT NULL default '',
  `Interv1` double default NULL,
  `Color1` int(11) default NULL,
  `Fill1` int(11) default NULL,
  `Interv2` double default NULL,
  `Color2` int(11) default NULL,
  `Fill2` int(11) default NULL,
  `Interv3` double default NULL,
  `Color3` int(11) default NULL,
  `Fill3` int(11) default NULL,
  `Interv4` double default NULL,
  `Color4` int(11) default NULL,
  `Fill4` int(11) default NULL,
  `Interv5` double default NULL,
  `Color5` int(11) default NULL,
  `Fill5` int(11) default NULL,
  `Interv6` double default NULL,
  `Color6` int(11) default NULL,
  `Fill6` int(11) default NULL,
  `Unit` char(10) default NULL,
  `LabelXPosn` double default NULL,
  `LabelYPosn` double default NULL,
  `IncInt` double default NULL,
  `Xinc` double default NULL,
  `Yinc` double default NULL,
  PRIMARY KEY  (`Map`,`Variable`,`Userr`,`Period`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.mapsbycoords
CREATE TABLE IF NOT EXISTS `mapsbycoords` (
  `Map` char(30) NOT NULL default '',
  `Sequen` int(11) NOT NULL default '0',
  `Zone` char(20) default NULL,
  `XCoord` double default NULL,
  `YCoord` double default NULL,
  `Indicate` char(1) default NULL,
  `FontHeight` double default NULL,
  `Descrn` char(40) default NULL,
  `Angle` double default NULL,
  PRIMARY KEY  (`Map`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.mapsbygeogcoords
CREATE TABLE IF NOT EXISTS `mapsbygeogcoords` (
  `Map` char(30) NOT NULL default '',
  `Sequen` int(11) NOT NULL default '0',
  `XCoord` double default NULL,
  `YCoord` double default NULL,
  `Indicate` char(1) default NULL,
  PRIMARY KEY  (`Map`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.mapsbyzonecoords
CREATE TABLE IF NOT EXISTS `mapsbyzonecoords` (
  `Map` char(30) NOT NULL default '',
  `Sequen` int(11) NOT NULL default '0',
  `Zone` char(40) default NULL,
  PRIMARY KEY  (`Map`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.mchmapsbycoords
CREATE TABLE IF NOT EXISTS `mchmapsbycoords` (
  `Map` char(30) NOT NULL default '',
  `Longitude1` double NOT NULL default '0',
  `Latitude1` double NOT NULL default '0',
  `Longitude2` double NOT NULL default '0',
  `Latitude2` double NOT NULL default '0',
  `borderline` int(11) NOT NULL default '0',
  `bordercolor` int(11) NOT NULL default '0',
  `Stateline` int(11) NOT NULL default '0',
  `statecolor` int(11) NOT NULL default '0',
  `riverline` int(11) NOT NULL default '0',
  `rivercolour` int(11) NOT NULL default '0',
  `primisolin` int(11) NOT NULL default '0',
  `primisolinline` int(11) NOT NULL default '0',
  `primisolincolor` int(11) NOT NULL default '0',
  `seconisolin` int(11) NOT NULL default '0',
  `seconisoline` int(11) NOT NULL default '0',
  `secisolincolor` int(11) NOT NULL default '0',
  `roadline` int(11) NOT NULL default '0',
  `roadcolor` int(11) NOT NULL default '0',
  `townline` int(11) NOT NULL default '0',
  `towncolor` int(11) NOT NULL default '0',
  `SupplyLine` int(11) NOT NULL default '0',
  `SupplyLineColour` int(11) NOT NULL default '0',
  `Withisolines` int(11) NOT NULL default '0',
  `poligperim` char(30) NOT NULL default '',
  `projection` char(10) NOT NULL default '',
  `ncellipsoid` char(10) NOT NULL default '',
  `lat0` double NOT NULL default '0',
  `lon0` double NOT NULL default '0',
  `xm` double NOT NULL default '0',
  `yn` double NOT NULL default '0',
  `lat1` double NOT NULL default '0',
  `lon1` double NOT NULL default '0',
  `lat2` double NOT NULL default '0',
  `lon2` double NOT NULL default '0',
  `lat3` double NOT NULL default '0',
  `lon3` double NOT NULL default '0',
  `Zone` int(11) NOT NULL default '1',
  `sur` int(11) NOT NULL default '0',
  `x0` double NOT NULL default '0',
  `y0` double NOT NULL default '0',
  `h` double NOT NULL default '0',
  `r` double NOT NULL default '6350',
  `latts` double NOT NULL default '0',
  PRIMARY KEY  (`Map`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.metadatastations
CREATE TABLE IF NOT EXISTS `metadatastations` (
  `Station` char(20) NOT NULL default '',
  `MetaDatum` char(30) NOT NULL default '',
  `Datee` date NOT NULL,
  `Description` char(255) default NULL,
  PRIMARY KEY  (`Station`,`MetaDatum`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.metarmessages
CREATE TABLE IF NOT EXISTS `metarmessages` (
  `Station` char(20) NOT NULL default '',
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Type` char(5) default NULL,
  `Codee` char(10) default NULL,
  `Message` text,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.municipalities
CREATE TABLE IF NOT EXISTS `municipalities` (
  `Municipality` char(5) NOT NULL default '',
  `Municipality2` char(20) default NULL,
  `MunicipalityName` char(150) default NULL,
  PRIMARY KEY  (`Municipality`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naairtemp
CREATE TABLE IF NOT EXISTS `naairtemp` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nabarompresmax
CREATE TABLE IF NOT EXISTS `nabarompresmax` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nabarompresmin
CREATE TABLE IF NOT EXISTS `nabarompresmin` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nabarompressure
CREATE TABLE IF NOT EXISTS `nabarompressure` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nabateryvoltage
CREATE TABLE IF NOT EXISTS `nabateryvoltage` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naccloudheight
CREATE TABLE IF NOT EXISTS `naccloudheight` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nacloudcover
CREATE TABLE IF NOT EXISTS `nacloudcover` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nacloudheight
CREATE TABLE IF NOT EXISTS `nacloudheight` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nacloudtype
CREATE TABLE IF NOT EXISTS `nacloudtype` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nadamarea
CREATE TABLE IF NOT EXISTS `nadamarea` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nadewpoint
CREATE TABLE IF NOT EXISTS `nadewpoint` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nadircloudy
CREATE TABLE IF NOT EXISTS `nadircloudy` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nadirgust
CREATE TABLE IF NOT EXISTS `nadirgust` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nadirwinddom
CREATE TABLE IF NOT EXISTS `nadirwinddom` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naelecstorm
CREATE TABLE IF NOT EXISTS `naelecstorm` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naentrance
CREATE TABLE IF NOT EXISTS `naentrance` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naevaporation
CREATE TABLE IF NOT EXISTS `naevaporation` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naevappiche
CREATE TABLE IF NOT EXISTS `naevappiche` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naextraction
CREATE TABLE IF NOT EXISTS `naextraction` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naextraction2
CREATE TABLE IF NOT EXISTS `naextraction2` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nafloortemp
CREATE TABLE IF NOT EXISTS `nafloortemp` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nafog
CREATE TABLE IF NOT EXISTS `nafog` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nafrost
CREATE TABLE IF NOT EXISTS `nafrost` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nageopotheight
CREATE TABLE IF NOT EXISTS `nageopotheight` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nageotemp10
CREATE TABLE IF NOT EXISTS `nageotemp10` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nageotemp20
CREATE TABLE IF NOT EXISTS `nageotemp20` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nageotemp5
CREATE TABLE IF NOT EXISTS `nageotemp5` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nageotemp50
CREATE TABLE IF NOT EXISTS `nageotemp50` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nagraphprecip
CREATE TABLE IF NOT EXISTS `nagraphprecip` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nagustspeed
CREATE TABLE IF NOT EXISTS `nagustspeed` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nahail
CREATE TABLE IF NOT EXISTS `nahail` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naheliophany
CREATE TABLE IF NOT EXISTS `naheliophany` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nahighcloudtype
CREATE TABLE IF NOT EXISTS `nahighcloudtype` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nahumtemp
CREATE TABLE IF NOT EXISTS `nahumtemp` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naindcloudcover
CREATE TABLE IF NOT EXISTS `naindcloudcover` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nainterntemp
CREATE TABLE IF NOT EXISTS `nainterntemp` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nalevel
CREATE TABLE IF NOT EXISTS `nalevel` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nalevel2
CREATE TABLE IF NOT EXISTS `nalevel2` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nalevel3
CREATE TABLE IF NOT EXISTS `nalevel3` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nalowcloudtype
CREATE TABLE IF NOT EXISTS `nalowcloudtype` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nalowmidcloud
CREATE TABLE IF NOT EXISTS `nalowmidcloud` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.namedcloudy
CREATE TABLE IF NOT EXISTS `namedcloudy` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.namidcloudtype
CREATE TABLE IF NOT EXISTS `namidcloudtype` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.namist
CREATE TABLE IF NOT EXISTS `namist` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nanetevap
CREATE TABLE IF NOT EXISTS `nanetevap` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nanetrad
CREATE TABLE IF NOT EXISTS `nanetrad` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nanosnowground
CREATE TABLE IF NOT EXISTS `nanosnowground` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nao2
CREATE TABLE IF NOT EXISTS `nao2` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nao2mgl
CREATE TABLE IF NOT EXISTS `nao2mgl` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.napanelvoltage
CREATE TABLE IF NOT EXISTS `napanelvoltage` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naph
CREATE TABLE IF NOT EXISTS `naph` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.napotencialenerv
CREATE TABLE IF NOT EXISTS `napotencialenerv` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naprecipitation
CREATE TABLE IF NOT EXISTS `naprecipitation` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naprecipmax60
CREATE TABLE IF NOT EXISTS `naprecipmax60` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.napresstime
CREATE TABLE IF NOT EXISTS `napresstime` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.napresstrend
CREATE TABLE IF NOT EXISTS `napresstrend` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narelhum50
CREATE TABLE IF NOT EXISTS `narelhum50` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narelhum80
CREATE TABLE IF NOT EXISTS `narelhum80` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narelhum90
CREATE TABLE IF NOT EXISTS `narelhum90` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narelhumidity
CREATE TABLE IF NOT EXISTS `narelhumidity` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narelhummax
CREATE TABLE IF NOT EXISTS `narelhummax` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narelhummed
CREATE TABLE IF NOT EXISTS `narelhummed` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narelhummin
CREATE TABLE IF NOT EXISTS `narelhummin` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nariverflow
CREATE TABLE IF NOT EXISTS `nariverflow` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nariverflow2
CREATE TABLE IF NOT EXISTS `nariverflow2` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.narivervolume
CREATE TABLE IF NOT EXISTS `narivervolume` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasaltiness
CREATE TABLE IF NOT EXISTS `nasaltiness` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasealevelpress
CREATE TABLE IF NOT EXISTS `nasealevelpress` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasnowdepth
CREATE TABLE IF NOT EXISTS `nasnowdepth` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasnowonground
CREATE TABLE IF NOT EXISTS `nasnowonground` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasolarrad
CREATE TABLE IF NOT EXISTS `nasolarrad` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naspeedwinddom
CREATE TABLE IF NOT EXISTS `naspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naspillage
CREATE TABLE IF NOT EXISTS `naspillage` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naspillway
CREATE TABLE IF NOT EXISTS `naspillway` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nastaticlevel
CREATE TABLE IF NOT EXISTS `nastaticlevel` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasteamtension
CREATE TABLE IF NOT EXISTS `nasteamtension` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nastrgvolume
CREATE TABLE IF NOT EXISTS `nastrgvolume` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasunshine
CREATE TABLE IF NOT EXISTS `nasunshine` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nasunstroke
CREATE TABLE IF NOT EXISTS `nasunstroke` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.natempmax
CREATE TABLE IF NOT EXISTS `natempmax` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.natempmean
CREATE TABLE IF NOT EXISTS `natempmean` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.natempmin
CREATE TABLE IF NOT EXISTS `natempmin` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.natempminint
CREATE TABLE IF NOT EXISTS `natempminint` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.natimepas1
CREATE TABLE IF NOT EXISTS `natimepas1` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.natimepas2
CREATE TABLE IF NOT EXISTS `natimepas2` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.naturbidity
CREATE TABLE IF NOT EXISTS `naturbidity` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.navisibility
CREATE TABLE IF NOT EXISTS `navisibility` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.navisibilitye
CREATE TABLE IF NOT EXISTS `navisibilitye` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nawaterdispon
CREATE TABLE IF NOT EXISTS `nawaterdispon` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nawaterexit
CREATE TABLE IF NOT EXISTS `nawaterexit` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nawaterspeed
CREATE TABLE IF NOT EXISTS `nawaterspeed` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nawatertemp
CREATE TABLE IF NOT EXISTS `nawatertemp` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nawinddirn
CREATE TABLE IF NOT EXISTS `nawinddirn` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nawindjourney
CREATE TABLE IF NOT EXISTS `nawindjourney` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nawindspeed
CREATE TABLE IF NOT EXISTS `nawindspeed` (
  `Station` char(20) NOT NULL,
  `Valuee` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `Median` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncairtemp
CREATE TABLE IF NOT EXISTS `ncairtemp` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncbarompresmax
CREATE TABLE IF NOT EXISTS `ncbarompresmax` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncbarompresmin
CREATE TABLE IF NOT EXISTS `ncbarompresmin` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncbarompressure
CREATE TABLE IF NOT EXISTS `ncbarompressure` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncbateryvoltage
CREATE TABLE IF NOT EXISTS `ncbateryvoltage` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncccloudheight
CREATE TABLE IF NOT EXISTS `ncccloudheight` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nccloudcover
CREATE TABLE IF NOT EXISTS `nccloudcover` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nccloudheight
CREATE TABLE IF NOT EXISTS `nccloudheight` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nccloudtype
CREATE TABLE IF NOT EXISTS `nccloudtype` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncdamarea
CREATE TABLE IF NOT EXISTS `ncdamarea` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncdewpoint
CREATE TABLE IF NOT EXISTS `ncdewpoint` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncdircloudy
CREATE TABLE IF NOT EXISTS `ncdircloudy` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncdirgust
CREATE TABLE IF NOT EXISTS `ncdirgust` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncdirwinddom
CREATE TABLE IF NOT EXISTS `ncdirwinddom` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncelecstorm
CREATE TABLE IF NOT EXISTS `ncelecstorm` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncentrance
CREATE TABLE IF NOT EXISTS `ncentrance` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncevaporation
CREATE TABLE IF NOT EXISTS `ncevaporation` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncevappiche
CREATE TABLE IF NOT EXISTS `ncevappiche` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncextraction
CREATE TABLE IF NOT EXISTS `ncextraction` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncextraction2
CREATE TABLE IF NOT EXISTS `ncextraction2` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncfloortemp
CREATE TABLE IF NOT EXISTS `ncfloortemp` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncfog
CREATE TABLE IF NOT EXISTS `ncfog` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncfrost
CREATE TABLE IF NOT EXISTS `ncfrost` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncgeopotheight
CREATE TABLE IF NOT EXISTS `ncgeopotheight` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncgeotemp10
CREATE TABLE IF NOT EXISTS `ncgeotemp10` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncgeotemp20
CREATE TABLE IF NOT EXISTS `ncgeotemp20` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncgeotemp5
CREATE TABLE IF NOT EXISTS `ncgeotemp5` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncgeotemp50
CREATE TABLE IF NOT EXISTS `ncgeotemp50` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncgraphprecip
CREATE TABLE IF NOT EXISTS `ncgraphprecip` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncgustspeed
CREATE TABLE IF NOT EXISTS `ncgustspeed` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nchail
CREATE TABLE IF NOT EXISTS `nchail` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncheliophany
CREATE TABLE IF NOT EXISTS `ncheliophany` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nchighcloudtype
CREATE TABLE IF NOT EXISTS `nchighcloudtype` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nchumtemp
CREATE TABLE IF NOT EXISTS `nchumtemp` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncindcloudcover
CREATE TABLE IF NOT EXISTS `ncindcloudcover` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncinterntemp
CREATE TABLE IF NOT EXISTS `ncinterntemp` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nclevel
CREATE TABLE IF NOT EXISTS `nclevel` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nclevel2
CREATE TABLE IF NOT EXISTS `nclevel2` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nclevel3
CREATE TABLE IF NOT EXISTS `nclevel3` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nclowcloudtype
CREATE TABLE IF NOT EXISTS `nclowcloudtype` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nclowmidcloud
CREATE TABLE IF NOT EXISTS `nclowmidcloud` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncmedcloudy
CREATE TABLE IF NOT EXISTS `ncmedcloudy` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncmidcloudtype
CREATE TABLE IF NOT EXISTS `ncmidcloudtype` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncmist
CREATE TABLE IF NOT EXISTS `ncmist` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncnetevap
CREATE TABLE IF NOT EXISTS `ncnetevap` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncnetrad
CREATE TABLE IF NOT EXISTS `ncnetrad` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncnosnowground
CREATE TABLE IF NOT EXISTS `ncnosnowground` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nco2
CREATE TABLE IF NOT EXISTS `nco2` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nco2mgl
CREATE TABLE IF NOT EXISTS `nco2mgl` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncpanelvoltage
CREATE TABLE IF NOT EXISTS `ncpanelvoltage` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncph
CREATE TABLE IF NOT EXISTS `ncph` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncpotencialenerv
CREATE TABLE IF NOT EXISTS `ncpotencialenerv` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncprecipitation
CREATE TABLE IF NOT EXISTS `ncprecipitation` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncprecipmax60
CREATE TABLE IF NOT EXISTS `ncprecipmax60` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncpresstime
CREATE TABLE IF NOT EXISTS `ncpresstime` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncpresstrend
CREATE TABLE IF NOT EXISTS `ncpresstrend` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrelhum50
CREATE TABLE IF NOT EXISTS `ncrelhum50` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrelhum80
CREATE TABLE IF NOT EXISTS `ncrelhum80` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrelhum90
CREATE TABLE IF NOT EXISTS `ncrelhum90` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrelhumidity
CREATE TABLE IF NOT EXISTS `ncrelhumidity` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrelhummax
CREATE TABLE IF NOT EXISTS `ncrelhummax` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrelhummed
CREATE TABLE IF NOT EXISTS `ncrelhummed` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrelhummin
CREATE TABLE IF NOT EXISTS `ncrelhummin` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncriverflow
CREATE TABLE IF NOT EXISTS `ncriverflow` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncriverflow2
CREATE TABLE IF NOT EXISTS `ncriverflow2` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncrivervolume
CREATE TABLE IF NOT EXISTS `ncrivervolume` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsaltiness
CREATE TABLE IF NOT EXISTS `ncsaltiness` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsealevelpress
CREATE TABLE IF NOT EXISTS `ncsealevelpress` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsnowdepth
CREATE TABLE IF NOT EXISTS `ncsnowdepth` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsnowonground
CREATE TABLE IF NOT EXISTS `ncsnowonground` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsolarrad
CREATE TABLE IF NOT EXISTS `ncsolarrad` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncspeedwinddom
CREATE TABLE IF NOT EXISTS `ncspeedwinddom` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncspillage
CREATE TABLE IF NOT EXISTS `ncspillage` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncspillway
CREATE TABLE IF NOT EXISTS `ncspillway` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncstaticlevel
CREATE TABLE IF NOT EXISTS `ncstaticlevel` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsteamtension
CREATE TABLE IF NOT EXISTS `ncsteamtension` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncstrgvolume
CREATE TABLE IF NOT EXISTS `ncstrgvolume` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsunshine
CREATE TABLE IF NOT EXISTS `ncsunshine` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncsunstroke
CREATE TABLE IF NOT EXISTS `ncsunstroke` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nctempmax
CREATE TABLE IF NOT EXISTS `nctempmax` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nctempmean
CREATE TABLE IF NOT EXISTS `nctempmean` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nctempmin
CREATE TABLE IF NOT EXISTS `nctempmin` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nctempminint
CREATE TABLE IF NOT EXISTS `nctempminint` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nctimepas1
CREATE TABLE IF NOT EXISTS `nctimepas1` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nctimepas2
CREATE TABLE IF NOT EXISTS `nctimepas2` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncturbidity
CREATE TABLE IF NOT EXISTS `ncturbidity` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncvisibility
CREATE TABLE IF NOT EXISTS `ncvisibility` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncvisibilitye
CREATE TABLE IF NOT EXISTS `ncvisibilitye` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncwaterdispon
CREATE TABLE IF NOT EXISTS `ncwaterdispon` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncwaterexit
CREATE TABLE IF NOT EXISTS `ncwaterexit` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncwaterspeed
CREATE TABLE IF NOT EXISTS `ncwaterspeed` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncwatertemp
CREATE TABLE IF NOT EXISTS `ncwatertemp` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncwinddirn
CREATE TABLE IF NOT EXISTS `ncwinddirn` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncwindjourney
CREATE TABLE IF NOT EXISTS `ncwindjourney` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ncwindspeed
CREATE TABLE IF NOT EXISTS `ncwindspeed` (
  `Station` char(20) NOT NULL,
  `dekad` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`dekad`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndairtemp
CREATE TABLE IF NOT EXISTS `ndairtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndbarompresmax
CREATE TABLE IF NOT EXISTS `ndbarompresmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndbarompresmin
CREATE TABLE IF NOT EXISTS `ndbarompresmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndbarompressure
CREATE TABLE IF NOT EXISTS `ndbarompressure` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndbateryvoltage
CREATE TABLE IF NOT EXISTS `ndbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndccloudheight
CREATE TABLE IF NOT EXISTS `ndccloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndcloudcover
CREATE TABLE IF NOT EXISTS `ndcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndcloudheight
CREATE TABLE IF NOT EXISTS `ndcloudheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndcloudtype
CREATE TABLE IF NOT EXISTS `ndcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nddamarea
CREATE TABLE IF NOT EXISTS `nddamarea` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nddewpoint
CREATE TABLE IF NOT EXISTS `nddewpoint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nddircloudy
CREATE TABLE IF NOT EXISTS `nddircloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nddirgust
CREATE TABLE IF NOT EXISTS `nddirgust` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nddirwinddom
CREATE TABLE IF NOT EXISTS `nddirwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndelecstorm
CREATE TABLE IF NOT EXISTS `ndelecstorm` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndentrance
CREATE TABLE IF NOT EXISTS `ndentrance` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndevaporation
CREATE TABLE IF NOT EXISTS `ndevaporation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndevappiche
CREATE TABLE IF NOT EXISTS `ndevappiche` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndextraction
CREATE TABLE IF NOT EXISTS `ndextraction` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndextraction2
CREATE TABLE IF NOT EXISTS `ndextraction2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndfloortemp
CREATE TABLE IF NOT EXISTS `ndfloortemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndfog
CREATE TABLE IF NOT EXISTS `ndfog` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndfrost
CREATE TABLE IF NOT EXISTS `ndfrost` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndgeopotheight
CREATE TABLE IF NOT EXISTS `ndgeopotheight` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndgeotemp10
CREATE TABLE IF NOT EXISTS `ndgeotemp10` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndgeotemp20
CREATE TABLE IF NOT EXISTS `ndgeotemp20` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndgeotemp5
CREATE TABLE IF NOT EXISTS `ndgeotemp5` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndgeotemp50
CREATE TABLE IF NOT EXISTS `ndgeotemp50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndgraphprecip
CREATE TABLE IF NOT EXISTS `ndgraphprecip` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndgustspeed
CREATE TABLE IF NOT EXISTS `ndgustspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndhail
CREATE TABLE IF NOT EXISTS `ndhail` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndheliophany
CREATE TABLE IF NOT EXISTS `ndheliophany` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndhighcloudtype
CREATE TABLE IF NOT EXISTS `ndhighcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndhumtemp
CREATE TABLE IF NOT EXISTS `ndhumtemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndindcloudcover
CREATE TABLE IF NOT EXISTS `ndindcloudcover` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndinterntemp
CREATE TABLE IF NOT EXISTS `ndinterntemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndlevel
CREATE TABLE IF NOT EXISTS `ndlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndlevel2
CREATE TABLE IF NOT EXISTS `ndlevel2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndlevel3
CREATE TABLE IF NOT EXISTS `ndlevel3` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndlowcloudtype
CREATE TABLE IF NOT EXISTS `ndlowcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndlowmidcloud
CREATE TABLE IF NOT EXISTS `ndlowmidcloud` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndmedcloudy
CREATE TABLE IF NOT EXISTS `ndmedcloudy` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndmidcloudtype
CREATE TABLE IF NOT EXISTS `ndmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndmist
CREATE TABLE IF NOT EXISTS `ndmist` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndnetevap
CREATE TABLE IF NOT EXISTS `ndnetevap` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndnetrad
CREATE TABLE IF NOT EXISTS `ndnetrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndnosnowground
CREATE TABLE IF NOT EXISTS `ndnosnowground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndo2
CREATE TABLE IF NOT EXISTS `ndo2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndo2mgl
CREATE TABLE IF NOT EXISTS `ndo2mgl` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndpanelvoltage
CREATE TABLE IF NOT EXISTS `ndpanelvoltage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndph
CREATE TABLE IF NOT EXISTS `ndph` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndpotencialenerv
CREATE TABLE IF NOT EXISTS `ndpotencialenerv` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndprecipitation
CREATE TABLE IF NOT EXISTS `ndprecipitation` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndprecipmax60
CREATE TABLE IF NOT EXISTS `ndprecipmax60` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndpresstime
CREATE TABLE IF NOT EXISTS `ndpresstime` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndpresstrend
CREATE TABLE IF NOT EXISTS `ndpresstrend` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrelhum50
CREATE TABLE IF NOT EXISTS `ndrelhum50` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrelhum80
CREATE TABLE IF NOT EXISTS `ndrelhum80` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrelhum90
CREATE TABLE IF NOT EXISTS `ndrelhum90` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrelhumidity
CREATE TABLE IF NOT EXISTS `ndrelhumidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrelhummax
CREATE TABLE IF NOT EXISTS `ndrelhummax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrelhummed
CREATE TABLE IF NOT EXISTS `ndrelhummed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrelhummin
CREATE TABLE IF NOT EXISTS `ndrelhummin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndriverflow
CREATE TABLE IF NOT EXISTS `ndriverflow` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndriverflow2
CREATE TABLE IF NOT EXISTS `ndriverflow2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndrivervolume
CREATE TABLE IF NOT EXISTS `ndrivervolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsaltiness
CREATE TABLE IF NOT EXISTS `ndsaltiness` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsealevelpress
CREATE TABLE IF NOT EXISTS `ndsealevelpress` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsnowdepth
CREATE TABLE IF NOT EXISTS `ndsnowdepth` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsnowonground
CREATE TABLE IF NOT EXISTS `ndsnowonground` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsolarrad
CREATE TABLE IF NOT EXISTS `ndsolarrad` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndspeedwinddom
CREATE TABLE IF NOT EXISTS `ndspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndspillage
CREATE TABLE IF NOT EXISTS `ndspillage` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndspillway
CREATE TABLE IF NOT EXISTS `ndspillway` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndstaticlevel
CREATE TABLE IF NOT EXISTS `ndstaticlevel` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsteamtension
CREATE TABLE IF NOT EXISTS `ndsteamtension` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndstrgvolume
CREATE TABLE IF NOT EXISTS `ndstrgvolume` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsunshine
CREATE TABLE IF NOT EXISTS `ndsunshine` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndsunstroke
CREATE TABLE IF NOT EXISTS `ndsunstroke` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndtempmax
CREATE TABLE IF NOT EXISTS `ndtempmax` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndtempmean
CREATE TABLE IF NOT EXISTS `ndtempmean` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndtempmin
CREATE TABLE IF NOT EXISTS `ndtempmin` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndtempminint
CREATE TABLE IF NOT EXISTS `ndtempminint` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndtimepas1
CREATE TABLE IF NOT EXISTS `ndtimepas1` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndtimepas2
CREATE TABLE IF NOT EXISTS `ndtimepas2` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndturbidity
CREATE TABLE IF NOT EXISTS `ndturbidity` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndvisibility
CREATE TABLE IF NOT EXISTS `ndvisibility` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndvisibilitye
CREATE TABLE IF NOT EXISTS `ndvisibilitye` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndwaterdispon
CREATE TABLE IF NOT EXISTS `ndwaterdispon` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndwaterexit
CREATE TABLE IF NOT EXISTS `ndwaterexit` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndwaterspeed
CREATE TABLE IF NOT EXISTS `ndwaterspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndwatertemp
CREATE TABLE IF NOT EXISTS `ndwatertemp` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndwinddirn
CREATE TABLE IF NOT EXISTS `ndwinddirn` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndwindjourney
CREATE TABLE IF NOT EXISTS `ndwindjourney` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.ndwindspeed
CREATE TABLE IF NOT EXISTS `ndwindspeed` (
  `Station` char(20) NOT NULL,
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `DayNum` int(11) default NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Datee`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmairtemp
CREATE TABLE IF NOT EXISTS `nmairtemp` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmbarompresmax
CREATE TABLE IF NOT EXISTS `nmbarompresmax` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmbarompresmin
CREATE TABLE IF NOT EXISTS `nmbarompresmin` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmbarompressure
CREATE TABLE IF NOT EXISTS `nmbarompressure` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmbateryvoltage
CREATE TABLE IF NOT EXISTS `nmbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmccloudheight
CREATE TABLE IF NOT EXISTS `nmccloudheight` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmcloudcover
CREATE TABLE IF NOT EXISTS `nmcloudcover` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmcloudheight
CREATE TABLE IF NOT EXISTS `nmcloudheight` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmcloudtype
CREATE TABLE IF NOT EXISTS `nmcloudtype` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmdamarea
CREATE TABLE IF NOT EXISTS `nmdamarea` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmdewpoint
CREATE TABLE IF NOT EXISTS `nmdewpoint` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmdircloudy
CREATE TABLE IF NOT EXISTS `nmdircloudy` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmdirgust
CREATE TABLE IF NOT EXISTS `nmdirgust` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmdirwinddom
CREATE TABLE IF NOT EXISTS `nmdirwinddom` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmelecstorm
CREATE TABLE IF NOT EXISTS `nmelecstorm` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmentrance
CREATE TABLE IF NOT EXISTS `nmentrance` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmevaporation
CREATE TABLE IF NOT EXISTS `nmevaporation` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmevappiche
CREATE TABLE IF NOT EXISTS `nmevappiche` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmextraction
CREATE TABLE IF NOT EXISTS `nmextraction` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmextraction2
CREATE TABLE IF NOT EXISTS `nmextraction2` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmfloortemp
CREATE TABLE IF NOT EXISTS `nmfloortemp` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmfog
CREATE TABLE IF NOT EXISTS `nmfog` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmfrost
CREATE TABLE IF NOT EXISTS `nmfrost` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmgeopotheight
CREATE TABLE IF NOT EXISTS `nmgeopotheight` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmgeotemp10
CREATE TABLE IF NOT EXISTS `nmgeotemp10` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmgeotemp20
CREATE TABLE IF NOT EXISTS `nmgeotemp20` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmgeotemp5
CREATE TABLE IF NOT EXISTS `nmgeotemp5` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmgeotemp50
CREATE TABLE IF NOT EXISTS `nmgeotemp50` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmgraphprecip
CREATE TABLE IF NOT EXISTS `nmgraphprecip` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmgustspeed
CREATE TABLE IF NOT EXISTS `nmgustspeed` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmhail
CREATE TABLE IF NOT EXISTS `nmhail` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmheliophany
CREATE TABLE IF NOT EXISTS `nmheliophany` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmhighcloudtype
CREATE TABLE IF NOT EXISTS `nmhighcloudtype` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmhumtemp
CREATE TABLE IF NOT EXISTS `nmhumtemp` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmindcloudcover
CREATE TABLE IF NOT EXISTS `nmindcloudcover` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nminterntemp
CREATE TABLE IF NOT EXISTS `nminterntemp` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmlevel2
CREATE TABLE IF NOT EXISTS `nmlevel2` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmlevel3
CREATE TABLE IF NOT EXISTS `nmlevel3` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmlowcloudtype
CREATE TABLE IF NOT EXISTS `nmlowcloudtype` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmlowmidcloud
CREATE TABLE IF NOT EXISTS `nmlowmidcloud` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmmedcloudy
CREATE TABLE IF NOT EXISTS `nmmedcloudy` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmmidcloudtype
CREATE TABLE IF NOT EXISTS `nmmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmmist
CREATE TABLE IF NOT EXISTS `nmmist` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmnetevap
CREATE TABLE IF NOT EXISTS `nmnetevap` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmnetrad
CREATE TABLE IF NOT EXISTS `nmnetrad` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmnosnowground
CREATE TABLE IF NOT EXISTS `nmnosnowground` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmo2
CREATE TABLE IF NOT EXISTS `nmo2` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmo2mgl
CREATE TABLE IF NOT EXISTS `nmo2mgl` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmpanelvoltage
CREATE TABLE IF NOT EXISTS `nmpanelvoltage` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmph
CREATE TABLE IF NOT EXISTS `nmph` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmpotencialenerv
CREATE TABLE IF NOT EXISTS `nmpotencialenerv` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmprecipitation
CREATE TABLE IF NOT EXISTS `nmprecipitation` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmprecipmax60
CREATE TABLE IF NOT EXISTS `nmprecipmax60` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmpresstime
CREATE TABLE IF NOT EXISTS `nmpresstime` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmpresstrend
CREATE TABLE IF NOT EXISTS `nmpresstrend` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrelhum50
CREATE TABLE IF NOT EXISTS `nmrelhum50` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrelhum80
CREATE TABLE IF NOT EXISTS `nmrelhum80` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrelhum90
CREATE TABLE IF NOT EXISTS `nmrelhum90` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrelhumidity
CREATE TABLE IF NOT EXISTS `nmrelhumidity` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrelhummax
CREATE TABLE IF NOT EXISTS `nmrelhummax` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrelhummed
CREATE TABLE IF NOT EXISTS `nmrelhummed` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrelhummin
CREATE TABLE IF NOT EXISTS `nmrelhummin` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmriverflow
CREATE TABLE IF NOT EXISTS `nmriverflow` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmriverflow2
CREATE TABLE IF NOT EXISTS `nmriverflow2` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmrivervolume
CREATE TABLE IF NOT EXISTS `nmrivervolume` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsaltiness
CREATE TABLE IF NOT EXISTS `nmsaltiness` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsealevelpress
CREATE TABLE IF NOT EXISTS `nmsealevelpress` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsnowdepth
CREATE TABLE IF NOT EXISTS `nmsnowdepth` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsnowonground
CREATE TABLE IF NOT EXISTS `nmsnowonground` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsolarrad
CREATE TABLE IF NOT EXISTS `nmsolarrad` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmspeedwinddom
CREATE TABLE IF NOT EXISTS `nmspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmspillage
CREATE TABLE IF NOT EXISTS `nmspillage` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmspillway
CREATE TABLE IF NOT EXISTS `nmspillway` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmstaticlevel
CREATE TABLE IF NOT EXISTS `nmstaticlevel` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsteamtension
CREATE TABLE IF NOT EXISTS `nmsteamtension` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmstrgvolume
CREATE TABLE IF NOT EXISTS `nmstrgvolume` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsunshine
CREATE TABLE IF NOT EXISTS `nmsunshine` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmsunstroke
CREATE TABLE IF NOT EXISTS `nmsunstroke` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmtempmax
CREATE TABLE IF NOT EXISTS `nmtempmax` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmtempmean
CREATE TABLE IF NOT EXISTS `nmtempmean` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmtempmin
CREATE TABLE IF NOT EXISTS `nmtempmin` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmtempminint
CREATE TABLE IF NOT EXISTS `nmtempminint` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmtimepas1
CREATE TABLE IF NOT EXISTS `nmtimepas1` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmtimepas2
CREATE TABLE IF NOT EXISTS `nmtimepas2` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmturbidity
CREATE TABLE IF NOT EXISTS `nmturbidity` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmvisibility
CREATE TABLE IF NOT EXISTS `nmvisibility` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmvisibilitye
CREATE TABLE IF NOT EXISTS `nmvisibilitye` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmwaterdispon
CREATE TABLE IF NOT EXISTS `nmwaterdispon` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmwaterexit
CREATE TABLE IF NOT EXISTS `nmwaterexit` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmwaterspeed
CREATE TABLE IF NOT EXISTS `nmwaterspeed` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmwatertemp
CREATE TABLE IF NOT EXISTS `nmwatertemp` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmwinddirn
CREATE TABLE IF NOT EXISTS `nmwinddirn` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmwindjourney
CREATE TABLE IF NOT EXISTS `nmwindjourney` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nmwindspeed
CREATE TABLE IF NOT EXISTS `nmwindspeed` (
  `Station` char(20) NOT NULL,
  `Monthh` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Monthh`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsairtemp
CREATE TABLE IF NOT EXISTS `nsairtemp` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsbarompresmax
CREATE TABLE IF NOT EXISTS `nsbarompresmax` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsbarompresmin
CREATE TABLE IF NOT EXISTS `nsbarompresmin` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsbarompressure
CREATE TABLE IF NOT EXISTS `nsbarompressure` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsbateryvoltage
CREATE TABLE IF NOT EXISTS `nsbateryvoltage` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsccloudheight
CREATE TABLE IF NOT EXISTS `nsccloudheight` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nscloudcover
CREATE TABLE IF NOT EXISTS `nscloudcover` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nscloudheight
CREATE TABLE IF NOT EXISTS `nscloudheight` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nscloudtype
CREATE TABLE IF NOT EXISTS `nscloudtype` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsdamarea
CREATE TABLE IF NOT EXISTS `nsdamarea` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsdewpoint
CREATE TABLE IF NOT EXISTS `nsdewpoint` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsdircloudy
CREATE TABLE IF NOT EXISTS `nsdircloudy` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsdirgust
CREATE TABLE IF NOT EXISTS `nsdirgust` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsdirwinddom
CREATE TABLE IF NOT EXISTS `nsdirwinddom` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nselecstorm
CREATE TABLE IF NOT EXISTS `nselecstorm` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsentrance
CREATE TABLE IF NOT EXISTS `nsentrance` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsevaporation
CREATE TABLE IF NOT EXISTS `nsevaporation` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsevappiche
CREATE TABLE IF NOT EXISTS `nsevappiche` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsextraction
CREATE TABLE IF NOT EXISTS `nsextraction` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsextraction2
CREATE TABLE IF NOT EXISTS `nsextraction2` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsfloortemp
CREATE TABLE IF NOT EXISTS `nsfloortemp` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsfog
CREATE TABLE IF NOT EXISTS `nsfog` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsfrost
CREATE TABLE IF NOT EXISTS `nsfrost` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsgeopotheight
CREATE TABLE IF NOT EXISTS `nsgeopotheight` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsgeotemp10
CREATE TABLE IF NOT EXISTS `nsgeotemp10` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsgeotemp20
CREATE TABLE IF NOT EXISTS `nsgeotemp20` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsgeotemp5
CREATE TABLE IF NOT EXISTS `nsgeotemp5` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsgeotemp50
CREATE TABLE IF NOT EXISTS `nsgeotemp50` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsgraphprecip
CREATE TABLE IF NOT EXISTS `nsgraphprecip` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsgustspeed
CREATE TABLE IF NOT EXISTS `nsgustspeed` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nshail
CREATE TABLE IF NOT EXISTS `nshail` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsheliophany
CREATE TABLE IF NOT EXISTS `nsheliophany` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nshighcloudtype
CREATE TABLE IF NOT EXISTS `nshighcloudtype` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nshumtemp
CREATE TABLE IF NOT EXISTS `nshumtemp` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsindcloudcover
CREATE TABLE IF NOT EXISTS `nsindcloudcover` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsinterntemp
CREATE TABLE IF NOT EXISTS `nsinterntemp` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nslevel
CREATE TABLE IF NOT EXISTS `nslevel` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nslevel2
CREATE TABLE IF NOT EXISTS `nslevel2` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nslevel3
CREATE TABLE IF NOT EXISTS `nslevel3` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nslowcloudtype
CREATE TABLE IF NOT EXISTS `nslowcloudtype` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nslowmidcloud
CREATE TABLE IF NOT EXISTS `nslowmidcloud` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsmedcloudy
CREATE TABLE IF NOT EXISTS `nsmedcloudy` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsmidcloudtype
CREATE TABLE IF NOT EXISTS `nsmidcloudtype` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsmist
CREATE TABLE IF NOT EXISTS `nsmist` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsnetevap
CREATE TABLE IF NOT EXISTS `nsnetevap` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsnetrad
CREATE TABLE IF NOT EXISTS `nsnetrad` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsnosnowground
CREATE TABLE IF NOT EXISTS `nsnosnowground` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nso2
CREATE TABLE IF NOT EXISTS `nso2` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nso2mgl
CREATE TABLE IF NOT EXISTS `nso2mgl` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nspanelvoltage
CREATE TABLE IF NOT EXISTS `nspanelvoltage` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsph
CREATE TABLE IF NOT EXISTS `nsph` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nspotencialenerv
CREATE TABLE IF NOT EXISTS `nspotencialenerv` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsprecipitation
CREATE TABLE IF NOT EXISTS `nsprecipitation` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsprecipmax60
CREATE TABLE IF NOT EXISTS `nsprecipmax60` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nspresstime
CREATE TABLE IF NOT EXISTS `nspresstime` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nspresstrend
CREATE TABLE IF NOT EXISTS `nspresstrend` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrelhum50
CREATE TABLE IF NOT EXISTS `nsrelhum50` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrelhum80
CREATE TABLE IF NOT EXISTS `nsrelhum80` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrelhum90
CREATE TABLE IF NOT EXISTS `nsrelhum90` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrelhumidity
CREATE TABLE IF NOT EXISTS `nsrelhumidity` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrelhummax
CREATE TABLE IF NOT EXISTS `nsrelhummax` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrelhummed
CREATE TABLE IF NOT EXISTS `nsrelhummed` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrelhummin
CREATE TABLE IF NOT EXISTS `nsrelhummin` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsriverflow
CREATE TABLE IF NOT EXISTS `nsriverflow` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsriverflow2
CREATE TABLE IF NOT EXISTS `nsriverflow2` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsrivervolume
CREATE TABLE IF NOT EXISTS `nsrivervolume` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssaltiness
CREATE TABLE IF NOT EXISTS `nssaltiness` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssealevelpress
CREATE TABLE IF NOT EXISTS `nssealevelpress` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssnowdepth
CREATE TABLE IF NOT EXISTS `nssnowdepth` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssnowonground
CREATE TABLE IF NOT EXISTS `nssnowonground` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssolarrad
CREATE TABLE IF NOT EXISTS `nssolarrad` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsspeedwinddom
CREATE TABLE IF NOT EXISTS `nsspeedwinddom` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsspillage
CREATE TABLE IF NOT EXISTS `nsspillage` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsspillway
CREATE TABLE IF NOT EXISTS `nsspillway` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsstaticlevel
CREATE TABLE IF NOT EXISTS `nsstaticlevel` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssteamtension
CREATE TABLE IF NOT EXISTS `nssteamtension` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsstrgvolume
CREATE TABLE IF NOT EXISTS `nsstrgvolume` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssunshine
CREATE TABLE IF NOT EXISTS `nssunshine` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nssunstroke
CREATE TABLE IF NOT EXISTS `nssunstroke` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nstempmax
CREATE TABLE IF NOT EXISTS `nstempmax` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nstempmean
CREATE TABLE IF NOT EXISTS `nstempmean` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nstempmin
CREATE TABLE IF NOT EXISTS `nstempmin` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nstempminint
CREATE TABLE IF NOT EXISTS `nstempminint` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nstimepas1
CREATE TABLE IF NOT EXISTS `nstimepas1` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nstimepas2
CREATE TABLE IF NOT EXISTS `nstimepas2` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsturbidity
CREATE TABLE IF NOT EXISTS `nsturbidity` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsvisibility
CREATE TABLE IF NOT EXISTS `nsvisibility` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nsvisibilitye
CREATE TABLE IF NOT EXISTS `nsvisibilitye` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nswaterdispon
CREATE TABLE IF NOT EXISTS `nswaterdispon` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nswaterexit
CREATE TABLE IF NOT EXISTS `nswaterexit` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nswaterspeed
CREATE TABLE IF NOT EXISTS `nswaterspeed` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nswatertemp
CREATE TABLE IF NOT EXISTS `nswatertemp` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nswinddirn
CREATE TABLE IF NOT EXISTS `nswinddirn` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nswindjourney
CREATE TABLE IF NOT EXISTS `nswindjourney` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.nswindspeed
CREATE TABLE IF NOT EXISTS `nswindspeed` (
  `Station` char(20) NOT NULL,
  `Weekk` int(11) NOT NULL,
  `Valuee` double default NULL,
  `CumulValue` double default NULL,
  `MaxValue` double default NULL,
  `MinValue` double default NULL,
  `Median` double default NULL,
  `MeanMaxValue` double default NULL,
  `MeanMinValue` double default NULL,
  `CumulMean` double default NULL,
  `StartYear` int(11) NOT NULL,
  `EndYear` int(11) NOT NULL,
  `MedYear` int(11) default NULL,
  `MaxYear` int(11) default NULL,
  `MinYear` int(11) default NULL,
  `DataNum` int(11) default NULL,
  `NumStns` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Weekk`,`StartYear`,`EndYear`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.proximitycheck
CREATE TABLE IF NOT EXISTS `proximitycheck` (
  `Station` char(20) NOT NULL,
  `Variable` char(15) NOT NULL,
  `Distance` double default NULL,
  `heightdif` double default NULL,
  `StnGroup` char(20) default NULL,
  `changee` double default NULL,
  `intervmins` int(11) default NULL,
  PRIMARY KEY  (`Station`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.recepdefs
CREATE TABLE IF NOT EXISTS `recepdefs` (
  `Optionn` char(15) NOT NULL default '',
  `Name` char(25) NOT NULL default '',
  `StnGroup` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  PRIMARY KEY  (`Optionn`,`Name`,`StnGroup`,`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.recepsdata
CREATE TABLE IF NOT EXISTS `recepsdata` (
  `Optionn` char(15) NOT NULL default '',
  `Name` char(25) NOT NULL default '',
  `StnGroup` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `StnNum` int(11) default NULL,
  `Recvd09` int(11) default NULL,
  `Recvd10` int(11) default NULL,
  `Recvd11` int(11) default NULL,
  `Recvd18` int(11) default NULL,
  `RecvdWeek` int(11) default NULL,
  `RecvdMonth` int(11) default NULL,
  `RecvdYear` int(11) default NULL,
  PRIMARY KEY  (`Optionn`,`Name`,`StnGroup`,`Variable`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.recepsping
CREATE TABLE IF NOT EXISTS `recepsping` (
  `IPDir` char(120) NOT NULL default '',
  `Datee` datetime NOT NULL default '0000-00-00 00:00:00',
  `Mean7` double default NULL,
  `Min7` double default NULL,
  `Max7` double default NULL,
  `Com7` char(40) default NULL,
  `Mean8` double default NULL,
  `Min8` double default NULL,
  `Max8` double default NULL,
  `Com8` char(40) default NULL,
  `Mean9` double default NULL,
  `Min9` double default NULL,
  `Max9` double default NULL,
  `Com9` char(40) default NULL,
  `Mean10` double default NULL,
  `Min10` double default NULL,
  `Max10` double default NULL,
  `Com10` char(40) default NULL,
  `Mean11` double default NULL,
  `Min11` double default NULL,
  `Max11` double default NULL,
  `Com11` char(40) default NULL,
  `Mean12` double default NULL,
  `Min12` double default NULL,
  `Max12` double default NULL,
  `Com12` char(40) default NULL,
  `Mean18` double default NULL,
  `Min18` double default NULL,
  `Max18` double default NULL,
  `Com18` char(40) default NULL,
  PRIMARY KEY  (`IPDir`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.rgnlmanagement
CREATE TABLE IF NOT EXISTS `rgnlmanagement` (
  `RegManagmt` char(5) NOT NULL default '',
  `RegManagmt2` char(20) default NULL,
  `ManagementName` char(150) default NULL,
  PRIMARY KEY  (`RegManagmt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.sources
CREATE TABLE IF NOT EXISTS `sources` (
  `Source` char(10) NOT NULL default '',
  `SourceDescrn` char(150) default NULL,
  PRIMARY KEY  (`Source`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.states
CREATE TABLE IF NOT EXISTS `states` (
  `Statee` char(5) NOT NULL default '',
  `State2` char(20) default NULL,
  `StateName` char(150) default NULL,
  PRIMARY KEY  (`Statee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.stationinstruments
CREATE TABLE IF NOT EXISTS `stationinstruments` (
  `Station` char(20) NOT NULL,
  `Variable` char(15) NOT NULL,
  `StartDate` datetime NOT NULL,
  `Height` double default NULL,
  `type1` char(15) default NULL,
  `Descrn` char(120) default NULL,
  PRIMARY KEY  (`Station`,`Variable`,`StartDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.stationmaps
CREATE TABLE IF NOT EXISTS `stationmaps` (
  `Map` char(30) NOT NULL default '',
  `Station` char(20) NOT NULL default '',
  `Xp` double default NULL,
  `Yp` double default NULL,
  `mapname` char(250) default NULL,
  PRIMARY KEY  (`Map`,`Station`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.stations
CREATE TABLE IF NOT EXISTS `stations` (
  `Station` char(20) NOT NULL default '',
  `StationName` char(150) default NULL,
  `StationName2` char(50) default NULL,
  `TimeZone` char(4) default NULL,
  `Longitude` int(11) default NULL,
  `Latitude` int(11) default NULL,
  `Altitude` double default NULL,
  `Longitude2` double default NULL,
  `Latitude2` double default NULL,
  `DMSlongitude` char(15) default NULL,
  `DMSLatitude` char(15) default NULL,
  `Statee` char(5) default NULL,
  `RegManagmt` char(5) default NULL,
  `Catchment` char(5) default NULL,
  `Subcatchment` char(5) default NULL,
  `OperatnlRegion` char(5) default NULL,
  `HydroReg` char(5) default NULL,
  `RH` char(2) default NULL,
  `Municipality` char(5) default NULL,
  `CodeB` int(11) default NULL,
  `CodeG` char(5) default NULL,
  `CodeCB` char(5) default NULL,
  `CodePB` char(6) default NULL,
  `CodeE` char(5) default NULL,
  `CodeCL` char(5) default NULL,
  `CodeHG` char(5) default NULL,
  `CodePG` char(5) default NULL,
  `CodeNw` char(5) default NULL,
  `Code1` char(5) default NULL,
  `Code2` char(5) default NULL,
  `Code3` char(5) default NULL,
  `MaxOrdStrgLvl` double default NULL,
  `MaxOrdStrgVol` double default NULL,
  `MaxExtStrgLvl` double default NULL,
  `MaxExtStrgVol` double default NULL,
  `SpillwayLevel` double default NULL,
  `SpillwayStorage` double default NULL,
  `FreeSpillwayLevel` double default NULL,
  `FreeSpillwayStorage` double default NULL,
  `DeadStrgLevel` double default NULL,
  `DeadStrgCapac` double default NULL,
  `UsableStorageCapLev` double default NULL,
  `UsableStorage` double default NULL,
  `HoldingStorage` double default NULL,
  `Key1fil` char(5) default NULL,
  `Key2fil` char(5) default NULL,
  `Key3fil` char(5) default NULL,
  `CritLevelSta` double default NULL,
  `MinLevelSta` double default NULL,
  `MaxLevelSta` double default NULL,
  `CritFlow` double default NULL,
  `MinDischarge` double default NULL,
  `MaxDischarge` double default NULL,
  `Stream` char(20) default NULL,
  `Distance` double default NULL,
  `Infrastructure` char(20) default NULL,
  `Type` char(20) default NULL,
  `Usee` char(15) default NULL,
  PRIMARY KEY  (`Station`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.stngroups
CREATE TABLE IF NOT EXISTS `stngroups` (
  `StnGroup` char(20) NOT NULL default '',
  `Sequen` int(11) NOT NULL default '0',
  `Station` char(20) default NULL,
  PRIMARY KEY  (`StnGroup`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.subcatchments
CREATE TABLE IF NOT EXISTS `subcatchments` (
  `Subcatchment` char(5) NOT NULL default '',
  `Subcatchment2` char(20) default NULL,
  `SubCatchmentName` char(150) default NULL,
  PRIMARY KEY  (`Subcatchment`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.synopcrexdata
CREATE TABLE IF NOT EXISTS `synopcrexdata` (
  `elemento` char(6) NOT NULL,
  `Unit` char(20) NOT NULL,
  `Width` int(11) NOT NULL default '1',
  `escala` int(11) NOT NULL default '0',
  `Description` char(120) NOT NULL,
  PRIMARY KEY  (`elemento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.synopcrextempl
CREATE TABLE IF NOT EXISTS `synopcrextempl` (
  `template` char(6) NOT NULL,
  `Sequen` int(11) NOT NULL,
  `elemento` char(6) NOT NULL,
  PRIMARY KEY  (`template`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.synopmessages
CREATE TABLE IF NOT EXISTS `synopmessages` (
  `Station` char(20) NOT NULL default '',
  `Datee` datetime NOT NULL default '1901-01-01 00:00:00',
  `Codee` char(10) default NULL,
  `Message` text,
  PRIMARY KEY  (`Station`,`Datee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.timezones
CREATE TABLE IF NOT EXISTS `timezones` (
  `TimeZone` char(4) NOT NULL default '',
  `Description` char(100) default NULL,
  `HoursToUTC` double default NULL,
  `SummerTime` int(11) default NULL,
  PRIMARY KEY  (`TimeZone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.transfvariables
CREATE TABLE IF NOT EXISTS `transfvariables` (
  `Station` char(20) NOT NULL default '',
  `Variable` char(15) NOT NULL default '',
  `StartDate` datetime NOT NULL default '1901-01-01 00:00:00',
  `Adjust1` double NOT NULL default '0',
  `Adjust2` double NOT NULL default '0',
  `ConvVariable1` char(20) default NULL,
  `ConvTable1` char(15) default NULL,
  `ConvVariable2` char(20) default NULL,
  `ConvTable2` char(15) default NULL,
  `ConvVariable3` char(20) default NULL,
  `ConvTable3` char(15) default NULL,
  `ConvVariable4` char(20) default NULL,
  `ConvTable4` char(15) default NULL,
  PRIMARY KEY  (`Station`,`Variable`,`StartDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.transmch2mch
CREATE TABLE IF NOT EXISTS `transmch2mch` (
  `TransOption` char(30) NOT NULL default '',
  `StnGroup` char(20) NOT NULL default '',
  `Sequence` int(11) NOT NULL default '0',
  `Variable` char(15) default NULL,
  `Type` char(2) default NULL,
  `Enabled` char(2) default NULL,
  PRIMARY KEY  (`TransOption`,`StnGroup`,`Sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.units
CREATE TABLE IF NOT EXISTS `units` (
  `Unit` char(10) NOT NULL default '',
  `UnitDescription` char(60) default NULL,
  PRIMARY KEY  (`Unit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.users
CREATE TABLE IF NOT EXISTS `users` (
  `Userr` char(20) NOT NULL default '',
  `Name` char(60) default NULL,
  `Password` char(30) default NULL,
  `UserType` int(11) default NULL,
  `StnGroup` char(20) default NULL,
  PRIMARY KEY  (`Userr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.usertypes
CREATE TABLE IF NOT EXISTS `usertypes` (
  `UserType` int(11) NOT NULL default '0',
  `TypeName` char(50) default NULL,
  `TypeDescrn` char(150) default NULL,
  PRIMARY KEY  (`UserType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.variables
CREATE TABLE IF NOT EXISTS `variables` (
  `Variable` char(15) NOT NULL default '',
  `VariabAbbrev` char(4) default NULL,
  `VariabDescrn` char(150) default NULL,
  `TableName` char(15) default NULL,
  `Unit` char(10) default NULL,
  `TypeDDorDE` char(2) default NULL,
  `CumulType` char(4) default NULL,
  `NbrDecimal` int(11) default NULL,
  `CalcbyGrp` char(8) default NULL,
  `CalcDTaD` char(8) default NULL,
  PRIMARY KEY  (`Variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.variablestationtype
CREATE TABLE IF NOT EXISTS `variablestationtype` (
  `StationType` char(15) NOT NULL,
  `Sequen` int(11) NOT NULL,
  `Variable` char(15) default NULL,
  PRIMARY KEY  (`StationType`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.webconsttables
CREATE TABLE IF NOT EXISTS `webconsttables` (
  `QryOption` char(15) NOT NULL default '',
  `Optionn` char(15) default NULL,
  `Variable` char(15) default NULL,
  `Description` char(150) default NULL,
  `StartDate` datetime default NULL,
  `EndDate` datetime default NULL,
  `HtmlName` char(40) default NULL,
  `WithExtremes` char(2) default NULL,
  `WithNumData` char(2) default NULL,
  `DSN` char(15) default NULL,
  `HTMLDirect` char(250) default NULL,
  `PrevMsg` char(60) default NULL,
  `NextMsg` char(60) default NULL,
  PRIMARY KEY  (`QryOption`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.webcounters
CREATE TABLE IF NOT EXISTS `webcounters` (
  `Program` char(30) NOT NULL default '',
  `Userr` char(50) NOT NULL default '',
  `ProcType` char(20) NOT NULL default '',
  `ProcOption` char(20) NOT NULL default '',
  `Meter` int(11) default NULL,
  PRIMARY KEY  (`Program`,`Userr`,`ProcType`,`ProcOption`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.webdeftables
CREATE TABLE IF NOT EXISTS `webdeftables` (
  `Optionn` char(15) NOT NULL default '',
  `Sequen` int(11) NOT NULL default '0',
  `StnGroup` char(20) default NULL,
  `Image` char(250) default NULL,
  `Description` char(150) default NULL,
  PRIMARY KEY  (`Optionn`,`Sequen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla mcheng.webproclog
CREATE TABLE IF NOT EXISTS `webproclog` (
  `Meter` int(11) NOT NULL auto_increment,
  `Program` char(20) default NULL,
  `Userr` char(50) default NULL,
  `ProcType` char(20) default NULL,
  `ProcOption` char(15) default NULL,
  `DateTimee` datetime default NULL,
  PRIMARY KEY  (`Meter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
