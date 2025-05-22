-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 10:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stage_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'John Smith', 'john.smith@example.com', 'Hello, I would like to inquire about your services.', '2023-01-15 08:30:22'),
(2, 'Emily Johnson', 'emily.j@example.com', 'Do you offer international shipping?', '2023-01-16 13:15:33'),
(3, 'Michael Brown', 'michael.b@example.com', 'I need help with my recent order #12345.', '2023-01-17 10:45:10'),
(4, 'Sarah Williams', 'sarah.w@example.com', 'Your website is not loading properly on my phone.', '2023-01-18 15:20:45'),
(5, 'David Jones', 'david.j@example.com', 'When will the new collection be available?', '2023-01-19 09:05:12'),
(6, 'Jessica Garcia', 'jessica.g@example.com', 'I love your products! Do you have a loyalty program?', '2023-01-20 12:40:18'),
(7, 'Robert Miller', 'robert.m@example.com', 'Technical question about product specifications.', '2023-01-21 14:25:30'),
(8, 'Jennifer Davis', 'jennifer.d@example.com', 'Request for bulk order discount information.', '2023-01-22 11:10:42'),
(9, 'Thomas Wilson', 'thomas.w@example.com', 'Complaint about delayed delivery.', '2023-01-23 08:55:15'),
(10, 'Lisa Martinez', 'lisa.m@example.com', 'Suggestion for new product features.', '2023-01-24 16:30:28'),
(11, 'James Anderson', 'james.a@example.com', 'Request for refund for order #67890.', '2023-01-25 13:15:37'),
(12, 'Nancy Taylor', 'nancy.t@example.com', 'Question about return policy.', '2023-01-26 09:50:23'),
(13, 'Daniel Thomas', 'daniel.t@example.com', 'Feedback about customer service experience.', '2023-01-27 07:35:19'),
(14, 'Karen White', 'karen.w@example.com', 'Inquiry about partnership opportunities.', '2023-01-28 15:20:44'),
(15, 'Paul Harris', 'paul.h@example.com', 'Report of a bug in your mobile app.', '2023-01-29 10:05:52'),
(16, 'Maria Martin', 'maria.m@example.com', 'Request for product customization options.', '2023-01-30 12:50:26'),
(17, 'William Jackson', 'william.j@example.com', 'Question about warranty coverage.', '2023-02-01 08:35:14'),
(18, 'Elizabeth Thompson', 'elizabeth.t@example.com', 'Compliment about your excellent service!', '2023-02-02 14:20:38'),
(19, 'Christopher Moore', 'christopher.m@example.com', 'Need help resetting my account password.', '2023-02-03 11:05:47'),
(20, 'Margaret Clark', 'margaret.c@example.com', 'Inquiry about job openings at your company.', '2023-02-04 16:50:29'),
(21, 'Joseph Lewis', 'joseph.l@example.com', 'Request for product demonstration.', '2023-02-05 13:35:16'),
(22, 'Patricia Walker', 'patricia.w@example.com', 'Suggestion to expand your product line.', '2023-02-06 09:20:22'),
(23, 'Charles Hall', 'charles.h@example.com', 'Complaint about incorrect billing.', '2023-02-07 07:05:33'),
(24, 'Susan Young', 'susan.y@example.com', 'Question about installation instructions.', '2023-02-08 15:50:41'),
(25, 'Matthew Allen', 'matthew.a@example.com', 'Request for product samples.', '2023-02-09 12:35:27'),
(26, 'Betty King', 'betty.k@example.com', 'Feedback on recent purchase experience.', '2023-02-10 08:20:18'),
(27, 'Donald Wright', 'donald.w@example.com', 'Technical support request for software issue.', '2023-02-11 14:05:39'),
(28, 'Dorothy Scott', 'dorothy.s@example.com', 'Inquiry about upcoming sales events.', '2023-02-12 10:50:25'),
(29, 'George Green', 'george.g@example.com', 'Request to update my account information.', '2023-02-13 07:35:17'),
(30, 'Melissa Baker', 'melissa.b@example.com', 'Question about product compatibility.', '2023-02-14 13:20:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
