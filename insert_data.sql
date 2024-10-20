/* 1. Insert data into table tbl_author */
use lib_mngmt_system;
select * from author;
insert into author (first_name, last_name)
values('PK', 'Nag'), ('JP', 'Holman'), ('APJ', 'Kalam'), ('E', 'Sreedharan'),('RL',
'Norton'),
('Amrita', 'Pritam'), ('Mahadevi', 'Verma'), ('Sudha', 'Murthy'), ('Ruskin', 'Bond'),
('Robert', 'Frost'),
('Rabindranath', 'Tagore'), ('Jack', 'Canfield'), ('Dale', 'Carnegie'), ('Swami',
'Vivekanand'), ('Munshi', 'Premchand'),
('Stephen', 'Covey'), ('F', 'Beer'), ('R', 'Johnston'), ('Amish', 'Tripathi'),
('Stephen', 'Timoshenko'),
('Anton', 'Chekhov'), ('Leo', 'Tolstoy'), ('Mahatma', 'Gandhi'), ('JL',
'Nehru'),('Nelson', 'Mandela');

/* 2. Insert data into table tbl_category */
select * from category;
insert into category (category_name)
values('Engineering&Technology'), ('Spritualism'), ('Self_Development'),
('Literature'), ('History'),
('Crime'), ('Comedy'), ('Romantic'), ('Folk_Tales'), ('Fiction'),
('Non_Fiction'), ('Poetry'), ('Drama'), ('Adventure'), ('Mythology');

/* 3. Insert data into table tbl_publisher */
select * from publisher;
insert into publisher (publisher_name, publication_language, publication_type)
values('ABC','English','Journals'), ('ABC','Hindi','Journals'),
('CBS','English','Handbooks'), ('CBS','Hindi','Handbooks'),
('XYZ','English','Research_Reports'), ('XYZ','Hindi','Research_Reports'),
('XYZ','English','Books'), ('XYZ','Hindi','Books'),
('ZAB','English','Magzines'),('ZAB','Hindi','Magzines');

/* 4. Insert data into table tbl_location */
select * from location;
insert into location (shelf_no, shelf_name, floor_no)
values('10001', 'Engineering_Mechanical',1), ('10001', 'Engineering_Mechanical',2),
('10001', 'Engineering_Mechanical',3),
('10002', 'Engineering_Electrical',1), ('10002', 'Engineering_Electrical',2),
('10002', 'Engineering_Electrical',3),
('10003', 'Engineering_Computers',1), ('10003', 'Engineering_Computers',2), ('10003',
'Engineering_Computers',3),
('20001', 'Philosophy',1), ('20001', 'Philosophy',2),('20001', 'Philosophy',3),
('20001', 'Philosophy',4),
('20002', 'Spritualism',1), ('20002', 'Spritualism',2), ('20002', 'Spritualism',3),
('20002', 'Spritualism',4),
('30001', 'Self_Development',1), ('30001', 'Self_Development',2), ('30001',
'Self_Development',3),
('30002', 'Competitions',1), ('30002', 'Competitions',2), ('30002', 'Competitions',3),
('30003', 'Literature',1), ('30003', 'Literature',2), ('30003',
'Literature',3),('30003', 'Literature',4),
('40001', 'Journals',1), ('40001', 'Journals',2), ('40001', 'Journals',3);

/* 5. Insert data into table tbl_book */
select * from book;
insert into book (isbn_code, book_title, category_id, publisher_id, publication_year, book_edition, copies_total, copies_available, location_id)
values('9876543210001', 'Thermodynamics', 1, 7, '2016',3,15,10,1),
('9876543210002', 'Heat & Mass Transfer', 1, 7, '2014',2,5,2,2),
('9876543210003', 'Wings of Fire', 11, 7, '1999',1,10,5,18),
('9876543210004', 'Kinematics of Machines', 1, 7, '2012',3,5,5,3),
('9876543210005', 'Khaton ka Safarnama', 8, 8, '1985',1,3,3,24),
('9876543210006', 'Black Rose', 8, 7, '1970',1,1,1,24),
('9876543210007', 'Kagaz Te Kanvas', 8, 8, '1980',1,5,3,25),
('9876543210008', 'Gillu', 4, 8, '1960',1,2,2,26),
('9876543210009', 'How I taught my grandmother to read', 4, 7, '1990',1,5,5,26),
('9876543210010', 'Three Thousand Stitches', 4, 7, '2010',1,5,5,27),
('9876543210011', 'Wise and Otherwise', 4, 7, '2012',1,5,5,26),
('9876543210012', 'The Room on the Roof', 4, 7, '1970',1,5,5,27),
('9876543210013', 'Happy Birthday, World', 11, 7, '2000',1,1,1,27),
('9876543210014', 'The Road Not Taken', 12, 7, '1920',1,1,1,24),
('9876543210015', 'Geetanjali', 12, 7, '1920',3,1,1,25),
('9876543210016', 'The 25 Success Principles', 3, 7, '1980',6,10,5,18),
('9976543210002', 'How to stop worrying and start living', 3, 7, '2005',10,10,2,19),
('9976543210003', 'Karma Yoga', 11, 7, '1980',5,2,2,11),
('9976543210004', 'Godan', 10, 8, '2012',10,2,2,24),
('9976543210005', 'Premashram', 10, 8, '2010',10,2,2,24),
('9976543210006', 'The Seven Habits of Highly Effective People', 3, 7,
'2000',15,10,2,20),
('9876543210007', 'Mechanics', 1, 8, '2000',3,3,3,3),
('9876543210008', 'The Immortals of Meluha', 15, 8, '2012',1,3,3,27),
('9876543210009', 'Strengh of Materials', 1, 8, '2000',6,2,2,2),
('9876543210010', 'The Seagull', 13, 8, '1960',1,1,1,27),
('9876543210011', 'War and Peace', 13, 8, '1970',21,1,1,26),
('9876543210012', 'Harijan', 11, 1, '1932',1,1,1,29),
('9876543210013', 'The Story of my experiments with Truth', 11, 8, '1925',1,1,1,26),
('9876543210014', 'The Discovery of India', 5, 8, '1945',1,3,3,24),
('9876543210015', 'Long walk to freedom', 5, 8, '1999',1,2,2,25),
('9876543210016', 'Beyond Religion', 2, 8, '2010',1,2,2,15),
('9876543210017', 'Ikigai', 2, 8, '2010',1,2,0,15),
('9976443210004', 'Gaban', 10, 8, '2012',10,2,0,24),
('9976549210004', 'Idgah', 10, 8, '2012',10,2,0,24);

/* 6. Insert data into table tbl_member_status */
select * from member_status;
insert into member_status (account_type, account_status, membership_start_date, membership_end_date)
values('student','active','2018','2020'),
('student','active','2019','2021'),
('student','inactive','2016','2017'),
('student','inactive','2015','2016'),
('professional','active','2020','2022'),
('professional','active','2018','2022'),
('professional','inactive','2015','2018'),
('professional','inactive','2016','2016'),
('staff','active','2020','2022'),
('staff','active','2020','2022'),
('staff','inactive','2015','2016');

/* 7. Insert data into table tbl_member*/
select * from members;
insert into members(first_name, last_name, city, mobile_no, email_id, date_of_birth, active_status_id)
values('A','Kumar','Delhi','9999999999','a@xyz.com','1996-05-08',1),
('B','Kumar','Delhi','9999999999','b@xyz.com','1990-03-10',5),
('C','Kumar','Noida','9999999999','c@xyz.com','2000-03-03',3),
('A','Singh','Noida','9999999999','as@xyz.com','2002-06-08',2),
('B','Singh','Noida','9999999999','bs@xyz.com','1985-03-16',4),
('B','Singh','Noida','9999999999','bs@xyz.com','1985-12-11',6),
('C','Singh','Delhi','9999999999','cs@xyz.com','1990-11-25',7),
('X','Patel','Delhi','9999999999','x@xyz.com','1990-09-30',9),
('Y','Arora','Delhi','9999999999','y@xyz.com','1985-02-02',10),
('Z','Khanna','Delhi','9999999999','z@xyz.com','1970-03-29',11);


/* 8. Insert data into table tbl_library_staff*/
select * from library_staff;
insert into library_staff (staff_name, staff_designation)
values('X Patel', 'Librarian'),
('Y Arora', 'Librarian'),
('R Tiwari', 'Head Librarian');

/* 9. Insert data into table tbl_book_issue*/
select * from book_issue;
insert into book_issue (book_id, member_id, issue_date, return_date, issue_status, issued_by_id)
values(7, 1, '2022-11-02', '2022-11-18', 'overdue', 1),
(8, 1, '2022-11-01', '2022-11-15', 'underdue', 1),
(1, 2, '2022-11-10', '2022-11-25', 'underdue', 1),
(10, 2, '2022-11-12', '2022-11-27', 'underdue', 2),
(18, 2, '2022-11-12', '2022-11-27', 'underdue', 2),
(2, 4, '2022-10-10', '2022-10-25', 'overrdue', 1),
(15, 5, '2022-10-10', '2022-10-25', 'overdue', 2);

/* 10. Insert data into table tbl_fine_due*/
select * from fine_due;
insert into fine_due (member_id,issue_id, fine_date, fine_total)
values(5,12,'2022-11-20',25),
(4,11,'2022-11-20',25),
(1,6,'2022-11-20',150);

/* 11. Insert data into table tbl_fine_payment*/
select * from fine_payment;
insert into fine_payment (member_id, payment_date, payment_amount)
values(5,'2022-11-20',25),
(4,'2022-11-20',25),
(1,'2022-11-20',150);


/* 12. Insert data into table tbl_book_request_status*/
select * from book_request_status;
insert into book_request_status (available_status, nearest_available_date)
values('not_avail','2022-11-22'),
('not_avail','2022-11-30'),
('not_avail','2022-11-25'),
('available','2022-11-16');

/* 13. Insert data into table tbl_book_request*/
select * from book_request;
insert into book_request (book_id, member_id, request_date, available_status_id)
values(33,1,'2022-11-15',3),
(34,1,'2022-11-15',4),
(33,2,'2022-11-15',4),
(32,4,'2022-11-15',5),
(25,5,'2022-11-15',6);