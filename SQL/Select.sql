select * from Section 

select * from Author 

select * from Book 

select b.Title as Book_Title, s.[Name] as Section_Name, a.[Name] as Author_Name
from Book b
join Section s on s.SectionId = b.SectionId
join Author a on a.AuthorId = b.AuthorId


select * from Customer 


select * from Phone 

select c.[Name], c.Email, c.RegisterDate, c.[Address], p.Number
from Phone p
join Customer c on p.CustomerId = c.CustomerId


select * from [Status] 

select * from Borrow 

select Borrow.borrowDate, Borrow.ReturnDate, Book.Title, Customer.[Name] as Customer_Name, [status].statusType
from Borrow 
join Book on borrow.BookId = book.BookId
join Customer on borrow.CustomerId = Customer.CustomerId
join [Status] on [status].StatusId = borrow.statusId
