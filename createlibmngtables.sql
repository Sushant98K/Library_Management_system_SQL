CREATE TABLE `author` (
  `author_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT null,
  `last_name` varchar(20) DEFAULT null
);

CREATE TABLE `book` (
  `book_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `isbn_code` varchar(15) DEFAULT null,
  `book_title` varchar(50) DEFAULT null,
  `category_id` int DEFAULT null,
  `publisher_id` int DEFAULT null,
  `publication_year` year DEFAULT null,
  `book_edition` int DEFAULT null,
  `copies_total` int DEFAULT null,
  `copies_available` int DEFAULT null,
  `location_id` int DEFAULT null
);

CREATE TABLE `book_author` (
  `book_id` int DEFAULT null,
  `author_id` int DEFAULT null
);

CREATE TABLE `book_issue` (
  `issue_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT null,
  `member_id` int DEFAULT null,
  `issue_date` date DEFAULT null,
  `return_date` date DEFAULT null,
  `issue_status` varchar(20) DEFAULT null,
  `issued_by_id` int DEFAULT null
);

CREATE TABLE `book_request` (
  `request_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT null,
  `member_id` int DEFAULT null,
  `request_date` date DEFAULT null,
  `available_status_id` int DEFAULT null
);

CREATE TABLE `book_request_status` (
  `available_status_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `available_status` varchar(10) DEFAULT null,
  `nearest_available_date` date DEFAULT null
);

CREATE TABLE `category` (
  `category_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT null
);

CREATE TABLE `fine_due` (
  `fine_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT null,
  `issue_id` int DEFAULT null,
  `fine_date` date DEFAULT null,
  `fine_total` int DEFAULT null
);

CREATE TABLE `fine_payment` (
  `fine_payment_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT null,
  `payment_date` date DEFAULT null,
  `payment_amount` int DEFAULT null
);

CREATE TABLE `library_staff` (
  `issue_by_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(50) DEFAULT null,
  `staff_designation` varchar(20) DEFAULT null
);

CREATE TABLE `location` (
  `location_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `shelf_no` varchar(10) DEFAULT null,
  `shelf_name` varchar(50) DEFAULT null,
  `floor_no` int DEFAULT null
);

CREATE TABLE `member_status` (
  `active_status_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `account_type` varchar(20) DEFAULT null,
  `account_status` varchar(10) DEFAULT null,
  `membership_start_date` year DEFAULT null,
  `membership_end_date` year DEFAULT null
);

CREATE TABLE `members` (
  `member_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT null,
  `last_name` varchar(20) DEFAULT null,
  `city` varchar(20) DEFAULT null,
  `mobile_no` varchar(10) DEFAULT null,
  `email_id` varchar(50) DEFAULT null,
  `date_of_birth` date DEFAULT null,
  `active_status_id` int DEFAULT null
);

CREATE TABLE `publisher` (
  `publisher_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(50) DEFAULT null,
  `publication_language` varchar(15) DEFAULT null,
  `publication_type` varchar(20) DEFAULT null
);

CREATE INDEX `fk_category_id` ON `book` (`category_id`); 

CREATE INDEX `fk_publisher_id` ON `book` (`publisher_id`);

CREATE INDEX `fk_location_id` ON `book` (`location_id`);

CREATE INDEX `fk_book_id` ON `book_author` (`book_id`);

CREATE INDEX `fk_author_id` ON `book_author` (`author_id`);

CREATE INDEX `fk_issue_book_id` ON `book_issue` (`book_id`);

CREATE INDEX `fk_issue_member_id` ON `book_issue` (`member_id`);

CREATE INDEX `fk_issue_issued_by_id` ON `book_issue` (`issued_by_id`);

CREATE INDEX `fk_request_book_id` ON `book_request` (`book_id`);

CREATE INDEX `fk_request_member_id` ON `book_request` (`member_id`);

CREATE INDEX `fk_request_available_status_id` ON `book_request` (`available_status_id`);

CREATE INDEX `fk_member_id` ON `fine_due` (`member_id`);

CREATE INDEX `fk_issue_id` ON `fine_due` (`issue_id`);

CREATE INDEX `fk_payment_member_id` ON `fine_payment` (`member_id`);

CREATE INDEX `fk_active_status_id` ON `members` (`active_status_id`);

ALTER TABLE `book` ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

ALTER TABLE `book` ADD CONSTRAINT `fk_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

ALTER TABLE `book` ADD CONSTRAINT `fk_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`);

ALTER TABLE `book_author` ADD CONSTRAINT `fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`);

ALTER TABLE `book_author` ADD CONSTRAINT `fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

ALTER TABLE `book_issue` ADD CONSTRAINT `fk_issue_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

ALTER TABLE `book_issue` ADD CONSTRAINT `fk_issue_issued_by_id` FOREIGN KEY (`issued_by_id`) REFERENCES `library_staff` (`issue_by_id`);

ALTER TABLE `book_issue` ADD CONSTRAINT `fk_issue_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

ALTER TABLE `book_request` ADD CONSTRAINT `fk_request_available_status_id` FOREIGN KEY (`available_status_id`) REFERENCES `book_request_status` (`available_status_id`);

ALTER TABLE `book_request` ADD CONSTRAINT `fk_request_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

ALTER TABLE `book_request` ADD CONSTRAINT `fk_request_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

ALTER TABLE `fine_due` ADD CONSTRAINT `fk_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `book_issue` (`issue_id`);

ALTER TABLE `fine_due` ADD CONSTRAINT `fk_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

ALTER TABLE `fine_payment` ADD CONSTRAINT `fk_payment_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

ALTER TABLE `members` ADD CONSTRAINT `fk_active_status_id` FOREIGN KEY (`active_status_id`) REFERENCES `member_status` (`active_status_id`);

