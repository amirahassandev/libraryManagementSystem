
	-- Display all books
select * from Book 


	-- Display books with their respective sections
select b.Title as Book_Title, s.[Name] as Section_Name
from Book b
join Section s on s.SectionId = b.SectionId


	-- Display borrowed books
select Customer.[Name] as Customer_Name, [status].statusType
from Borrow 
join Book on borrow.BookId = book.BookId
join Customer on borrow.CustomerId = Customer.CustomerId
join [Status] on [status].StatusId = borrow.statusId


	-- Display details of each borrowing, including customer name and book
select Book.Title, Customer.[Name] as Customer_Name, Borrow.borrowDate, Borrow.ReturnDate, [status].statusType
from Borrow 
join Book on borrow.BookId = book.BookId
join Customer on borrow.CustomerId = Customer.CustomerId
join [Status] on [status].StatusId = borrow.statusId



select * from Section 
	-- Display books within a specific section
select b.Title as Book_Title
from Book b
join Section s on s.SectionId = b.SectionId
where s.[Name] = 'AI'


