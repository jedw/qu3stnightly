-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2023 at 06:59 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `uid` int NOT NULL,
  `qnum` int NOT NULL,
  `question` text NOT NULL,
  `answera` text NOT NULL,
  `answerb` text NOT NULL,
  `answerc` text NOT NULL,
  `answerd` text NOT NULL,
  `answercorrect` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`uid`, `qnum`, `question`, `answera`, `answerb`, `answerc`, `answerd`, `answercorrect`, `category`) VALUES
(1, 1, 'Which of the following is the largest planet in our solar system?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'Jupiter', 'general'),
(2, 2, 'Who wrote the novel \"To Kill a Mockingbird\"?', 'Ernest Hemingway', 'J.D. Salinger', 'Harper Lee', 'John Steinbeck', 'Harper Lee', 'general'),
(3, 3, 'Which country is home to the Great Barrier Reef?', 'Australia', 'Brazil', 'Canada', 'Japan', 'Australia', 'general'),
(4, 4, 'What is the smallest country in the world by land area?', 'Monaco', 'Vatican City', 'San Marino', 'Liechtenstein', 'Vatican City', 'general'),
(5, 5, 'Who was the first person to step on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Michael Collins', 'Yuri Gagarin', 'Neil Armstrong', 'general'),
(6, 1, 'What is the value of x in the equation 3x + 7 = 16?', 'x = 3', 'x = 3.3', 'x = 3.5', 'x = 3.6', '3', 'math'),
(7, 2, 'Which of the following numbers is a multiple of both 3 and 5?', '15', '21', '25', '30', '15', 'math'),
(8, 3, 'If a rectangle has a length of 12 cm and a width of 8 cm, what is its area?', '20 cm²', '80 cm²', '96 cm²', '120 cm²', '96 cm²', 'math'),
(9, 4, 'What is the area of a square with a perimeter of 24 cm?', '12 cm²', '36 cm²', '48 cm²', '72 cm²', '36 cm²', 'math'),
(10, 5, 'What is the square root of 144?', '11', '12', '13', '14', '12', 'math'),
(11, 1, 'What year did the Jaguar xj6 first become available?', '1958', '1968', '1978', '1988', '1968', 'cars'),
(12, 2, 'What is the nearest litre equivalent to an engine size of 440ci?', '7.2', '4.7', '4.4', '5.0', '7.2', 'cars'),
(13, 3, 'How many horsepower does a Citroen 2cv6 have under the bonnet?', '100hp', '56hp', '44hp', '29hp', '29hp', 'cars'),
(14, 4, 'How many miles range does a tesla model X have?', 'who cares..', 'who cares..', 'who cares..', 'who cares..', 'who cares..', 'cars'),
(15, 4, 'The original 1959 Mini was unique in being?', 'four-wheel drive', 'rear-wheel drive', '1-wheel drive', 'front-wheel drive', 'front-wheel drive', 'cars');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
