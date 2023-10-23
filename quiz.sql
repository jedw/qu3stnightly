-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2023 at 01:14 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jedw`
--

-- --------------------------------------------------------

--
-- Table structure for table `coffee`
--

CREATE TABLE `coffee` (
  `id` int(3) NOT NULL,
  `drink` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coffee`
--

INSERT INTO `coffee` (`id`, `drink`, `size`, `price`) VALUES
(1, 'Latte', 'Small', '£2.98'),
(13, 'Joooolie decaf', 'XL', '4.99'),
(3, 'Cappucino', 'Medium', '£2.99'),
(4, 'Caramel Latte', 'XXL', '£3.50'),
(5, 'Iced Mocha Frappa Chocca Whotsit', 'XXL', '£4.00'),
(6, 'test', 'create', '45'),
(7, 'test', 'L', '123'),
(10, 'JONATHAN COFFEE', 'LARGE', '0'),
(12, 'tea', 'large', '£5.69'),
(14, 'Shelbie\'s Frappe', 'GRANDE', '£100.');

-- --------------------------------------------------------

--
-- Table structure for table `highscores`
--

CREATE TABLE `highscores` (
  `id` int(11) NOT NULL,
  `player` text NOT NULL,
  `score` int(11) NOT NULL,
  `category` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `highscores`
--

INSERT INTO `highscores` (`id`, `player`, `score`, `category`) VALUES
(1, 'jonathan', 5, 'general'),
(2, 'jooolie', 1, 'general'),
(3, 'jooolie', 3, 'math'),
(4, 'matt', 5, 'cars'),
(5, 'Test', 4, 'Harry Potter'),
(6, 'Fred flintstone ', 3, 'general'),
(7, 'Mickey mouse', 5, 'music'),
(8, 'Donald Duck ', 4, 'cars'),
(9, 'Elmer fudd', 2, 'general'),
(10, 'Matt', 4, 'math'),
(11, 'Kirstie', 5, 'general'),
(16, 'Nick', 4, 'Steam trains'),
(17, 'Jooooooooooolie', 1, 'Steam trains'),
(18, 'Jon', 5, 'Steam trains'),
(19, 'Proof', 5, 'Steam trains'),
(20, 'Proof', 5, 'Steam trains'),
(21, 'Arse', 4, 'Harry Potter'),
(22, 'Sude', 4, 'general'),
(23, 'Test', 3, 'math'),
(24, 'Blah', 5, 'general'),
(25, 'Fjfu', 5, 'Harry Potter'),
(26, 'Panthalassa ', 3, 'Steam trains'),
(27, 'Panthalassa', 5, 'music'),
(28, 'Jonathan', 5, 'cars'),
(29, 'Jonathan', 1, 'music'),
(30, 'Jonathan', 1, 'music'),
(31, 'Keith', 2, 'general'),
(32, 'Keith', 2, 'general'),
(33, 'Keith', 2, 'general'),
(34, 'Keith', 3, 'music'),
(35, 'Bob', 3, 'math'),
(36, 'Panthalassa', 5, 'Harry Potter'),
(37, 'Start', 4, 'Harry Potter'),
(38, 'Jon', 3, 'general'),
(39, 'Ermennd', 2, 'math'),
(40, 'Jon', 5, 'Harry Potter'),
(41, 'Jin', 5, 'music'),
(42, 'Jin', 5, 'music'),
(43, 'Jin', 5, 'music'),
(44, 'Jin', 3, 'Steam trains'),
(45, 'Nick', 4, 'music');

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `id` int(11) NOT NULL,
  `teamcode` text NOT NULL,
  `teamname` text NOT NULL,
  `score` int(11) NOT NULL,
  `league` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`id`, `teamcode`, `teamname`, `score`, `league`) VALUES
(1, 'A1', 'A One', 365, 'Livesey'),
(2, 'A2', 'Team Ace', 394, 'Harris'),
(3, 'A3', 'Bit By Bit', 288, 'Victoria'),
(4, 'A4', 'Techmen', 133, 'Darwin'),
(5, 'B1', 'Syntax Error', 207, 'Livesey'),
(6, 'B2', 'Euphoria', 348, 'Harris'),
(7, 'B3', 'Symphony', 237, 'Victoria'),
(8, 'B4', 'Blur 141', 268, 'Darwin'),
(9, 'C1', 'C1 Productions', 254, 'Livesey'),
(10, 'C2', 'C2 Games North', 390, 'Harris'),
(11, 'C3', 'C3-PO', 196, 'Victoria'),
(12, 'F4', 'Alt-F4', 40, 'Harris'),
(13, 'D1', 'Application X', 308, 'Livesey'),
(14, 'D2', 'Drillas', 378, 'Harris'),
(15, 'D3', 'The Imposters', 300, 'Victoria'),
(16, 'E1', 'Scouser and 2 Wools', 193, 'Livesey'),
(17, 'E2', 'Endpoint²', 196, 'Harris'),
(18, 'E3', 'Top G`s 2.0', 206, 'Victoria'),
(19, 'E4', 'E4.0', 212, 'Darwin'),
(20, 'F1', '2 out of 6', 230, 'Livesey'),
(21, 'F2', 'Yo UCLan', 293, 'Harris'),
(22, 'F3', 'UCLAN BOTTOM GEAR', 395, 'Victoria'),
(23, 'G1', 'UCLan FC', 144, 'Livesey'),
(24, 'G3', 'Binary', 174, 'Victoria'),
(25, 'H1', 'Hoodies+1', 436, 'Darwin'),
(26, 'H2', '*REDACTED*', 243, 'Harris'),
(27, 'H3', 'Pixel Pioneers', 433, 'Darwin'),
(28, 'H4', 'The Fake Ones', 246, 'Darwin'),
(29, 'J1', 'Ctrl Freaks', 234, 'Darwin'),
(30, 'J2', 'Space Bin', 256, 'Darwin'),
(31, 'K2', 'We`re Hungry', 285, 'Victoria'),
(32, 'K3', 'TEAM URANUS', 335, 'Livesey'),
(33, 'K4', 'UNDEFINED', 396, 'Darwin'),
(34, 'K1', 'Longshot', 89, 'Harris'),
(35, 'G2', 'No Name', 0, 'Livesey'),
(36, 'G4', 'No Name', 0, 'Darwin'),
(37, 'J3', 'Splendid Space', 219, 'Livesey'),
(38, 'J4', 'No Name', 0, 'Darwin');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `date`, `title`, `tags`, `body`) VALUES
(23, '2020-12-07 07:00:00', 'CSS', 'plaid,red,black,lumberjack,CSS,gradient', 'To do red plaid in pure CSS (No image needed)\r\n<pre>\r\nbackground-color: #000;\r\nbackground-image: repeating-linear-gradient(\r\n    90deg,\r\n    transparent,\r\n    transparent 35px,\r\n    rgba(255, 0, 0, 0.5) 35px,\r\n    rgba(255, 0, 0, 0.5) 70px\r\n),\r\n    repeating-linear-gradient(\r\n    -180deg,\r\n    transparent,\r\n    transparent 35px,\r\n    rgba(255, 0, 0, 0.5) 35px,\r\n    rgba(255, 0, 0, 0.5) 70px\r\n);\r\n</pre>\r\n\r\n<p>I\'m a lumberjack and I\'m okay..</p>'),
(1, '2020-12-01 07:00:00', 'Merry Christmas', 'xmas', '<script src=\"https://code.jquery.com/jquery-3.4.1.js\" integrity=\"sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=\" crossorigin=\"anonymous\"></script>\r\n			<script>\r\n			$(document).ready(function(){\r\n					 var size;\r\n					 var space;\r\n					 var name;\r\n					 var decorAmount;\r\n					 var colours = [\'f00\',\'0f0\', \'00f\', \'ff0\', \'f0f\', \'0ff\'];\r\n					 var decor = [\'o\', \'*\'];\r\n				 \r\n				$(\"#draw\").click(function drawTree() {\r\n					setTimeout(drawTree, 1000);\r\n					size = $(\"#inputSize\").val();\r\n					name = $(\"#inputName\").val();\r\n					decorAmount = $(\"#inputDecor\").val();\r\n					space = size;\r\n					$(\"#tree\").empty();	\r\n					for (var k = 0; k < size-1; k++)\r\n						{\r\n							$(\"#tree\").append(\" \");\r\n						}\r\n					$(\"#tree\").append(\"<span style=\\\"color:#ff0;\\\">*</span>\");\r\n					for (var i = 0; i <= size; i++)\r\n					{	\r\n						for (var k=0; k<space; k++)\r\n						{\r\n							$(\"#tree\").append(\" \");\r\n						}\r\n						for ( var j = 0; j < 2*i-1; j++)\r\n						{\r\n							if (Math.floor(Math.random() * decorAmount) == 1)\r\n							{\r\n								var color = colours[Math.floor(Math.random() * colours.length)];\r\n								var character = decor[Math.floor(Math.random() * decor.length)];\r\n								$(\"#tree\").append(\"<span style=\\\"color:#\"+color+\";\\\">\"+character+\"</span>\");\r\n							}\r\n							else\r\n							{\r\n								$(\"#tree\").append(\"^\");\r\n							}\r\n						}\r\n						space--;\r\n						$(\"#tree\").append(\"<br>\");\r\n					}\r\n					for (var k = 0; k < size-4; k++)\r\n						{\r\n							$(\"#tree\").append(\" \");\r\n						}\r\n					$(\"#tree\").append(\"\\\\____/<br>\");\r\n					\r\n					$(\"#tree\").append(\"<br>Merry Christmas \"+name);\r\n				});	\r\n			});\r\n			</script>\r\n<h1>co2714 JavaScript Christmas tree</h1>\r\n		<pre id =\"tree\" style=\"color:#008822;\"></pre>\r\n		<label for=\"inputSize\">Input Size:</label><br><input id=\"inputSize\" type=\"text\"><br>\r\n<label for=\"inputName\">Input Name:</label><br><input id=\"inputName\" type=\"text\"><br>\r\n<label for=\"inputDecor\">One in \'n\' characters should be a decoration. n= :</label><br><input id=\"inputDecor\" type=\"text\"><br>\r\n<button id=\"draw\">Draw Tree</button>\r\n'),
(24, '2023-01-04 11:13:00', 'Here is a new post', 'test', 'I migrated my website to CI 4.0.2'),
(25, '2023-01-04 11:13:00', 'Great mix from back in the day', 'trance,music,mix', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Djmk2AHEC-0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(26, '2023-03-13 16:04:43', 'I am posting from my class', 'teaching,web,univeristy', 'Where have all the students gone? ');

-- --------------------------------------------------------

--
-- Table structure for table `qcategories`
--

CREATE TABLE `qcategories` (
  `id` int(11) NOT NULL,
  `category` text DEFAULT NULL,
  `length` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `qcategories`
--

INSERT INTO `qcategories` (`id`, `category`, `length`) VALUES
(1, 'practice_riddles', 10),
(2, 'panthalassa', 11),
(3, 'testing', 10),
(4, 'compsci', 10);

-- --------------------------------------------------------

--
-- Table structure for table `qhighscores`
--

CREATE TABLE `qhighscores` (
  `id` int(11) NOT NULL,
  `player` text NOT NULL,
  `score` int(11) NOT NULL,
  `category` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `qhighscores`
--

INSERT INTO `qhighscores` (`id`, `player`, `score`, `category`) VALUES
(104, 'bwillmott', 100, 'compsci'),
(105, 'bwillmott', 100, 'testing'),
(106, 'bwillmott', 100, 'practice_riddles'),
(107, 'Asim', 41, 'compsci'),
(108, 'Chiara', 53, 'testing'),
(109, 'test', 78, 'practice_riddles'),
(110, 'Leah', 95, 'Testing'),
(111, 'Hug', 15, 'testing'),
(112, 'I', 15, 'compsci'),
(113, 'matt', 90, 'practice_riddles'),
(114, '      ', -9, 'compsci'),
(115, '      ', -9, 'compsci'),
(116, 'Liqm', 10, 'compsci'),
(117, 'dan', 93, 'compsci'),
(118, 'john', 93, 'practice_riddles'),
(119, 'Jon', 100, 'compsci'),
(120, 'Nick', 0, 'Goals'),
(121, 'helloworld', 83, 'practice_riddles'),
(122, 'Nick', 18, 'practice_riddles'),
(123, 'Keisiei', 0, 'compsci'),
(124, 'Raychel', 0, 'compsci'),
(125, 'Charlotte', 30, 'testing'),
(126, 'Mark', -6, 'compsci'),
(127, 'victor', 86, 'practice_riddles'),
(128, 'Hairy', 25, 'testing'),
(129, 'user', 96, 'practice_riddles'),
(130, 'bwillmott', 100, 'compsci'),
(131, 'John', 1, 'testing'),
(132, 'Mr', 10, 'compsci'),
(133, 'Reham', 10, 'compsci'),
(134, 'Reham', 10, 'compsci'),
(135, 'Fal', 0, 'compsci'),
(136, 'James', 5, 'compsci'),
(137, 'Tl', 10, 'testing'),
(138, 'Tl', 10, 'testing'),
(139, 'Barber', 5, 'compsci'),
(140, 'Barber', 5, 'compsci'),
(141, 'Sam', 20, 'testing'),
(142, 'Sam', 20, 'testing'),
(143, 'Jjjj', 5, 'testing'),
(144, 'Jjjj', 5, 'testing'),
(145, 'riddlemaster', 95, 'practice_riddles'),
(146, 'H3', 100, 'qu3st'),
(147, 'e3', 100, 'qu3st'),
(148, 'f3', 100, 'qu3st'),
(149, 'f2', 100, 'qu3st'),
(150, 'c3', 100, 'qu3st');

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `uid` int(11) NOT NULL,
  `qnum` int(11) NOT NULL,
  `category` text DEFAULT NULL,
  `mode` text DEFAULT NULL,
  `riddle` text NOT NULL,
  `solution` text NOT NULL,
  `hint` text DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`uid`, `qnum`, `category`, `mode`, `riddle`, `solution`, `hint`, `points`) VALUES
(1, 1, 'practice_riddles', NULL, 'What has hands, but cant clap?', 'clock', 'answer is: clock', 10),
(2, 2, 'practice_riddles', NULL, 'What gets bigger when more is taken away?', 'hole', 'answer is: hole', 10),
(3, 3, 'practice_riddles', NULL, 'What gets wet while drying?', 'towel', 'answer is: towel', 10),
(4, 4, 'practice_riddles', NULL, 'What has many keys but cant open a single lock?', 'piano', 'answer is: piano', 10),
(5, 5, 'practice_riddles', NULL, 'Where does today come before yesterday?', 'dictionary', 'answer is: dictionary', 10),
(6, 6, 'practice_riddles', NULL, 'What has legs, but doesnt walk?', 'table', 'answer is: table', 10),
(7, 7, 'practice_riddles', NULL, 'What building has the most stories?', 'library', 'answer is: library', 10),
(8, 8, 'practice_riddles', NULL, 'What has a head and a tail but no body?', 'coin', 'answer is: coin', 10),
(9, 9, 'practice_riddles', NULL, 'What can travel all around the world without leaving its corner?', 'stamp', 'answer is: stamp', 10),
(10, 10, 'practice_riddles', NULL, 'Davids parents have three sons: Snap, Crackle, and whats the name of the third son?', 'david', 'answer is: david', 10),
(11, 1, 'panthalassa', NULL, 'Down past where the scholars doth feast there lies a passage to where the astronomers gather. To stare upon thee in thy cabinet that has become my tomb. No light shall escape me for a while', 'eclipse', 'ring of fire', 10),
(12, 2, 'panthalassa', NULL, 'In the depths of Harris building I lurk ready to hand out justice, emblazoned in gold tis my name', 'templeman', 'answer is: templeman', 10),
(13, 3, 'panthalassa', NULL, 'In Fosters lair there lies a hidden garden, take a seat amongst the maples, lepidopteris is my name', 'butterfly', 'painted symbols', 10),
(14, 4, 'panthalassa', NULL, 'I once did shield thee from the elements, but now in the rafters I doth hang amongst my brothers and sisters.', 'umbrella', 'many colours we come in', 10),
(15, 5, 'panthalassa', NULL, 'From a heavenly place I see for miles. In the Highest peak in the land of Maudland there lives a saint. A hansom figure though I am, a heavy cross doth I bear. What is my name? ', 'walburge', 'church', 10),
(17, 6, 'panthalassa', NULL, 'Within our shared home inside a glass case I do reside. Has been 40 a year since fingers graced my keys, but no tunes did I ever play. I sit beside Orwellian fears whereth the creature of the night adorns me', 'acorn', 'Like the apple I grow from a tree', 10),
(18, 7, 'panthalassa', NULL, 'In our oldest dwelling there hides a secret place surrounded by 4 walls, my brethren and I gather above the fountain. A pest we are to the groundskeeper. You must not risk feeding us lest our numbers increase', 'pigeon', 'columbae', 10),
(19, 8, 'panthalassa', NULL, 'Hidden in plain sight I runeth through the land. Deep beneath the terrestrial earth I hide many secrets. Where wheels once rolled and steam was billowed now only ghosts remain. What is my name?', 'miley', 'tunnel', 10),
(20, 9, 'panthalassa', NULL, 'Where the giants pray my celestial brothers and I gather, but what is our number?', 'nine', 'planets', 10),
(21, 10, 'panthalassa', NULL, 'In the farthest reaches of the land, Lies an ancient dwelling, Once the hub of our trade, If thou ist feeling weary, Lay thine eyes upon the map and seek the farthest place', 'vernon', '(<-3)(yhuqrq)', 10),
(22, 11, 'panthalassa', NULL, 'Your quest is near complete but one more step remains, you must return home. Whenst thou ascends to the top of the tower, follow the left fork where treasures may await. Knock thrice at room number 11010111 and the door shall open. Please submit \'end\' to solve this riddle.', 'end', 'cheeky', 0),
(54, 1, 'testing', NULL, 'What goes up but never comes down?', 'age', 'the answer is age', 10),
(55, 2, 'testing', NULL, 'What has to be broken before it is used?', 'egg', 'the answer is egg', 10),
(56, 3, 'testing', NULL, 'What is full of holes but still holds water?', 'sponge', 'the answer is sponge', 10),
(57, 4, 'testing', NULL, 'I am easy to lift, but hard to throw. What am I?', 'feather', 'the answer is feather', 10),
(58, 5, 'testing', NULL, 'I shave everyday but my beard remains the same, what am I?', 'barber', 'the answer is barber', 10),
(59, 6, 'testing', NULL, 'What is 3/7 chicken, 2/3 cat, and 2/4 goat?', 'chicago', 'the answer is chicago', 10),
(60, 7, 'testing', NULL, 'The more you take, the more you leave behind. What am I?', 'footsteps', 'the answer is footsteps', 10),
(61, 8, 'testing', NULL, 'What can you break without ever touching or picking it up?', 'promise', 'the answer is promise', 10),
(62, 9, 'testing', NULL, 'I am an odd number. Take away a letter and I become even. What number am I?', 'seven', 'The answer is seven', 10),
(63, 10, 'testing', NULL, 'If 2 is company and 3 is a crowd, what are 4 and 5?', 'nine', 'the answer is nine', 10),
(64, 1, 'compsci', NULL, 'The more you program, the more of me there is. I may be gone for now but you can’t get rid of me forever. What am I?', 'bug', 'the answer is bug', 10),
(65, 4, 'compsci', NULL, 'I`m a language for everything yet I have no real identity of my own. Good luck trying to compile me. What am I?', 'pseudocode', 'the answer is pseudocode', 10),
(66, 8, 'compsci', NULL, 'As a developer, you usually get mad at me because I complain a lot, although I`m usually right. What am I?', 'compiler', 'the answer is compiler', 10),
(67, 10, 'compsci', NULL, 'I`m sent before I’m ready, I’ll break before you know it and you can’t find me many places. What am I?', 'beta', 'the answer is beta', 10),
(68, 2, 'compsci', NULL, 'A window to anywhere. Just watch for my glare. What am I?', 'monitor', 'the answer is monitor', 10),
(69, 5, 'compsci', NULL, 'I am a computer crossed with a hamburger, what am I?', 'bigmac', 'the answer is bigmac', 10),
(70, 9, 'compsci', NULL, 'To a computer I am a hero, what am I?', 'screensaver', 'the answer is screensaver', 10),
(71, 3, 'compsci', NULL, 'A puzzle am I with many pieces, I can be taken anywhere, but make no mistake as I cannot undo, what am I?', 'thunkable', 'the answer is thunkable', 10),
(72, 6, 'compsci', NULL, 'It`s true I must repeat, It`s true I must repeat, It`s true I must repeat, It`s false. What am I?', 'loop', 'the answer is loop', 10),
(73, 7, 'compsci', NULL, 'I`ll tell you networking jokes but you might not get them, what am I?', 'udp', 'the answer is udp', 10);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `uid` int(3) NOT NULL,
  `qnum` int(11) NOT NULL,
  `question` text NOT NULL,
  `answera` text NOT NULL,
  `answerb` text NOT NULL,
  `answerc` text NOT NULL,
  `answerd` text NOT NULL,
  `answercorrect` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`uid`, `qnum`, `question`, `answera`, `answerb`, `answerc`, `answerd`, `answercorrect`, `category`) VALUES
(1, 1, 'Which of the following is the largest planet in our solar system?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'Jupiter', 'general'),
(2, 2, 'Who wrote the novel \"To Kill a Mockingbird\"?', 'Ernest Hemingway', 'J.D. Salinger', 'Harper Lee', 'John Steinbeck', 'Harper Lee', 'general'),
(3, 3, 'Which country is home to the Great Barrier Reef?', 'Australia', 'Brazil', 'Canada', 'Japan', 'Australia', 'general'),
(4, 4, 'What is the smallest country in the world by land area?', 'Monaco', 'Vatican City', 'San Marino', 'Liechtenstein', 'Vatican City', 'general'),
(5, 5, 'Who was the first person to step on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Michael Collins', 'Yuri Gagarin', 'Neil Armstrong', 'general'),
(6, 1, 'What is the value of x in the equation 3x + 7 = 16?', 'x = 3', 'x = 3.3', 'x = 3.5', 'x = 3.6', 'x = 3', 'math'),
(7, 2, 'Which of the following numbers is a multiple of both 3 and 5?', '15', '21', '25', '30', '15', 'math'),
(8, 3, 'If a rectangle has a length of 12 cm and a width of 8 cm, what is its area?', '20 cm²', '80 cm²', '96 cm²', '120 cm²', '96 cm²', 'math'),
(9, 4, 'What is the area of a square with a perimeter of 24 cm?', '12 cm²', '36 cm²', '48 cm²', '72 cm²', '36 cm²', 'math'),
(10, 5, 'What is the square root of 144?', '11', '12', '13', '14', '12', 'math'),
(11, 1, 'What year did the Jaguar xj6 first become available?', '1958', '1968', '1978', '1988', '1968', 'cars'),
(12, 2, 'What is the nearest litre equivalent to an engine size of 440ci?', '7.2', '4.7', '4.4', '5.0', '7.2', 'cars'),
(13, 3, 'How many horsepower does a Citroen 2cv6 have under the bonnet?', '100hp', '56hp', '44hp', '29hp', '29hp', 'cars'),
(14, 4, 'How many miles range does a tesla model X have?', 'who cares..', 'who cares..', 'who cares..', 'who cares..', 'who cares..', 'cars'),
(15, 5, 'The original 1959 Mini was unique in being?', 'four-wheel drive', 'rear-wheel drive', '1-wheel drive', 'front-wheel drive', 'front-wheel drive', 'cars'),
(16, 1, 'In what school was Harry Potter sorted into at the Hogwarts school of Witchcraft and Wizardry?', 'Griffendor', 'Hufflepuff', 'Slitherin', 'Ravenclaw', 'Griffendor', 'Harry Potter'),
(17, 2, 'What shape scar does Harry have on his forehead?', 'Heart', 'Star', 'Triangle', 'Lightening Bolt', 'Lightening Bolt', 'Harry Potter'),
(18, 3, 'Who does Harry Potter live with before going to Hogwarts?', 'Simpsons', 'Dursleys', 'Griffins', 'Sheerans', 'Dursleys', 'Harry Potter'),
(19, 4, 'What is the name of Hermione Grangers cat?', 'Fluffy', 'Tiddles', 'Crookshanks', 'Mrs Norris', 'Crookshanks', 'Harry Potter'),
(20, 5, 'What are Hufflepuffs house colours?', 'Red and gold', 'Yellow and black', 'Blue and bronze', 'Green and bonze', 'Yellow and black', 'Harry Potter'),
(21, 1, 'In what year did Pink Floyd release The Dark Side of the Moon?', '1963', '1973', '1983', '1993', '1973', 'music'),
(22, 2, 'Who replaced Pete Best as drummer for the beatles?', 'John Bonham', 'Charlie Watts', 'Ringo Starr', 'Keith Moon', 'Ringo Starr', 'music'),
(23, 3, 'Who sang about Rhiannon the Welsh witch in 1975?', 'Stevie Nicks', 'Stevie Wonder', 'Stevie Winwood', 'Stevie Ray-Vaughn', 'Stevie Nicks', 'music'),
(24, 4, 'Which band did drummer Phil Collins become the lead singer after the departure of previous singer Peter gabriel?', 'Rush', 'Yes', 'Marillion', 'Genesis', 'Genesis', 'music'),
(25, 5, 'What was the name of Kate Bush\'s debut single from 1978?', 'Wuthering Heights', 'The Tenant of Wildfell Hall', 'Villette', 'Jane Eyre', 'Wuthering Heights', 'music'),
(26, 1, 'What was the most common type of British steam locomotive?', '0-4-0', '2-6-0', '4-6-0', '4-4-2', '4-6-0', 'Steam trains'),
(27, 2, 'What was the purpose of the Stanier Black Five locomotive?', 'Freight hauling', 'Express passenger service', 'Shunting', 'Branch line service', 'Freight hauling', 'Steam trains'),
(28, 3, 'Which famous British steam locomotive set the world speed record for steam traction in 1938?', 'Mallard', 'Flying Scotsman', 'City of Truro', 'Duchess of Hamilton', 'Mallard', 'Steam trains'),
(29, 4, 'What was the largest class of steam locomotive ever built in Britain?', 'A4', 'Merchant Navy', 'Castle', '9F', '9F', 'Steam trains'),
(30, 5, 'Which locomotive was famous for its distinctive \"double chimney\" design?', 'City of Truro', 'Flying Scotsman', 'King George V', 'Princess Coronation', 'Flying Scotsman', 'Steam trains');

-- --------------------------------------------------------

--
-- Table structure for table `questsession`
--

CREATE TABLE `questsession` (
  `session` varchar(255) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp(),
  `player` text NOT NULL,
  `category` text DEFAULT NULL,
  `mode` text DEFAULT NULL,
  `qnum` text NOT NULL,
  `score` text NOT NULL,
  `lat` text DEFAULT NULL,
  `lon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questsession`
--

INSERT INTO `questsession` (`session`, `date_time`, `player`, `category`, `mode`, `qnum`, `score`, `lat`, `lon`) VALUES
('0041d17564017ccec74bad323a4f2840d4f7154d', '2023-10-20 06:22:13', 'C1C1', 'qu3st', 'standard', '0', '-9', '', ''),
('00554d2c7352056be00e7aee78d3238b5a32dbe7', '2023-10-20 02:45:47', 'HowHow', 'compsci', 'standard', '0', '-5', '', ''),
('013949436bd1ed387cef403143d2a598d8ccadc6', '2023-10-20 07:49:57', 'Team ace A2', 'Qu3st', 'standard', '10', '100', '', ''),
('02248de86d07a8354c6145deae081161c093cc7e', '2023-10-20 07:37:28', 'C2RamyAkin', 'Qu3st', 'standard', '10', '100', '', ''),
('03764386459386216630d5634e5421a10931f438', '2023-10-20 02:08:06', 'Gghhjj', 'Comsci', 'standard', '0', '0', '', ''),
('04c8a373020458478a08436c7c2fc43a375e06b0', '2023-10-20 08:04:13', 'C2RamyAkin', 'Qu3st', 'standard', '10', '98', '', ''),
('076b03cea085b802d7c4c9374eb1cdb08df40ce6', '2023-10-20 01:27:46', 'Darian1', 'practice_riddles', 'standard', '10', '96', '', ''),
('09cf280a06068342ec413c67b1ff05d27ea00a21', '2023-10-20 01:25:37', 'George', 'practice_riddles', 'standard', '10', '68', '', ''),
('0b147aca0eb98797a3394ee396f506af23623f86', '2023-10-20 01:29:13', 'test', 'practice_riddles', 'standard', '10', '100', '', ''),
('0be41814ca6de864aa272f4fa1b0696af7726e3f', '2023-10-20 03:42:21', 'RiddleMaster', 'compsci', 'standard', '10', '80', '', ''),
('0c60f054465bff276c9c10ac870fcd3663a90146', '2023-10-20 02:21:40', ' Uzair', 'Compsci', 'standard', '10', '33', '', ''),
('0e0d045ca97b5ca872bc2a9bf506fa7d6ad9c69e', '2023-10-20 06:43:27', 'qu3stJagveer', 'Standard', 'standard', '0', '0', '', ''),
('10c4731370c8d09e356273951b05d80fa133790d', '2023-10-20 06:49:34', 'F2 gll', 'qu3st', 'standard', '5', '50', '', ''),
('114150ba6d93d31bc80a02dc44bf37f7bb9da732', '2023-10-20 05:24:30', 'Eyeuy3h', 'practice_riddles', 'standard', '10', '50', '', ''),
('11b4a5ecb6a963b799833fa71570ab079df380fb', '2023-10-20 08:16:16', 'Dec', 'practice_riddles', 'standard', '10', '37', '', ''),
('122701576b425509c2d45d52e223b71908c69d0f', '2023-10-20 03:17:50', 'J', 'testing', 'standard', '0', '0', '', ''),
('1273707d4f64c7ce4a0a0e7901fd149b59e0c5ff', '2023-10-20 06:31:54', 'C1C1', 'qu3st', 'standard', '0', '0', '', ''),
('1398b394a81a29fd43e32d38239742072697867c', '2023-10-20 06:18:23', 'K4Undefined', 'qu3st', 'standard', '0', '-81', '', ''),
('149e127080ea91899bab2fab3a03a81554031f3f', '2023-10-20 02:21:49', 'Chiara', 'compsci', 'standard', '10', '54', '', ''),
('14c03edf33ca897380c6d3f06683f1fb1c0f159d', '2023-10-20 01:14:18', 'A', 'practice_riddles', 'standard', '10', '100', '', ''),
('16d53b0a9cb0664d7be5f649330801232b9a5a3c', '2023-10-20 01:07:32', 'Asim', 'compsci', 'standard', '10', '41', '', ''),
('1960046ad088b8a06646b6352fb7cf41b1ecb5db', '2023-10-20 07:47:37', 'c3', 'qu3st', 'standard', '10', '100', '', ''),
('1a91fb88a0abfdc5fafc82eed70d99d2131a3b38', '2023-10-20 00:01:14', 'Please Enter Your Name To Save Your Score When You Finish', 'testing', 'standard', '10', '100', '', ''),
('1b3396339f3b7d2fac408a739bbe94b7bdf23564', '2023-10-20 02:03:45', ' Barret', 'practice_riddles', 'standard', '10', '7', '', ''),
('1b6849254b2d72338bf0ab9547923415405c72d3', '2023-10-20 07:26:21', 'A3', 'qu3st', 'standard', '10', '-161', '', ''),
('1fc4600bc7e1e82d78d65a1df11629e86666d9ed', '2023-10-20 01:30:50', 'Deez', 'compsci', 'standard', '10', '-2434', '', ''),
('20338393b534c0b92243b1df5f9efb4d4093a223', '2023-10-20 04:36:16', 'K', 'practice_riddles', 'standard', '10', '93', '', ''),
('20f84d9ebd1f6694e71c1fce513495cc4c6bcf01', '2023-10-20 02:23:19', '  ', 'Compsci', 'standard', '1', '1', '', ''),
('23fff60283c9eb006303cd3bcab7ff82ec87622b', '2023-10-20 01:45:33', 'Jon', 'compsci', 'standard', '2', '20', '', ''),
('2560617ed2db4315b1a517f520f3277bd70425fe', '2023-10-20 02:09:57', 'Nick', 'Goals', 'standard', '0', '0', '', ''),
('25db37b9413e7238174c8f345b33714019ca4f2f', '2023-10-20 01:42:57', 'Sjsujdjs', 'practice_riddles', 'standard', '2', '16', '', ''),
('2641f1457cc7415845c1718cc82db5b562d76a66', '2023-10-21 17:19:40', 'qu3st27663', 'Qu3st', 'standard', '0', '0', '', ''),
('264741452141249f22594d27ed91d18605710a8b', '2023-10-20 01:53:03', 'test', 'Shshshh', 'standard', '0', '0', '', ''),
('2750124c3d67a2e783c268e9cdd395156d18ada1', '2023-10-20 07:27:46', 'A1 - AONE', 'qu3st', 'standard', '10', '90', '', ''),
('28940f39e36409ed32d2551fe3b5fc9986f56b36', '2023-10-20 07:26:24', 'F2 yay', 'qu3st', 'standard', '10', '96', '', ''),
('2a37867484455883df7139d1c260836ad6fe2baf', '2023-10-20 03:32:14', 'riddle master', 'compsci', 'standard', '10', '88', '', ''),
('2a7326682ed3a733001e2750e6371395f78be0c3', '2023-10-20 01:20:38', 'Luna', 'testing', 'standard', '10', '93', '', ''),
('2ab658408fd4cb6e36f5ba225eae7898564256b7', '2023-10-20 07:20:22', 'team b2', 'qu3st', 'standard', '10', '100', '', ''),
('2f49c6a9eb4fbac17fc91d0f2ef2385421129c7a', '2023-10-20 05:22:28', 'F2BEJE', 'que', 'standard', '0', '0', '', ''),
('2fe8c7f5ca70796e3365663605de36e5c8cb8442', '2023-10-20 01:47:16', 'james', 'practice_riddles', 'standard', '10', '100', '', ''),
('308349db9dbe4f41c204c6faaac42dafa8cbaeef', '2023-10-20 05:23:07', 'Dhhd', 'qu3st', 'standard', '0', '0', '', ''),
('3104247b8077e09b7c85f52d7fc471a3fcbd3b47', '2023-10-20 02:02:39', 'john', 'practice_riddles', 'standard', '10', '93', '', ''),
('3137121f669024d2cbc4da64fde5cc7b54e60c08', '2023-10-20 01:29:25', 'Rupinder', 'Comp sci', 'standard', '0', '-2', '', ''),
('3198b596f35b33002c9b6ce2b15a21b0fb9ed31e', '2023-10-20 02:26:27', 'Matt', 'compsci', 'standard', '10', '91', '', ''),
('31a24aaaa2852009fd1515c817667a868c892e33', '2023-10-20 03:17:43', 'J', 'testing', 'standard', '0', '0', '', ''),
('3374453bd9b80e3368e61ca7d674d2ddc91833cb', '2023-10-20 01:38:59', 'Bob', 'compsci', 'standard', '0', '-2', '', ''),
('3507fda584f33bf465cc11effb7008357a53f245', '2023-10-23 11:09:05', 'sam', 'qu3st', 'standard', '0', '0', '', ''),
('351d0f3dba959dd746beebdcc9aacf7b1d76f9a0', '2023-10-20 02:38:40', 'Shshshs', 'practice_riddles', 'standard', '10', '100', '', ''),
('36939c922f822e17aa8ff886154a051a25735a64', '2023-10-20 02:13:28', 'helloworld', 'practice_riddles', 'standard', '10', '83', '53.761256', '-2.708989'),
('389ac4328babeccb630a18c953da4ac3b1b8bdef', '2023-10-20 02:14:23', 'Shakil', 'practice_riddles', 'standard', '10', '76', '', ''),
('3adbe78edae78e2ebe66e11f4cae47f8635d09c6', '2023-10-20 02:17:28', 'Junaid', 'practice_riddles', 'standard', '2', '-17', '', ''),
('3ca14004464a42eef6c6277d3b02150cb463ecba', '2023-10-20 03:21:28', 'Dhdhdhdg', 'practice_riddles', 'standard', '10', '100', '', ''),
('3d0c53f5a74a39c57cfca64812b6f33496547ece', '2023-10-20 02:47:25', 'Chris', 'practice_riddles', 'standard', '10', '55', '', ''),
('415fe4f49a8c40d571cd7f169704b469a25e49e4', '2023-10-21 08:14:27', 'bbb', 'testing', 'standard', '10', '98', '', ''),
('419477175a4d544e0c39b5e4cc47861ef89b4759', '2023-10-20 05:37:34', 'D1', 'practice_riddles', 'standard', '10', '100', '', ''),
('41f9151d6742d5fe4f1c1ae09103167285221aa9', '2023-10-20 02:34:20', 'steve', 'practice_riddles', 'standard', '10', '95', '', ''),
('4238f339279233283f2d026fca2e95ee94b6d283', '2023-10-20 06:58:33', 'Willy', 'qu3st', 'standard', '0', '0', '', ''),
('4327ca2411154429dd42e7445813ff7e82462458', '2023-10-20 07:17:18', 'H3', 'qu3st', 'standard', '10', '100', '', ''),
('4423cf4dc5ce836bc9decf637c586899a927e0d2', '2023-10-20 06:09:51', 'qu3stJag', 'practice_riddles', 'standard', '0', '0', '', ''),
('46814a6736871ae3d483b5f710a32b03e9664a2c', '2023-10-20 05:32:14', 'A3', 'qu3stA3', 'standard', '0', '0', '', ''),
('4722c6f05aea50e57b5be7252af5d45ff65220c4', '2023-10-20 07:30:24', 'K4finalplsdontbug', 'qu3st', 'standard', '10', '100', '', ''),
('484896db134a02f0fefcf431c7220821778dff91', '2023-10-20 07:40:49', 'K3TeamUranus', 'Qu3st', 'standard', '4', '40', '', ''),
('49df5f26a6b44555ee8e603b98affe9f9326b8da', '2023-10-20 03:17:56', 'J', 'compsci', 'standard', '0', '0', '', ''),
('4e7b3620f59b854994d3a66a1acbae1a9424c841', '2023-10-20 03:45:13', 'aleesha', 'practice_riddles', 'standard', '10', '85', '', ''),
('505039efa42a495f7c2ac29fa54228b901a6da4d', '2023-10-20 07:10:07', 'D3', 'qu3st', 'standard', '3', '28', '', ''),
('518a7418910851522ba9e0314367fffcf69512a7', '2023-10-20 05:30:33', 'F2 poos', 'qu3st', 'standard', '0', '0', '', ''),
('5341ff7f9740662d744fbeef2a83670908aaa8d1', '2023-10-20 02:39:51', 'Victor', 'practice_riddles', 'standard', '10', '100', '', ''),
('553f14370c644683b741f9424c7886ef0e73b256', '2023-10-20 06:02:19', 'F2 geee', 'qu3st', 'standard', '1', '-16', '', ''),
('57cbd58814082362f13547b9d80314969c4610ea', '2023-10-20 06:07:20', 'F2 f2', 'qu3st', 'standard', '0', '-6', '', ''),
('59eec0f19122ce8e2bd0440808b506156a7f324f', '2023-10-20 01:26:52', 'Ash', 'Testing.', 'standard', '0', '0', '', ''),
('5a148a6bac0056f40d9eac50cb142043207a232e', '2023-10-20 00:57:49', 'bwillmott', 'testing', 'standard', '10', '100', '', ''),
('5a72571ac49c0067ff945d257cc8240f0cb6824c', '2023-10-20 07:59:36', 'A3', 'qu3st', 'standard', '10', '58', '', ''),
('5a9d24711203bfd523c946c80285a5e5cf15786b', '2023-10-20 01:39:59', 'Raghav', 'Practice', 'standard', '0', '0', '', ''),
('5bf7a07aac8c83d2dae39d2fb7d1cca3c8eded03', '2023-10-20 00:58:59', 'bwillmott', 'practice_riddles', 'standard', '10', '100', '', ''),
('5c40b8758a5c944911d3528af3c33880b3c282b7', '2023-10-20 02:53:17', 'julie', 'practice_riddles', 'standard', '10', '93', '', ''),
('5cc6d8ec334a239acb73a89792de914970425fa8', '2023-10-20 01:21:50', 'Hoodies 1', 'practice_riddles', 'standard', '10', '91', '', ''),
('5df32dd37312e7f02751c9a82161b7b729d55728', '2023-10-20 07:04:27', 'C2GamesC2Games', 'Qu3sr', 'standard', '0', '0', '', ''),
('5eaed77994539fd0ea1ea8b05e00cb92a0829ea8', '2023-10-20 02:10:13', 'Trudi', 'compsci', 'standard', '10', '50', '', ''),
('606acfffc3e17ffb6e3428a82c3b5b1a7d56c1ab', '2023-10-20 02:15:55', 'Nick', 'practice_riddles', 'standard', '10', '18', '', ''),
('60e653375b5d10bd722347c00cd24fa6ca04668e', '2023-10-20 01:25:29', ' Bethel', 'Practice', 'standard', '0', '0', '', ''),
('62b46feadc761d7b91c63ac33b825d809719f9eb', '2023-10-20 06:24:53', 'F3stinks', 'qu3st', 'standard', '2', '-36', '', ''),
('638aa57a27122b406701691b35fe522fcb53e44b', '2023-10-20 01:39:24', 'matt', 'compsci', 'standard', '10', '63', '', ''),
('63a72dd438a94960b08e994d5d79a25442e0de7e', '2023-10-20 00:44:35', 'Sam', 'testing', 'standard', '10', '100', '', ''),
('63fd21c5b7f789719d01238c233b87b7ebebcdc9', '2023-10-20 06:05:13', 'F2 f2', 'qu3st', 'standard', '0', '-4', '', ''),
('64b14f4e854ddd5d5f2781082bd0834edc2ce224', '2023-10-20 01:54:29', 'Jes', 'practice_riddles', 'standard', '10', '95', '', ''),
('65914f6605f49180054a31c2931c39febf97f60d', '2023-10-20 02:45:51', 'Julie', 'practice_riddles', 'standard', '0', '0', '', ''),
('67d7d7116ac60f3425f7a22976445e79044ba2dd', '2023-10-20 00:55:59', ' Chris', 'practice_riddles', 'standard', '10', '96', '', ''),
('685afe3551f3aeb4064fc15382dd9b20c2b627a8', '2023-10-20 06:25:35', 'E4', 'Qu3st', 'standard', '4', '35', '', ''),
('6a8ddd5c7c2e1f112b54ad578cf594c4280dbf92', '2023-10-20 03:14:47', 'Dhdhdh', 'practice_riddles', 'standard', '10', '100', '', ''),
('6b21b21aee569e2e6dfb84acfb851f77c751f862', '2023-10-20 01:54:27', 'dylan', 'practice_riddles', 'standard', '10', '59', '', ''),
('6ba001c6f9f41b8d7e0762664726e995af40c8a9', '2023-10-21 17:21:29', 'qu3stVcvn', 'practice_riddles', 'standard', '0', '0', '', ''),
('6c85e49c97e1f8dce5d34f243c3c53e95c0f0990', '2023-10-20 02:45:22', 'bwillmott', 'compsci', 'standard', '10', '100', '53.7612587', '-2.7089975'),
('6d3e3a756ffb9cb4386e087e6bdb00cd8a3843b0', '2023-10-20 01:01:36', 'Josh', 'compsci', 'standard', '10', '98', '', ''),
('6dd7899787e1e5d31b0a5ca7ba6bb9ee65f20198', '2023-10-20 02:35:00', 'victor', 'practice_riddles', 'standard', '10', '86', '', ''),
('6de0501f1a19b5b13db85b6450eed736687b3987', '2023-10-20 02:29:19', 'Fahmeed', 'practice_riddles', 'standard', '10', '29', '', ''),
('721962516c90f48b6777676007b788bedb3a76b2', '2023-10-20 01:55:08', 'Huz', 'testing', 'standard', '10', '56', '', ''),
('749213120dd53d5e0e74a08d0f89f0bc1b4849e6', '2023-10-20 07:17:48', 'H1', 'qu3st', 'standard', '10', '74', '', ''),
('76026ef9c19ced964ecd19ae76f6fb846ee19f04', '2023-10-20 01:24:41', 'Leah', 'Testing', 'standard', '10', '95', '', ''),
('771fb0657d4b784d3a4ceefb794ba2defdccec83', '2023-10-20 06:33:39', 'M', 'QuEst', 'standard', '0', '0', '', ''),
('7aa5ecdd6ad0baa7b902f6856ba884d3aea881c4', '2023-10-20 02:11:29', 'Taniya ', 'Compsi', 'standard', '0', '0', '', ''),
('7ad5638435bcec82601480664a35dfe5c00904d0', '2023-10-20 01:39:11', 'Ben', 'practice_riddles', 'standard', '10', '68', '', ''),
('7ae377d88ecdedc5f48538ece1ce9c79cb2fae4d', '2023-10-20 01:40:17', 'Julie', 'practice_riddles', 'standard', '10', '100', '', ''),
('7c25ef35abadca11f046a05510df0892e3a27b03', '2023-10-20 01:54:28', 'dan', 'compsci', 'standard', '10', '93', '53.7612547', '-2.70897'),
('80c3db43ae731163bf173dcd55a9299f8df4831b', '2023-10-20 07:55:28', 'playername', 'qu3st', 'standard', '0', '0', '', ''),
('84652131dae6e08b251ae7caca5dd603782b2a29', '2023-10-20 03:22:32', 'bashu', 'practice_riddles', 'standard', '10', '95', '', ''),
('86b355891e3120f4135dbd206358ba92b6056c68', '2023-10-20 01:54:25', ' 10', 'practice_riddles', 'standard', '10', '55', '', ''),
('8921d40e45b19705315bedc3a3beaf506f2bf5f1', '2023-10-20 01:24:30', 'test', 'practice_riddles', 'standard', '10', '100', '', ''),
('8deb2a1b1e5bd15ca075800d9635118724d716bd', '2023-10-20 02:09:45', 'Zayd', 'practice_riddles', 'standard', '10', '71', '', ''),
('8fcd198ed16e4e23e915877800b63abfdb8e99ba', '2023-10-20 06:58:07', 'K43', 'qu3st', 'standard', '7', '52', '', ''),
('9235f09aa4a379611febed3458acdad9dc11c630', '2023-10-20 01:37:11', 'I', 'compsci', 'standard', '3', '15', '', ''),
('92e39c8f61b5ab064f5123b67ac973e5c445926d', '2023-10-20 01:52:17', 'Joe', 'practice_riddles', 'standard', '1', '1', '', ''),
('952a4bb09a1fc2c720800dd3170b48291ff58c03', '2023-10-20 01:36:11', 'Zayd', 'Easy', 'standard', '0', '0', '', ''),
('95ccb3ed70d89690b93d4daed3d0aac42876b0c9', '2023-10-20 02:34:08', 'Prikshit', 'compsci', 'standard', '1', '1', '', ''),
('978c100135d5429e11eae7f7fede399fd9f9238b', '2023-10-20 01:39:46', 'Bob', 'practice_riddles', 'standard', '1', '10', '', ''),
('99c3779d10b6f77b47356f6916ee59a2e586e19a', '2023-10-20 02:57:18', 'IKENNA', 'practice_riddles', 'standard', '10', '85', '', ''),
('9b341599b6413d05550a4e013fb3da4f76d699ef', '2023-10-20 03:06:08', 'Wam', 'compsci', 'standard', '0', '-765', '', ''),
('9bebd43575ebbd2b748a010f75d05171c1f8f61c', '2023-10-22 07:07:31', 'Muhammad', 'practice_riddles', 'standard', '10', '100', '', ''),
('9ed07cd6daf7cb4e14ff8f78992c766ad50c09e0', '2023-10-20 03:22:56', 'Barret', 'practice_riddles', 'standard', '2', '16', '', ''),
('a0475828feb216bd058174db5b124cbb6e12bc65', '2023-10-19 23:37:50', 'james', 'practice_riddles', 'standard', '10', '95', '', ''),
('a0a459621e8a413cdd0dcfb394d346914b7c2b62', '2023-10-20 07:30:08', 'D2 Drillas', 'qu3st', 'standard', '10', '95', '', ''),
('a191fdf4a7fc18b7b2fca43d6a0a900416bdf86d', '2023-10-20 01:25:39', 'Hug', 'compsci', 'standard', '9', '43', '', ''),
('a546a2cd1d4e08b6ab49d739e54bd8dde9f9fab0', '2023-10-20 03:03:38', ' Adam', 'Compsci', 'standard', '10', '58', '', ''),
('a605c977a11ee373fd28f657dcba8582a9702b44', '2023-10-20 02:29:10', 'Chiara', 'practice_riddles', 'standard', '10', '88', '', ''),
('a629c65e49d505c6b303a448ca47c004b782825d', '2023-10-21 00:54:05', 'Player', 'practice_riddles', 'standard', '0', '0', '', ''),
('a70fd49d14496174b7ae72cdf8f7f04460571adc', '2023-10-20 05:22:21', 'F2 pens', 'practice_riddles', 'standard', '0', '0', '', ''),
('aa8acb16a9a18a15492d5de3ecac084c13136ccb', '2023-10-20 02:49:20', ' Chiara', 'practice_riddles', 'standard', '10', '78', '', ''),
('aaadfd8784ba0e7204c203d76b8505c0f2effaa1', '2023-10-20 07:42:48', 'B3', 'qu3st', 'standard', '10', '100', '', ''),
('ad340b2654e1c568f503dff477908a6f3612ba20', '2023-10-20 05:31:29', 'aA3', 'qu3stA3', 'standard', '0', '0', '', ''),
('adb31e4c5b4ddd42878ddacb4395b3f410df2598', '2023-10-20 07:32:43', 'K3Team', 'Qu3st', 'standard', '4', '40', '', ''),
('b13528b26b9248e1a08f5d1afa81d9e191e4f3c1', '2023-10-20 01:18:41', 'ray', 'practice_riddles', 'standard', '10', '65', '', ''),
('b230aff89895c1666d0cee9ac84b4990d81c4100', '2023-10-20 02:58:28', ' Bsbsn', 'practice_riddles', 'standard', '10', '91', '', ''),
('b4248f724334903a59581873279c54962b336f68', '2023-10-20 02:18:53', 'Tkern', 'practice_riddles', 'standard', '10', '61', '', ''),
('b67a29642d123445cb7bf4d162b3509a0be82b8c', '2023-10-20 07:17:46', 'team b2', 'qu3st', 'standard', '10', '96', '', ''),
('b6bc54583243b4f5e50d68af86c277335900adc7', '2023-10-20 05:52:00', 'Jibin', 'practice_riddles', 'standard', '10', '55', '', ''),
('b95ee5e82e7cc458d99c955276f394e013f07d8e', '2023-10-20 06:12:04', 'Zaheer', 'Qu3st', 'standard', '1', '6', '', ''),
('b9f8412da1dcd5c0ad612c2bad0d5c698c1ea706', '2023-10-20 12:49:22', 'ttt', 'testing', 'standard', '10', '91', '', ''),
('ba84b39fe171db68049906dc9d95d121312d0a6b', '2023-10-20 01:57:12', 'Ndjsk', 'practice_riddles', 'standard', '10', '100', '', ''),
('bb4af5be754deb9c844b1d806a5fc0fbe6ab3415', '2023-10-19 23:30:12', 'jon', 'practice_riddles', 'standard', '3', '21', '', ''),
('bbac312e6bbbb0efe3c48d1daa97770d8f2d5c56', '2023-10-20 01:41:21', 'Hdjsjd', 'practice_riddles', 'standard', '1', '8', '', ''),
('bbbf729ad599d41ea4645e553adfa5b5f39a230a', '2023-10-20 06:30:24', 'F3boob', 'qu3st', 'standard', '1', '10', '', ''),
('bc3f17427651bfc5f08498c7b8202fe9cae1548e', '2023-10-20 01:11:24', 'steve', 'practice_riddles', 'standard', '10', '100', '', ''),
('be1b0cb87b55296ab1ac601b72421ec698ed979b', '2023-10-20 06:10:30', 'F3stinks', 'qu3st', 'standard', '0', '0', '', ''),
('bf95905d1253fdb0dfc65e228b5eb0dbd2c83cd0', '2023-10-20 05:13:58', 'j', 'que3t', 'standard', '0', '0', '', ''),
('c1805ed0a496d73406cfe6af579a1ed54df9b6be', '2023-10-20 02:03:58', 'Nick', 'practice_riddles', 'standard', '10', '-41', '', ''),
('c18ce982b03051e679c20d9df6c91c1bced5b21f', '2023-10-20 13:56:57', 'Sam', 'practice_riddles', 'standard', '0', '0', '', ''),
('c1ff76d18a67812cfe954209c58812de15ffa51b', '2023-10-20 02:31:32', 'Charlotte', 'practice_riddles', 'standard', '10', '100', '', ''),
('c2bf87a088fa81f5acc1a412f142eb04569457d0', '2023-10-20 03:11:01', 'DeezNuts', 'practice_riddles', 'standard', '3', '30', '', ''),
('c32cd9187f7ecb8396baa26c6fb30a4c9a277afb', '2023-10-23 12:07:08', 'qu3stAsif', 'Qu3st', 'standard', '0', '0', '', ''),
('c380e6bc914477ea80467179d033b7559978c470', '2023-10-20 05:25:50', 'Hhh', 'practice_riddles', 'standard', '10', '55', '', ''),
('c38adf5120585cef106ce26008fc0a3987ef45ba', '2023-10-20 06:20:33', 'E2', 'qu3st', 'standard', '3', '-11', '', ''),
('c6ad62aad9eb8d3168d67e139be94cb4bee8ee0c', '2023-10-20 02:16:05', 'Keisiei', 'compsci', 'standard', '0', '0', '', ''),
('c6e8dbf74b4a76a71af117d085fa46181e56a896', '2023-10-20 07:30:38', 'D1', 'qu3st', 'standard', '10', '83', '', ''),
('cc7732ce0cdef0a2d8e43f35d07ff8bc102847a3', '2023-10-20 05:24:51', 'C2 games northC2 games north', 'qu3st', 'standard', '0', '-10', '', ''),
('ccfd5498a12d835335f120a23d50c8b31f0deb60', '2023-10-20 03:02:23', 'ccfd5498a12d835335f120a23d50c8b31f0deb60', 'practice_riddles', 'standard', '10', '100', '', ''),
('cd247ce89c16296524a3ee48c147b8a73207772a', '2023-10-20 02:08:54', 'Matt', 'compsci', 'standard', '10', '73', '', ''),
('cd73473ce616db2a93b4f4918bb7998e676d4202', '2023-10-20 05:17:52', 'F2 ben', 'practice_riddles', 'standard', '0', '0', '', ''),
('cf645b994b47a0e3f866680c60d1370b36018a14', '2023-10-20 01:33:36', ' Oliver', 'Trains', 'standard', '0', '0', '', ''),
('cf7ca1edc907c6b59d05385332956daa5b1c388e', '2023-10-20 06:26:20', 'F3boob', 'qu3st', 'standard', '0', '-6', '', ''),
('d057d107d17d675b2b367c26b082fcb924b91d0c', '2023-10-20 02:07:16', 'lucas', 'practice_riddles', 'standard', '10', '100', '', ''),
('d09d65d1a74e61683d06e5dfddee78eee25f6b2f', '2023-10-20 01:37:05', 'test', 'practice_riddles', 'standard', '10', '95', '', ''),
('d1accf0d01f76a4a295f2daa29b58cca75ea8644', '2023-10-20 02:22:35', 'Nick', 'practice_riddles', 'standard', '10', '4', '', ''),
('d2895b9270dfedb4b8b94fb9cb0590f25f2f3252', '2023-10-20 07:42:00', 'B4blur', 'Qu3st', 'standard', '10', '100', '', ''),
('d3fb56940dabf8e3d7ef63f4d2859275bf0f80ed', '2023-10-20 07:26:21', 'F3', 'qu3st', 'standard', '10', '100', '', ''),
('d4eea3c93dc754ca2abe0361e325abe8ace9d70a', '2023-10-21 17:22:47', 'qu3stNsbbd', 'practice_riddles', 'standard', '10', '95', '', ''),
('d52215b8321e0f2f11df4a330142f49c4803db7e', '2023-10-20 06:48:54', 'F2 gll', 'qu3st', 'standard', '4', '34', '', ''),
('d5477cc43f1f93dc337a65f13c1033093ca27ad9', '2023-10-20 02:41:29', 'sam', 'compsci', 'standard', '10', '53', '', ''),
('d6f93f20d516f99629454676cae0ed144117833e', '2023-10-20 05:26:58', 'K3TeamUranus', 'practice_riddles', 'standard', '10', '41', '', ''),
('d8ad4196c4efdc0ade37620d560ea4659eea6560', '2023-10-20 03:09:34', 'Umar', 'testing', 'standard', '10', '80', '', ''),
('d94f52f72799de89682e7bbaf1bd25a0167ffe23', '2023-10-20 03:38:11', 'riddlemaster', 'practice_riddles', 'standard', '10', '95', '53.7612451', '-2.7089932'),
('d95eb61dcb87309fb956aedc29e1d1f3e9c2d50c', '2023-10-20 07:03:29', 'E1 Scouser and 2 wools', 'qu3st', 'standard', '2', '-33', '', ''),
('db17a95e99d33d1adb18c75e714c7f010ade59e7', '2023-10-20 05:31:53', 'f4', 'qu3stF4', 'standard', '0', '0', '', ''),
('ddc50660dece6d2b5a87dc2e9af8aa19f5978e7f', '2023-10-20 01:51:20', 'matt', 'practice_riddles', 'standard', '10', '98', '', ''),
('e29073f7d0356ccf6e5ebe0535ea3fc21fa18b4e', '2023-10-20 06:07:35', 'F2 f2', 'qu3st', 'standard', '0', '0', '', ''),
('e2e80d5fe5ad44fff36fbd1f68c1356bc628ec22', '2023-10-20 01:11:51', 'test', 'practice_riddles', 'standard', '10', '93', '', ''),
('e3dbf391b9a5e1eff23c9ac7ad5d944462fc6fc6', '2023-10-20 01:18:00', 'Chiara', 'testing', 'standard', '10', '53', '', ''),
('e41968d9e402268d4e5a6fb2dd1b6d93cd75b6e5', '2023-10-20 03:11:06', 'riddle  master', 'practice_riddles', 'standard', '10', '95', '', ''),
('e47f7e754612e4c645f866c93fc3d0f1d41674b4', '2023-10-20 07:00:11', 'test3', 'Qu3st', 'standard', '2', '20', '', ''),
('e63c08d602b8db245ccac9672a4cb1d8ffcae3c7', '2023-10-20 00:20:06', 'Jaja', 'compsci', 'standard', '1', '10', '', ''),
('edb14ec60d4c77ae853b7cbae019e07907963160', '2023-10-20 00:38:16', 'Ahmad', 'practice_riddles', 'standard', '6', '58', '', ''),
('f0b8ea42d63e6156c10325c40d452928c1de9dec', '2023-10-20 00:20:25', 'Jaja', 'practice_riddles', 'standard', '1', '10', '', ''),
('f0e51a401cdc3f927ffd49a4371fcb2ab0665715', '2023-10-20 03:41:26', 'Leon', 'practice_riddles', 'standard', '3', '30', '', ''),
('f387220f169b85961df481661938c4077c3b06dc', '2023-10-20 00:09:40', 'Sam', 'testing', 'standard', '10', '100', '', ''),
('f4b681a812b335d082675eaf16cf93161b45774f', '2023-10-20 05:22:14', 'F2 pens', 'que', 'standard', '0', '0', '', ''),
('f61144c6b3d8c08d5ad248fd905aad1cb987a45f', '2023-10-20 01:20:29', 'Kieran', 'practice_riddles', 'standard', '10', '76', '', ''),
('f8cb1ca0fbb2826e5e0123b6ca4f29ece357bec8', '2023-10-20 02:02:47', 'steve', 'practice_riddles', 'standard', '10', '95', '', ''),
('f9a250615542fab5a1bea5a89e8382c6dbb736c1', '2023-10-20 01:55:58', 'Huz', 'testing', 'standard', '0', '0', '', ''),
('f9b60e614865ae7ffe5c9a334a53c56b641179f4', '2023-10-20 01:55:53', 'Huz', 'testing', 'standard', '0', '0', '', ''),
('fc3e23a96767de7efbca3a986f21e885f25b9101', '2023-10-20 03:02:25', 'DeezNuts', 'testing', 'standard', '2', '10', '', ''),
('fc655de81aac9835cd675dd602cfd37bd9901bb6', '2023-10-20 01:20:47', 'test', 'practice_riddles', 'standard', '10', '78', '', ''),
('fd580e9a4e9feca84ccf5d43edad10706c45b5a9', '2023-10-20 02:22:59', 'sam', 'testing', 'standard', '10', '72', '', ''),
('fee43a5f04962e89ca061010804edf6169c94d98', '2023-10-20 01:45:50', 'matt', 'practice_riddles', 'standard', '10', '90', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `quizsession`
--

CREATE TABLE `quizsession` (
  `session` varchar(255) NOT NULL,
  `player` text NOT NULL,
  `category` text NOT NULL,
  `qnum` text NOT NULL,
  `score` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quizsession`
--

INSERT INTO `quizsession` (`session`, `player`, `category`, `qnum`, `score`) VALUES
('14616cb4d3ba1e59e7ef101d8f46477b1ece7fd9', 'jon', 'general', '1', '0'),
('25e0055950a267a80daced72f9c828c707134457', 'Mark', 'general', '2', '1'),
('5d73679357a657d4f02fd20a4d8e8e9bf5db560f', 'jonathan', 'Steam trains', '2', '1'),
('78b1bc7615abbf39f74c8334c538b6f8a5047124', 'jonathan', 'general', '1', '0'),
('8650d53096dec7eeaf130656b98836fbe03f621e', 'Nick', 'music', '1', '0'),
('8b8fa53f752eb7c865e25947ed80dc74482c3f1a', 'julie', 'general', '2', '0'),
('96984d548f61a76fa2ab5dd1ce5c9bce02f27d84', 'Jon', 'general', '2', '1'),
('c5e3d330a05953fbe7861ae3e1da6a49263200c3', 'Nsksjdb', 'Harry Potter', '3', '1'),
('d1c31dca90cb4c5047121fe5b396a8a3250a1de6', 'Jonathan', 'general', '1', '0'),
('ef07335f0470506a4d61909044f40d15f7f51a52', 'jon', 'general', '2', '1'),
('f89ad8afee4aba9a863bcc6d36bb6f70fa54c31c', 'Nick', 'music', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE `shopping` (
  `id` int(3) NOT NULL,
  `item` text NOT NULL,
  `checkoff` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shopping`
--

INSERT INTO `shopping` (`id`, `item`, `checkoff`) VALUES
(55, 'fsdf', 0),
(56, 'eggs', 0),
(57, 'cheese', 0),
(58, 'beer', 0),
(59, 'chips', 1),
(60, 'bread', 1),
(61, 'hotdogs', 0),
(62, 'mouthwash', 0),
(63, 'toilet roll', 0),
(64, 'bin bags', 0),
(65, 'milk', 0),
(66, 'coffee', 0),
(67, 'credibility', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coffee`
--
ALTER TABLE `coffee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highscores`
--
ALTER TABLE `highscores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qcategories`
--
ALTER TABLE `qcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qhighscores`
--
ALTER TABLE `qhighscores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `questsession`
--
ALTER TABLE `questsession`
  ADD PRIMARY KEY (`session`);

--
-- Indexes for table `quizsession`
--
ALTER TABLE `quizsession`
  ADD PRIMARY KEY (`session`);

--
-- Indexes for table `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coffee`
--
ALTER TABLE `coffee`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `highscores`
--
ALTER TABLE `highscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `qcategories`
--
ALTER TABLE `qcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qhighscores`
--
ALTER TABLE `qhighscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `quest`
--
ALTER TABLE `quest`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `uid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shopping`
--
ALTER TABLE `shopping`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`jedw`@`localhost` EVENT `AutoDeleteSession` ON SCHEDULE AT '2023-04-20 07:52:26' ON COMPLETION PRESERVE ENABLE DO DELETE FROM quizsession WHERE 1 = 1$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
