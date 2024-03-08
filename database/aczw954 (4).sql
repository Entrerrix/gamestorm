-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2020 a las 11:25:34
-- Versión del servidor: 5.1.73
-- Versión de PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `aczw954`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Client`
--

CREATE TABLE IF NOT EXISTS `Client` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `PhoneNo` varchar(45) NOT NULL,
  `MembershipNo` int(45) NOT NULL,
  `Creationdate` varchar(45) NOT NULL,
  `Modificationdate` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `Client`
--

INSERT INTO `Client` (`ID`, `Name`, `Surname`, `Email`, `PhoneNo`, `MembershipNo`, `Creationdate`, `Modificationdate`) VALUES
(1, 'Name', 'Owen', 'wp1.@gmail.com', '7707453457', 363, '2006/09/12', '2015/06/21'),
(2, 'Artemis', 'Cook', 'art3mis@gmail.com', '7700900678', 364, '2006/09/12', '2014/02/01'),
(3, 'Anorak', 'Halliday', 'anorak@gmail.com', '7700900715', 369, '2006/09/12', '2016/08/15'),
(4, 'Odgen', 'Morrow', 'omg.@gmail.com', '7700900083', 453, '2007/01/07', '2010/01/08'),
(5, 'Harris', 'Malone', 'hmalone@gmail.com', '7700900952', 489, '2008/02/10', '2012/06/26'),
(6, 'Aech', 'knowles', 'aechw.@gmailcom', '7700900593', 501, '2008/10/01', '2013/05/11'),
(7, 'Daito', 'Tobirama', 'dt.tobirama@gmail.com', '7700900879', 532, '2009/03/22', '2013/04/09'),
(17, 'Rebel', 'William', 'Rebel.wm@gmail.com', '7700900905', 676, '2011/07/05', '2012/10/12'),
(10, 'Milo', 'Karatsu', 'ml.atsu@gmail.com', '7700900919', 562, '2009/12/10', '2017/05/22'),
(11, 'Shoto', 'Yoshiaki', 'sh.yoshi@gmail.com', '7700900511', 589, '2010/08/15', '2017/07/02'),
(12, 'Nolan', 'Sorrento', 'sorrento.n@gmail.com', '7700900951', 606, '2010/11/17', '2014/06/22'),
(13, 'Zandor', 'Fnale', 'zd.fnale@gmail.com', '7700900681', 610, '2010/12/07', '2017/10/11'),
(14, 'Kira', 'Underwood', 'kirawood@gmail.com', '7700900407', 624, '2011/01/19', '2017/09/25'),
(15, 'Alice', 'Lynch', 'lynchalice@gmail.com', '7700900551', 644, '2011/03/11', '2018/09/16'),
(16, 'Helen', 'Smith', 'helensm@gmail.com', '7700900367', 666, '2011/03/29', '2018/06/02'),
(18, 'Rick', 'Martinez', 'r.martinez@gmail.com', '7700900232', 707, '2012/08/10', '2019/09/13'),
(19, 'Christopher', 'Nolan', 'nolanchris@gmail.com', '7700900456', 759, '2012/12/07', '2019/12/01'),
(20, 'Bill', 'Murray', 'b.murray@gmail.com', '7700900692', 777, '2013/01/07', '2015/10/07'),
(21, 'Emma', 'Watson', 'emma.wt@gmail.com', '7700900892', 779, '2013/01/21', '2016/04/01'),
(22, 'Clint', 'Eastwood', 'Eastwood.clint@gmail.com', '7700900878', 799, '2013/03/20', '2016/02/11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Invoice`
--

CREATE TABLE IF NOT EXISTS `Invoice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PurchaseID` int(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Payment_item` int(45) NOT NULL,
  `VatNo` int(45) NOT NULL,
  `Vat` int(45) NOT NULL,
  `Total_without_vat` int(45) NOT NULL,
  `Total` int(45) NOT NULL,
  `Creationdate` varchar(45) NOT NULL,
  `Modificationdate` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PurchaseID` (`PurchaseID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `Invoice`
--

INSERT INTO `Invoice` (`ID`, `PurchaseID`, `Type`, `Payment_item`, `VatNo`, `Vat`, `Total_without_vat`, `Total`, `Creationdate`, `Modificationdate`) VALUES
(2, 1, 'Standard', 30, 1, 5, 25, 30, '2019/02/02', '2019/11/01'),
(3, 2, 'Standard', 56, 2, 9, 47, 56, '2019/04/01', '2019/11/03'),
(4, 3, 'Standard', 34, 3, 6, 28, 34, '2019/05/16', '2019/11/03'),
(5, 4, 'Standard', 20, 4, 3, 17, 20, '2019/06/18', '2019/11/05'),
(6, 5, 'Standard', 60, 5, 10, 50, 60, '2019/06/19', '2019/11/10'),
(7, 6, 'Standard', 20, 6, 3, 17, 20, '2019/07/22', '2019/11/14'),
(8, 7, 'Standard', 55, 7, 9, 46, 55, '2019/07/23', '2019/12/02'),
(9, 8, 'Standard', 35, 8, 6, 29, 35, '2019/07/25', '2019/12/19'),
(10, 9, 'Standard', 56, 9, 9, 47, 56, '2019/08/28', '2019/12/25'),
(11, 10, 'Standard', 44, 10, 7, 37, 44, '2019/08/29', '2019/12/25'),
(12, 11, 'Standard', 40, 11, 7, 33, 40, '2019/08/15', '2020/01/07'),
(13, 12, 'Standard', 30, 12, 5, 25, 30, '2019/09/17', '2020/01/10'),
(14, 13, 'Standard', 20, 13, 3, 17, 20, '2019/09/19', '2020/01/16'),
(15, 14, 'Standard', 44, 14, 7, 37, 44, '2019/09/20', '2020/02/18'),
(16, 15, 'Standard', 55, 15, 9, 46, 55, '2019/09/24', '2020/02/01'),
(17, 16, 'Standard', 56, 16, 9, 47, 56, '2019/10/24', '2020/02/07'),
(18, 17, 'Standard', 35, 17, 6, 29, 35, '2019/10/26', '2020/02/16'),
(19, 18, 'Standard', 57, 18, 10, 48, 57, '2019/10/26', '2020/02/22'),
(20, 19, 'Standard', 60, 19, 10, 50, 60, '2019/10/28', '2020/02/22'),
(21, 20, 'Standard', 45, 20, 8, 38, 45, '2019/10/29', '2020/02/24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Product`
--

CREATE TABLE IF NOT EXISTS `Product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Platform` varchar(45) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  `Rank` int(45) NOT NULL,
  `Image` varchar(45) DEFAULT NULL,
  `Narrative` varchar(45) DEFAULT NULL,
  `Stock_quantity` int(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Discount` varchar(45) NOT NULL,
  `Barcode` varchar(45) NOT NULL,
  `Company` varchar(45) NOT NULL,
  `Creationdate` varchar(45) NOT NULL,
  `Modificationdate` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `Product`
--

INSERT INTO `Product` (`ID`, `Name`, `Type`, `Platform`, `Genre`, `Rank`, `Image`, `Narrative`, `Stock_quantity`, `Price`, `Discount`, `Barcode`, `Company`, `Creationdate`, `Modificationdate`) VALUES
(8, 'The Legend of Zelda', 'Game', 'Switch', 'RPG', 98, 'zelda', NULL, 56, '60', 'Not discount', 'A-0300-Z', 'Nintendo', '2019/05/16', '2019/11/03'),
(6, 'Fifa 2020', 'Game', 'PS4', 'Sport', 92, 'fifa', NULL, 62, '45', '5%', 'A-0010-Z', 'EA Sport', '2019/07/22', '2019/11/14'),
(9, 'Dragon Ball Z:Kakarot', 'Game', 'PS4', 'Adventure', 87, 'kakarot', NULL, 70, '30', '15%', 'J-0610-S', 'NAMCO', '2019/02/02', '2019/11/01'),
(10, 'New Super Mario Bros', 'Game', 'Switch', 'Scrolling Platform', 90, 'mario', NULL, 61, '40', '3%', 'F-0100-D', 'Nintendo', '2019/06/18', '2019/11/05'),
(11, 'Sonic Mania', 'Game', 'Xbox', 'Scrolling Platform', 93, 'sonic', NULL, 66, '60', 'Not discount', 'H-0545-I', 'Sega', '2019/04/01', '2019/11/03'),
(12, 'Pokemons Sword', 'Game', 'Switch', 'RPG', 88, 'pokemon', NULL, 33, '64', 'Not discount', 'T-0220-M', 'Nintendo', '2019/06/19', '2019/11/10'),
(13, 'Dark Souls III', 'Game', 'PS4', 'RPG', 94, 'soul', NULL, 32, '34', '10%', 'M-0055-N', 'FromSoftware', '2019/05/16', '2019/11/03'),
(14, 'Uncharted 4', 'Game', 'PS4', 'Adventure', 92, 'uncharted', NULL, 42, '25', 'Not discount', 'A-0032-C', 'Naugthy Dog', '2019/07/22', '2019/11/14'),
(27, 'Playstation 4', 'Console', 'PS4', 'PS4', 97, 'play', NULL, 30, '250', 'Not discount', '0312-9478', 'Sony', '2019/04/01', '2019/11/03'),
(16, 'Metal Gear Survive', 'Game', 'PS4', 'Shooter', 87, 'mtgs', NULL, 41, '20', '5%', 'B-0060-G', 'Konami', '2019/06/18', '2019/11/05'),
(17, 'God of War', 'Game', 'PS4', 'Action', 95, 'kratos', NULL, 51, '44', '10%', 'M-0320-T', 'SIE S.Monica', '2019/07/23', '2019/12/02'),
(18, 'Super Smash Bros Ultimate', 'Game', 'Switch', 'Fighting', 90, 'smash', NULL, 26, '45', 'Not discount', 'A-0150-Z', 'Nintendo', '2019/06/19', '2019/11/10'),
(19, 'Final Fantasy VII', 'Game', 'PS4', 'RPG', 99, 'ff7', NULL, 45, '55', '25%', 'D-0890-J', 'Square Enix', '2019/02/02', '2019/11/01'),
(20, 'Mario Kart 8', 'Game', 'Switch', 'Racing', 95, 'kart', NULL, 35, '64', 'Not discount', 'B-0010-V', 'Nintendo', '2019/07/22', '2019/11/14'),
(21, 'GTA V', 'Game', 'Xbox', 'Shooter', 95, 'gta', NULL, 35, '64', 'Not discount', 'J-0010-K', 'Rockstar', '2019/04/01', '2019/11/03'),
(22, 'Castlevania Lord of Shadow', 'Game', 'Xbox', 'Action', 97, 'castlevania', NULL, 25, '55', '5%', 'O-0110-P', 'Mercury Steam', '2019/07/23', '2019/12/02'),
(23, 'The last of us II', 'Game', 'PS4', 'Action', 97, 'lastofus', NULL, 67, '35', '15%', 'G-0410-M', 'Naugthy Dog', '2019/05/16', '2019/11/03'),
(24, 'Ori and the will of the Wisps', 'Game', 'Xbox', 'Platform', 92, 'ori', NULL, 48, '35', '15%', 'G-0410-M', 'Moon Studios', '2019/02/02', '2019/11/01'),
(25, 'XboxOne', 'Console', 'Xbox', 'Xbox', 95, 'xbo', NULL, 32, '250', 'Not discount', '0123-4567', 'Microsoft', '2019/05/18', '2019/11/05'),
(26, 'Switch', 'Console', 'Nintendo', 'Nintendo', 94, 'switch', NULL, 35, '200', 'Not discount', '0765-6644', 'Nintendo', '2019/06/19', '2019/11/10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Purchase`
--

CREATE TABLE IF NOT EXISTS `Purchase` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StaffID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `Total` int(45) NOT NULL,
  `Total_with_discount` int(45) NOT NULL,
  `Total_not_discount` int(45) NOT NULL,
  `Payment_method` varchar(45) NOT NULL,
  `Creationdate` varchar(45) NOT NULL,
  `Modificationdate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `StaffID` (`StaffID`),
  KEY `ClientID` (`ClientID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `Purchase`
--

INSERT INTO `Purchase` (`ID`, `StaffID`, `ClientID`, `Total`, `Total_with_discount`, `Total_not_discount`, `Payment_method`, `Creationdate`, `Modificationdate`) VALUES
(1, 1, 12, 30, 0, 30, 'Cash', '2019/02/02', '2019/11/01'),
(2, 2, 9, 56, 0, 56, 'Card', '2019/04/01', '2019/11/03'),
(3, 11, 3, 34, 0, 34, 'Cash', '2019/05/16', '2019/11/03'),
(4, 14, 4, 20, 0, 20, 'Cash', '2019/06/18', '2019/11/05'),
(5, 12, 5, 60, 0, 60, 'Card', '2019/06/19', '2019/11/10'),
(7, 12, 6, 20, 0, 20, 'Cash', '2019/07/22', '2019/11/14'),
(8, 13, 7, 55, 0, 55, 'Cash', '2019/07/23', '2019/12/02'),
(9, 15, 9, 56, 0, 56, 'Cash', '2019/04/01', '2019/11/03'),
(10, 14, 8, 35, 0, 35, 'Card', '2019/02/02', '2019/11/01'),
(11, 15, 10, 44, 0, 44, 'Card', '2019/05/16', '2019/11/03'),
(13, 12, 11, 40, 0, 40, 'Card', '2019/06/18', '2019/11/05'),
(14, 9, 12, 30, 0, 30, 'Card', '2019/06/19', '2019/11/10'),
(15, 9, 13, 20, 0, 20, 'Cash', '2019/07/22', '2019/11/14'),
(16, 11, 14, 44, 0, 44, 'Cash', '2019/07/23', '2019/12/02'),
(17, 9, 15, 55, 0, 55, 'Cash', '2019/02/02', '2019/11/01'),
(18, 10, 16, 56, 0, 56, 'Cash', '2019/04/01', '2019/11/03'),
(19, 10, 17, 35, 0, 35, 'Card', '2019/05/16', '2019/11/03'),
(20, 12, 18, 57, 0, 57, 'Cash', '2019/06/18', '2019/11/05'),
(21, 14, 19, 60, 0, 60, 'Card', '2019/06/19', '2019/11/10'),
(22, 12, 20, 45, 0, 45, 'Card', '2019/07/22', '2019/11/14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Purchase_item`
--

CREATE TABLE IF NOT EXISTS `Purchase_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(45) NOT NULL,
  `PurchaseID` int(45) NOT NULL,
  `Quantity` int(45) NOT NULL,
  `Price_unit` int(45) NOT NULL,
  `Discount` int(45) NOT NULL,
  `Total` int(45) NOT NULL,
  `Creationdate` varchar(45) NOT NULL,
  `Modificationdate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ProductID` (`ProductID`),
  KEY `PurchaseID` (`PurchaseID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `Purchase_item`
--

INSERT INTO `Purchase_item` (`ID`, `ProductID`, `PurchaseID`, `Quantity`, `Price_unit`, `Discount`, `Total`, `Creationdate`, `Modificationdate`) VALUES
(1, 642, 1, 1, 30, 5, 26, '2019/02/02', '2019/11/01'),
(2, 787, 2, 1, 56, 0, 56, '2019/04/01', '2019/11/03'),
(3, 792, 3, 3, 34, 10, 92, '2019/05/16', '2019/11/03'),
(4, 820, 4, 1, 20, 1, 19, '2019/06/18', '2019/11/05'),
(5, 845, 5, 1, 60, 0, 60, '2019/06/19', '2019/11/10'),
(6, 899, 6, 2, 20, 0, 40, '2019/07/22', '2019/11/14'),
(7, 966, 7, 5, 55, 14, 261, '2019/07/23', '2019/12/02'),
(8, 1190, 8, 1, 35, 5, 30, '2019/02/02', '2019/11/01'),
(9, 6, 9, 1, 56, 0, 56, '2019/04/01', '2019/11/03'),
(10, 603, 10, 1, 44, 0, 44, '2019/05/16', '2019/11/03'),
(11, 705, 11, 6, 40, 7, 233, '2019/06/18', '2019/11/05'),
(12, 790, 12, 1, 30, 0, 30, '2019/06/19', '2019/11/10'),
(13, 807, 13, 2, 20, 0, 40, '2019/07/22', '2019/11/14'),
(14, 830, 14, 2, 44, 9, 79, '2019/07/23', '2019/12/02'),
(15, 890, 15, 1, 55, 14, 41, '2019/02/02', '2019/11/01'),
(16, 915, 16, 2, 56, 0, 112, '2019/04/01', '2019/11/03'),
(17, 1001, 17, 3, 35, 16, 89, '2019/05/16', '2019/11/03'),
(18, 5, 18, 4, 57, 0, 228, '2019/05/18', '2019/11/05'),
(19, 15, 19, 5, 60, 0, 300, '2019/06/19', '2019/11/10'),
(20, 505, 20, 6, 45, 2, 268, '2019/07/22', '2019/11/14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Staff`
--

CREATE TABLE IF NOT EXISTS `Staff` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Surname` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `PhoneNo` int(45) NOT NULL,
  `Position` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `Staff`
--

INSERT INTO `Staff` (`ID`, `Name`, `Surname`, `Address`, `Email`, `PhoneNo`, `Position`, `Status`) VALUES
(23, 'Shadow', 'Moon', '54 Richmond Road London', 'sh.moon@gmail.com', 2079460330, 'General Manager', 'Operative'),
(24, 'Laura', 'Moon', '54 Richmond Road London', 'la.moon@gmail.com', 2098458454, 'Accountant', 'Operative'),
(25, 'Mr. Od', 'Wednesday', '15 Treby Street London', 'mr.wednesday@gmail.com', 2083458921, 'Area Manager', 'Operative'),
(26, 'Samantha', 'Black', '80 Kingsway Street London', 'sammyblack@gmail.com', 2061984567, 'Area Manager', 'Operative'),
(27, 'Chad', 'Mulligan', '59 Queensway Street London', 'ch.mulligan@gmail.com', 2066533290, 'Supervisor', 'Holidays'),
(28, 'Lowkey', 'Lyesmith', '325 St. Johns Road London', 'lokey.lym@gmail.com', 2077778909, 'Accountant', 'Operative'),
(29, 'Cathie', 'Bast', '25 St. Road London', 'cth.bast@gmail.com', 2000932454, 'Supervisor', 'Operative'),
(30, 'Horus', 'Vengenful', '91 West. Street Road London', 'hr.vg@gmail.com', 2099980542, 'Project Manager', 'Operative'),
(31, 'Elvis', 'Alvis', '18 Murray Square Road London', 'elvis.av@gmail.com', 2099908731, 'Sales Assistant', 'Operative'),
(32, 'Chris', 'Media', '7 Privet Drive London', 'chris.media@gmail.com', 2000777891, 'Sales Assistant', 'Operative'),
(33, 'Mr. Tadeus', 'World', '33 Moonlight Road London', 'mr.world@gmail.com', 2066608912, 'Sales Assistant', 'Sick'),
(34, 'Jinn', 'Brown', '12 Whitechapel Road London', 'jn.brown@gmail.com', 2033897345, 'Sales Assistant', 'Operative'),
(35, 'Gwydion', 'Snow', '5 Baker Street London', 'gwy.snow@gmail.com', 2099341988, 'Sales Assistant', 'Operative'),
(36, 'John', 'Chapman', '14 Camden Town London', 'john.chapman@gmail.com', 2007707325, 'Sales Assistant', 'Training'),
(37, 'Mad', 'Sweeny', '34 West Street London', 'madsw@gmail.com', 2011145687, 'Sales Assistant', 'Training');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
