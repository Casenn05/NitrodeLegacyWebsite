-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: fdb21.awardspace.net
-- Generation Time: Sep 18, 2022 at 11:44 PM
-- Server version: 5.7.20-log
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3335699_nitrode`
--
CREATE DATABASE IF NOT EXISTS `3335699_nitrode` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `3335699_nitrode`;

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `assettype` int(11) NOT NULL,
  `asset` longblob,
  `creatorid` int(11) NOT NULL,
  `creatorusername` text NOT NULL,
  `isapproved` int(11) NOT NULL,
  `isbanned` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE `ban` (
  `type` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  `reviewed` datetime NOT NULL,
  `banends` datetime NOT NULL,
  `banneduserid` int(11) NOT NULL,
  `moduserid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `ID` int(11) NOT NULL,
  `title` text NOT NULL,
  `username` text NOT NULL,
  `wholepost` longtext NOT NULL,
  `thumbnail` longblob NOT NULL,
  `posteruserid` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catalogitem`
--

CREATE TABLE `catalogitem` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `created` date NOT NULL,
  `assetlink` longtext NOT NULL,
  `ntprice` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `creatorid` int(11) NOT NULL,
  `creatorusername` text NOT NULL,
  `render` text NOT NULL,
  `3drender` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inassetapproval`
--

CREATE TABLE `inassetapproval` (
  `1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invite_codes`
--

CREATE TABLE `invite_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `uses` int(11) NOT NULL,
  `max_uses` int(11) NOT NULL,
  `usercreated` text NOT NULL,
  `usercreatorid` int(11) NOT NULL,
  `usedby` text NOT NULL,
  `usedbyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `placefile` longblob NOT NULL,
  `players` int(11) NOT NULL,
  `servers` int(11) NOT NULL,
  `clientversion` int(11) NOT NULL,
  `placethumbnail1` longblob NOT NULL,
  `placethumbnail2` longblob NOT NULL,
  `playersonline` int(11) NOT NULL,
  `placename` text NOT NULL,
  `placedescription` text NOT NULL,
  `placecreatorname` text NOT NULL,
  `placecreatorid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `serverid` bigint(11) NOT NULL,
  `IP` text NOT NULL,
  `Port` int(11) NOT NULL,
  `Servername` text NOT NULL,
  `des` text NOT NULL,
  `playersonline` int(11) NOT NULL,
  `clientversion` int(11) NOT NULL DEFAULT '2011',
  `hoster` text NOT NULL,
  `id` int(11) NOT NULL,
  `hostingtoken` bigint(20) NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userfriends`
--

CREATE TABLE `userfriends` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userinventory`
--

CREATE TABLE `userinventory` (
  `userid` int(11) NOT NULL,
  `stuff` text NOT NULL,
  `asset` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userreports`
--

CREATE TABLE `userreports` (
  `1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `TK` int(255) NOT NULL DEFAULT '15',
  `rank` int(11) NOT NULL,
  `banreason` text NOT NULL,
  `isbanned` int(11) NOT NULL,
  `banneduntil` datetime NOT NULL,
  `bannedreview` datetime NOT NULL,
  `blurb` text NOT NULL,
  `bodycolors` longtext NOT NULL,
  `render` text NOT NULL,
  `ranktag` text NOT NULL,
  `userfriends` int(11) NOT NULL,
  `status` text NOT NULL,
  `renderlink` text,
  `render2` text NOT NULL,
  `headcolor` int(11) NOT NULL DEFAULT '1025',
  `leftarmcolor` int(11) DEFAULT '1025',
  `rightarmcolor` int(11) NOT NULL DEFAULT '1025',
  `torsocolor` int(11) NOT NULL DEFAULT '104',
  `leftlegcolor` int(11) NOT NULL DEFAULT '28',
  `rightlegcolor` int(11) NOT NULL DEFAULT '28',
  `xml` varchar(1) NOT NULL DEFAULT '?',
  `face` text NOT NULL,
  `head` text NOT NULL,
  `hat1` text NOT NULL,
  `hat2` text NOT NULL,
  `hat3` text NOT NULL,
  `hat4` text NOT NULL,
  `hat5` text NOT NULL,
  `shirt` text NOT NULL,
  `pants` text NOT NULL,
  `tshirt` text NOT NULL,
  `gear1` text NOT NULL,
  `gear2` text NOT NULL,
  `package` text NOT NULL,
  `3drender` text NOT NULL,
  `discordlink` text NOT NULL,
  `email` text NOT NULL,
  `corescripts` int(11) NOT NULL,
  `vipfeatures` int(11) NOT NULL,
  `betafeatures` int(11) NOT NULL,
  `theme` int(11) NOT NULL,
  `citrodelink` text NOT NULL,
  `renderchar` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `catalogitem`
--
ALTER TABLE `catalogitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invite_codes`
--
ALTER TABLE `invite_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`serverid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `points` (`TK`),
  ADD KEY `rank` (`rank`),
  ADD KEY `rank_2` (`rank`),
  ADD KEY `points_2` (`TK`,`rank`),
  ADD KEY `TK` (`TK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `server`
--
ALTER TABLE `server`
  MODIFY `serverid` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
