CREATE TABLE `category` (
  `category_id` int PRIMARY KEY AUTO_INCREMENT,
  `category_name` varchar(50)
);

CREATE TABLE `publisher` (
  `publisher_id` int PRIMARY KEY AUTO_INCREMENT,
  `publisher_name` varchar(50),
  `publication_language` varchar(15),
  `publication_type` varchar(20)
);

CREATE TABLE `location` (
  `location_id` int PRIMARY KEY AUTO_INCREMENT,
  `shelf_no` varchar(10),
  `shelf_name` varchar(50),
  `floor_no` int
);

CREATE TABLE `author` (
  `author_id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(20),
  `last_name` varchar(20)
);

CREATE TABLE `book` (
  `book_id` int PRIMARY KEY AUTO_INCREMENT,
  `isbn_code` varchar(15),
  `book_title` varchar(50),
  `category_id` int,
  `publisher_id` int,
  `publication_year` date,
  `book_edition` int,
  `copies_total` int,
  `copies_available` int,
  `location_id` int
);

CREATE TABLE `book_author` (
  `book_id` int,
  `author_id` int
);

CREATE TABLE `member_status` (
  `active_status_id` int PRIMARY KEY AUTO_INCREMENT,
  `account_type` varchar(20),
  `account_status` varchar(10),
  `membership_start_date` date,
  `membership_end_date` date
);

CREATE TABLE `member` (
  `member_id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(20),
  `last_name` varchar(20),
  `city` varchar(20),
  `mobile_no` varchar(10),
  `email_id` varchar(50),
  `date_of_birth` date,
  `active_status_id` int
);

CREATE TABLE `library_staff` (
  `issue_by_id` int PRIMARY KEY AUTO_INCREMENT,
  `staff_name` varchar(50),
  `staff_designation` varchar(20)
);

CREATE TABLE `book_issue` (
  `issue_id` int PRIMARY KEY AUTO_INCREMENT,
  `book_id` int,
  `member_id` int,
  `issue_date` date,
  `return_date` date,
  `issue_status` varchar(20),
  `issued_by_id` int
);

CREATE TABLE `fine_due` (
  `fine_id` int PRIMARY KEY AUTO_INCREMENT,
  `member_id` int,
  `issue_id` int,
  `fine_date` date,
  `fine_total` int
);

CREATE TABLE `fine_payment` (
  `fine_payment_id` int PRIMARY KEY AUTO_INCREMENT,
  `member_id` int,
  `payment_date` date,
  `payment_amount` int
);

CREATE TABLE `book_request_status` (
  `available_status_id` int PRIMARY KEY AUTO_INCREMENT,
  `available_status` varchar(10),
  `nearest_available_date` date
);

CREATE TABLE `book_request` (
  `request_id` int PRIMARY KEY AUTO_INCREMENT,
  `book_id` int,
  `member_id` int,
  `request_date` date,
  `available_status_id` int
);

ALTER TABLE `book` ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

ALTER TABLE `book` ADD CONSTRAINT `fk_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`);

ALTER TABLE `book` ADD CONSTRAINT `fk_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

ALTER TABLE `book_author` ADD CONSTRAINT `fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

ALTER TABLE `book_author` ADD CONSTRAINT `fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`);

ALTER TABLE `member` ADD CONSTRAINT `fk_active_status_id` FOREIGN KEY (`active_status_id`) REFERENCES `member_status` (`active_status_id`);

ALTER TABLE `book_issue` ADD CONSTRAINT `fk_issue_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

ALTER TABLE `book_issue` ADD CONSTRAINT `fk_issue_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `book_issue` ADD CONSTRAINT `fk_issue_issued_by_id` FOREIGN KEY (`issued_by_id`) REFERENCES `library_staff` (`issue_by_id`);

ALTER TABLE `fine_due` ADD CONSTRAINT `fk_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `fine_due` ADD CONSTRAINT `fk_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `book_issue` (`issued_by_id`);

ALTER TABLE `fine_payment` ADD CONSTRAINT `fk_payment_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `book_request` ADD CONSTRAINT `fk_request_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

ALTER TABLE `book_request` ADD CONSTRAINT `fk_request_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `book_request` ADD CONSTRAINT `fk_request_available_status_id` FOREIGN KEY (`available_status_id`) REFERENCES `book_request_status` (`available_status_id`);
