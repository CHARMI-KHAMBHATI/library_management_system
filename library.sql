-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 12:38 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_copies`
--

CREATE TABLE `book_copies` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `no_of_copies` int(11) NOT NULL,
  `no_of_issued` int(11) NOT NULL,
  `no_of_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_copies`
--

INSERT INTO `book_copies` (`id`, `bid`, `no_of_copies`, `no_of_issued`, `no_of_available`) VALUES
(1, 1, 7, 0, 7),
(2, 2, 12, 1, 11),
(3, 5, 4, 0, 4),
(4, 6, 4, 0, 4),
(5, 7, 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `bid` int(11) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `bauthor` varchar(2000) NOT NULL,
  `bpublisher` varchar(500) NOT NULL,
  `bedition` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`bid`, `bname`, `bauthor`, `bpublisher`, `bedition`) VALUES
(1, 'Harry potter and chamber of secrets', 'J K rowling', 'xyz', '1'),
(2, 'harry potter and the goblet of fire', 'J K rowling', 'xyw', '2'),
(5, 'wings of fire', 'APJ Abdulkalam Azad', 'bjdvz', '1'),
(6, 'Malgudi Days', 'R K Narayan', 'lds', '5'),
(7, 'MAdhushala', 'Harivanshrai Bacchan', 'bjsk', '3');

-- --------------------------------------------------------

--
-- Table structure for table `issue_details`
--

CREATE TABLE `issue_details` (
  `iid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `STUDENTID` varchar(50) NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_details`
--

INSERT INTO `issue_details` (`iid`, `bid`, `STUDENTID`, `issue_date`, `return_date`) VALUES
(1, 2, 'u15', '2018-03-20', '2018-03-27'),
(7, 7, 'u15', '2018-03-20', '2018-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `STUDENTID` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`STUDENTID`, `NAME`, `USERNAME`, `PASSWORD`) VALUES
('167', 'ayu', 'ayu', '123'),
('u15', 'chk', 'chk', '123'),
('uu15', 'chk', 'chk', '123'),
('yu8', 'charmi', 'charu', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_copies`
--
ALTER TABLE `book_copies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `issue_details`
--
ALTER TABLE `issue_details`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`STUDENTID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_copies`
--
ALTER TABLE `book_copies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issue_details`
--
ALTER TABLE `issue_details`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
