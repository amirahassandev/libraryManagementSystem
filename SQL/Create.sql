create database LibrariesManagementSys

use LibrariesManagementSys

Create table Section(
	SectionId int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Description] nvarchar(255)
)

Create table Author(
	AuthorId int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	BirthDate DateTime
)

Create table Book(
	BookId int primary key identity(1,1),
	Title nvarchar(50) not null,
	PublishYear DateTime,
	Price Decimal(10,2) not null,
	CopiesCount int default 1,
	SectionId int,
	AuthorId int,
	Constraint FK_BOOK_SECTION foreign key (SectionId) references Section(SectionId), 
	Constraint FK_BOOK_AUTHOR foreign key (AuthorId) references Author(AuthorId)
)

Create Table Customer(
	CustomerId int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	Email nvarchar(255) not null unique,
	RegisterDate DateTime default getDate(),
	[Address] nvarchar(255) not null
)

Create table Phone(
	PhoneId int primary key identity(1,1),
	[Number] nvarchar(50) unique not null,
	CustomerId int,
	Constraint FK_PHONE_CUSTOMER foreign key (CustomerId) references Customer(CustomerId), 
)


Create table [Status](
	StatusId int primary key identity(1,1),
	StatusType nvarchar(50) unique not null,
)

Create table Borrow(
	BorrowId int primary key identity(1,1),
	BorrowDate DateTime default getDate(),
	ReturnDate DateTime not null,
	BookId int,
	CustomerId int,
	StatusId int,
	Constraint FK_BORROW_BOOK foreign key (BookId) references Book(BookId), 
	Constraint FK_Borrow_CUSTOMER foreign key (CustomerId) references Customer(CustomerId), 
	Constraint FK_Borrow_STATUS foreign key (StatusId) references [Status](StatusId)
)