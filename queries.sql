/*Problem # 1:
Write a query to display all the member id, member name, city, account_type,
account_status, membership start and end date.*/
select m.member_id, m.first_name, m.last_name, m.city, ms.account_type,
ms.account_status,
ms.membership_start_date, ms.membership_end_date
from members m
join member_status ms on m.active_status_id=ms.active_status_id

/*Problem # 2:
Write a query to display the member details whose account is inactive.*/
select m.member_id, m.first_name, m.last_name, m.city, ms.account_type,
ms.account_status,
ms.membership_start_date, ms.membership_end_date
from members m
join member_status ms on m.active_status_id=ms.active_status_id
where account_status='inactive'

/*Problem # 3:
Write a query to display the member details whose account type is student.*/
select m.member_id, m.first_name, m.last_name, m.city, ms.account_type,
ms.account_status,
ms.membership_start_date, ms.membership_end_date
from members m
join member_status ms on m.active_status_id=ms.active_status_id
where account_type='student'

/*Problem # 4:
Write a query to display the member details whose account type is student and account
is inactive.*/
select m.member_id, m.first_name, m.last_name, m.city, ms.account_type,
ms.account_status,
ms.membership_start_date, ms.membership_end_date
from members m
join member_status ms on m.active_status_id=ms.active_status_id
where account_type='student' and account_status='inactive'

/*Problem # 5:
Write a query to display the member details who have fine due.*/
select m.member_id, m.first_name, m.last_name, m.city, f.fine_date, f.fine_total,
ms.account_type, ms.account_status,
ms.membership_start_date, ms.membership_end_date
from members m
join fine_due f on m.member_id=f.member_id
join member_status ms on m.active_status_id=ms.active_status_id

/*Problem- # 6:
Write a query to display the member details who have fine due and account is
inactive.*/
select m.member_id, m.first_name, m.last_name, m.city, f.fine_date, f.fine_total,
ms.account_type, ms.account_status,
ms.membership_start_date, ms.membership_end_date
from members m
join fine_due f on m.member_id=f.member_id
join member_status ms on m.active_status_id=ms.active_status_id
where account_status='inactive'

/*Problem- # 7:
Write a query to display total number of active membership and inactive membership.*/
select count(*) as total_active_members
from members m
join member_status ms on m.active_status_id=ms.active_status_id
where account_status='active'
go
select count(*) as total_inactive_members
from members m
join member_status ms on m.active_status_id=ms.active_status_id
where account_status='inactive'

/*Problem- # 8:
Write a query to display how many books this library owns.*/
select sum(copies_total) as total_books from book

/*Problem- # 9:
Write a query to display how many books are available for borrowing.*/
select sum(copies_available) as books_available_for_borrowing from book

/*Problem- # 10:
Write a query to display categorywise book count*/
select c.category_name, b.copies_total
from category c
join book b on b.category_id=c.category_id
order by b.copies_total desc

/*Problem- # 11:
Write a query to display total engineering & technology books*/
select sum(copies_total) as total_engineering_technology_books
from category c
join book b on b.category_id=c.category_id
where category_name='Engineering&Technology'

/*Problem- # 12:
Write a query to search a book with name 'Three Thousand Stitches'. Is it available
for borrowing?*/
select * from book where book_title='Three Thousand Stitches'

--There are total 5 copies and all 5 copies are available for borrowing
/*Problem- # 13:
Write a query to issue book with book_id=10 to a member with member_id=4*/
insert into tbl_book_issue
values(10,4,'2022-11-20','2022-12-05','underdue',1)
go
update tbl_book set copies_available=copies_available-1
where book_id=10

/*Problem- # 14:
Write a query to return book with book_id=10 to a member with member_id=4*/
update tbl_book_issue set issue_status='returned'
where book_id=10 and member_id=4
go
update book set copies_available=copies_available+1
where book_id=10

/*Problem- # 15:
Write a query to show fine details of member with member name='A Kumar'*/
select m.member_id, m.first_name, m.last_name, m.city, f.fine_date, f.fine_total,
ms.account_type, ms.account_status,
ms.membership_start_date, ms.membership_end_date
from members m
join fine_due f on m.member_id=f.member_id
join member_status ms on m.active_status_id=ms.active_status_id
where m.first_name='A' and m.last_name='Kumar'