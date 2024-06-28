-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 02:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mess_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `sno` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`sno`, `fname`, `lname`, `email`, `password`, `mobile`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', 'admin@123', 9988776655);

-- --------------------------------------------------------

--
-- Table structure for table `attendance1`
--

CREATE TABLE `attendance1` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance1`
--

INSERT INTO `attendance1` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Present'),
(2, 2, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance2`
--

CREATE TABLE `attendance2` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance2`
--

INSERT INTO `attendance2` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Present'),
(2, 2, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance3`
--

CREATE TABLE `attendance3` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance3`
--

INSERT INTO `attendance3` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Absent'),
(2, 2, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance4`
--

CREATE TABLE `attendance4` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance4`
--

INSERT INTO `attendance4` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Present'),
(2, 2, '2021-04-17', 'Present'),
(3, 3, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sno` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `rating` varchar(100) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sno`, `uid`, `date`, `rating`, `feedback`) VALUES
(2, 2, '2021-04-16', 'Good', 'Food is awesome'),
(3, 1, '2021-04-16', 'Excellent', 'Delicious food.');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `sno` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  `meal1` varchar(250) NOT NULL,
  `meal2` varchar(250) NOT NULL,
  `meal3` varchar(250) NOT NULL,
  `meal4` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`sno`, `day`, `meal1`, `meal2`, `meal3`, `meal4`) VALUES
(1, 'Monday', 'One grapefruit, Two poached eggs (or fried in a non-stick pan)', 'Chicken breast (5-ounce portion), baked or roasted (not breaded or fried), Large garden salad with tomato and onion with one cup croutons, topped with one tablespoon oil and vinegar (or salad dressing)', 'One-half piece of pita bread, Glass of water or herbal tea', 'Two cup steamed broccoli, One cup of brown rice, Small garden salad with one cup spinach leaves, tomato, and onion topped with two tablespoons oil and vinegar or salad dressing'),
(2, 'Tuesday', 'One whole-wheat English muffin with two tablespoons peanut butter, One orange, Large glass (12 ounces) non-fat milk, One cup of black coffee or herbal tea', 'A turkey sandwich (six ounces of turkey breast meat, large tomato slice, green lettuce and mustard on two slices of whole wheat bread\r\nOne cup low-sodium vegetable soup', 'One cup (about 30) grapes, Glass of water or herbal tea', 'Five-ounce sirloin steak, One cup mashed potatoes, One cup cooked spinach, One cup green beans'),
(3, 'Wednesday', 'One medium bran muffin, One serving turkey breakfast sausage, One orange, One cup non-fat milk', 'Low sodium chicken noodle soup with six saltine crackers, One medium apple', 'One apple, One slice Swiss cheese, Sparkling water with lemon or lime slice', '8-ounce serving of turkey breast meat, One cup baked beans, One cup cooked carrots, One cup cooked kale'),
(4, 'Thursday', 'One cup whole wheat flakes with one cup non-fat milk and one teaspoon sugar, One banana, One slice whole-grain toast with one tablespoon peanut butter, One cup of black coffee or herbal tea', 'Tuna wrap with one wheat flour tortilla, one-half can water-packed tuna (drained), one tablespoon mayonnaise, lettuce, and sliced tomato\r\nOne sliced avocado, One cup non-fat milk', 'One cup cottage cheese (1-percent fat), One fresh pineapple slice, Four graham crackers, Sparkling water with lemon or lime slice', 'One serving lasagna, Small garden salad with tomatoes and onions topped with one tablespoon salad dressing, One cup non-fat milk'),
(5, 'Friday', 'One piece of French toast with one tablespoon maple syrup, One scrambled or poached egg', 'Veggie burger on a whole grain bun, One cup northern (or other dry) beans, One cup non-fat milk', 'One apple, One pita with two tablespoons hummus, Sparkling water with lemon or lime slice', 'One trout filet, One cup green beans, One cup brown rice, One small garden salad with two tablespoons salad dressing'),
(6, 'Saturday', 'One cup corn flakes with two teaspoons sugar and one cup non-fat milk, One banana, One hard-boiled egg', 'One cup whole wheat pasta with one-half cup red pasta sauce, Medium garden salad with tomatoes and onions and two tablespoons salad dressing', 'One and one-half cup cottage cheese, One fresh peach', 'Four and one-half ounce serving of pork loin,Small garden salad with tomatoes and onions topped with two tablespoons oil and vinegar (or salad dressing), One small baked sweet potato'),
(7, 'Sunday', 'One cup cooked oatmeal with one-half cup blueberries, one-half cup non-fat milk, and one tablespoon almond slivers', 'Six-ounce baked chicken breast, Large garden salad with tomatoes and onions and two tablespoons salad dressing, One baked sweet potato', 'ne cup raw broccoli florets, One cup raw sliced carrot, Two tablespoons veggie dip or salad dressing', '3-ounce serving of baked or grilled salmon, One-half cup black beans, One cup Swiss chard, One cup brown rice, One whole wheat dinner roll with a pat of butter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `fee_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `fname`, `lname`, `email`, `password`, `mobile`, `address`, `fee_status`) VALUES
(1, 'ashok Kumar', 'Meena', 'ashok@gmail.com', 'ashok@123', 7742424214, 'ashok address goes here...', 1),
(2, 'rahul', 'Meena', 'rahul@gmail.com', 'rahul@123', 9942549875, 'rahul address goes here...', 1),
(3, 'Rohit', 'Sharma', 'rohit@gmail.com', 'rohit@123', 9999999998, 'Rohit address...', 1),
(5, 'Alice', 'Johnson', 'alice.johnson@example.com', 'alice@123', 5551234567, '123 Main Street, Anytown, USA', 0),
(6, ' David', 'Smith', 'david.smith@example.com', 'david@123', 5552345678, '456 Elm Street, Springfield, USA', 0),
(7, 'Emily', 'Brown', 'emily.brown@example.com', 'emily@123', 5553456789, '789 Oak Avenue, Smalltown, USA', 0),
(8, 'Michael', 'Jones', 'michael.jones@example.com', 'michael@123', 5554567890, '1011 Pine Road, Suburbia, USA', 0),
(9, 'Sarah', 'Martinez', 'sarah.martinez@example.com', 'sarah@123', 5555678901, '1213 Cedar Lane, Countryside, USA', 0),
(10, 'Jason', 'Taylor', 'jason.taylor@example.com', 'jason@123', 5556789012, '1415 Maple Drive, Townsville, USA', 0),
(11, 'Rachel', 'Anderson', 'rachel.anderson@example.com', 'rachel@123', 5557890123, '1617 Birch Street, Villagetown, USA', 0),
(12, 'Christopher', 'White', 'christopher.white@example.com', 'christopher@123', 5558901234, '1819 Walnut Avenue, Riverside, USA', 0),
(13, 'Lauren', 'Clark', 'lauren.clark@example.com', 'lauren@123', 5559012345, '2021 Pinecrest Drive, Laketown, USA', 0),
(14, 'Kevin', 'Walker', 'kevin.walker@example.com', 'kevin@123', 5550123456, '2223 Oakwood Lane, Mountainview, USA', 0),
(15, 'Jessica', 'Perez', 'jessica.perez@example.com', 'jessica@123', 5551234567, '2425 Elm Avenue, Hilltop, USA', 0),
(16, 'Brian', 'Garcia', 'brian.garcia@example.com', 'brian@123', 5552345678, '2627 Maple Road, Seaside, USA', 0),
(17, 'Amanda', 'Rodriguez', 'amanda.rodriguez@example.com', 'amanda@123', 5553456789, '2829 Birch Lane, Lakeside, USA', 0),
(18, 'Matthew', 'Hernandez', 'matthew.hernandez@example.com', 'matthew@123', 5554567890, '3031 Cedar Street, Downtown, USA', 0),
(19, 'Samantha', 'Martinez', 'samantha.martinez@example.com', 'samantha@123', 5555678901, '3233 Pine Drive, Uptown, USA', 0),
(20, 'Tyler', 'Lopez', 'tyler.lopez@example.com', 'tyler@123', 5556789012, '3435 Elm Court, Midtown, USA', 0),
(21, 'Brittany', 'Gonzalez', 'brittany.gonzalez@example.com', 'brittany@123', 5557890123, '3637 Maple Lane, Metropolis, USA', 0),
(22, 'Daniel', 'Rodriguez', 'daniel.rodriguez@example.com', 'daniel@123', 5558901234, 'Birch Street, Downtown, USA', 0),
(23, 'Megan', 'Perez', 'megan.perez@example.com', 'megan@123', 5559012345, '4041 Cedar Avenue, Outskirts, USA', 0),
(24, 'Nicholas', 'Sanchez', 'nicholas.sanchez@example.com', 'nicholas@123', 5550123456, '4243 Pine Road, Farmland, USA', 0),
(25, 'Ashley', 'Ramirez', 'ashley.ramirez@example.com', 'ashley@123', 5551234567, '4445 Elm Lane, Hometown, USA', 0),
(26, 'Justin', 'Torres', 'justin.torres@example.com', 'justin@123', 5552345678, '4647 Maple Drive, Suburbia, USA', 0),
(27, 'Taylor', 'Flores', 'taylor.flores@example.com', 'taylor@123', 5553456789, '4849 Birch Avenue, Countryside, USA', 0),
(28, 'Heather', 'Rivera', 'heather.rivera@example.com', 'heather@123', 5554567890, '5051 Cedar Street, Townsville, USA', 0),
(29, 'Joshua', 'Scott', 'joshua.scott@example.com', 'joshua@123', 5555678901, '5253 Pine Lane, Villagetown, USA', 0),
(30, 'Stephanie', 'Mitchell', 'stephanie.mitchell@example.com', 'stephanie@123', 5556789012, '5455 Elm Road, Riverside, USA', 0),
(31, 'Ryan', 'Barnes', 'ryan.barnes@example.com', 'ryan@123', 5557890123, '5657 Maple Avenue, Laketown, USA', 0),
(32, 'Nicole', 'Green', 'nicole.green@example.com', 'nicole@123', 5558901234, '5859 Birch Lane, Mountainview, USA', 0),
(33, 'Jacob', 'Allen', 'jacob.allen@example.com', 'jacob@123', 5559012345, '6061 Cedar Drive, Hilltop, USA', 0),
(34, 'Samantha', 'Nelson', 'samantha.nelson@example.com', 'samantha@123', 5550123456, '6263 Pine Court, Seaside, USA', 0),
(35, 'Brandon', 'King', 'brandon.king@example.com', 'brandon@123', 5551234567, '6465 Elm Lane, Lakeside, USA', 0),
(36, 'Emily', 'Cooper', 'emily.cooper@example.com', 'emily@123', 5552345678, '6667 Maple Road, Downtown, USA', 0),
(37, 'Justin', 'Hill', 'justin.hill@example.com', 'justin@123', 5553456789, '6869 Birch Avenue, Uptown, USA', 0),
(38, 'Rachel', 'Ward', 'rachel.ward@example.com', 'rachel@123', 5554567890, '7071 Cedar Street, Midtown, USA', 0),
(39, 'Nicholas', 'Brooks', 'nicholas.brooks@example.com', 'nicholas@123', 5555678901, '7273 Pine Lane, Metropolis, USA', 0),
(40, 'Hannah', 'Cooper', 'hannah.cooper@example.com', 'hannah@123', 5556789012, '7475 Elm Avenue, Downtown, USA', 0),
(41, 'Brandon', 'Parker', 'brandon.parker@example.com', 'brandon@123', 5557890123, '7677 Maple Drive, Outskirts, USA', 0),
(42, 'Kimberly', 'Wood', 'kimberly.wood@example.com', 'kimberly@123', 5558901234, '7879 Birch Lane, Farmland, USA', 0),
(43, 'Austin', 'Hayes', 'austin.hayes@example.com', 'austin@123', 5559012345, '8081 Cedar Road, Hometown, USA', 0),
(44, 'Kayla', 'Rivera', 'kayla.rivera@example.com', 'kayla@123', 5550123456, '8283 Pine Lane, Suburbia, USA', 0),
(45, 'Ryan', 'Ward', 'ryan.ward@example.com', 'ryan@123', 5551234567, '8485 Elm Drive, Countryside, USA', 0),
(46, 'Sarah', 'Ramirez', 'sarah.ramirez@example.com', 'sarah@123', 5552345678, '8687 Maple Street, Townsville, USA', 0),
(47, 'Andrew', 'Watson', 'andrew.watson@example.com', 'andrew@123', 5553456789, '8889 Birch Court, Villagetown, USA', 0),
(48, 'Brittany', 'Hill', 'brittany.hill@example.com', 'brittany@123', 5554567890, '9091 Cedar Lane, Riverside, USA', 0),
(49, 'Daniel', 'Powell', 'daniel.powell@example.com', 'daniel@123', 5555678901, '9293 Pine Avenue, Laketown, USA', 0),
(50, 'Taylor', 'Long', 'taylor.long@example.com', 'taylor@123', 5556789012, '9495 Elm Street, Mountainview, USA', 0),
(51, 'Ashley', 'Morris', 'ashley.morris@example.com', 'ashley@123', 5557890123, '9697 Maple Drive, Hilltop, USA', 0),
(52, 'Kyle', 'Washington', 'kyle.washington@example.com', 'kyle@123', 5558901234, '9899 Birch Road, Seaside, USA', 0),
(53, 'Megan', 'Peterson', 'megan.peterson@example.com', 'megan@123', 5559012345, '10001 Cedar Avenue, Lakeside, USA', 0),
(54, 'Cody', 'Howard', 'cody.howard@example.com', 'cody@123', 5550123456, '10203 Pine Lane, Downtown, USA', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance1`
--
ALTER TABLE `attendance1`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance2`
--
ALTER TABLE `attendance2`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance3`
--
ALTER TABLE `attendance3`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance4`
--
ALTER TABLE `attendance4`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance1`
--
ALTER TABLE `attendance1`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance2`
--
ALTER TABLE `attendance2`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance3`
--
ALTER TABLE `attendance3`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance4`
--
ALTER TABLE `attendance4`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
