INSERT INTO Section ([Name], [Description]) VALUES
('Programming', 'Books about programming'),
('AI', 'Artificial Intelligence books'),
('Databases', 'Database systems'),
('Networking', 'Network fundamentals'),
('Security', 'Cyber security books');

INSERT INTO Author ([Name], BirthDate) VALUES
('Robert Martin', '1952-12-05'),
('Andrew Ng', '1976-04-18'),
('Martin Fowler', '1963-12-18'),
('James Gosling', '1955-05-19'),
('Eric Evans', '1965-09-15');

INSERT INTO Book (Title, PublishYear, Price, CopiesCount, SectionId, AuthorId) VALUES
('Clean Code', '2008-01-01', 450.00, 3, 1, 1),
('Machine Learning', '2018-01-01', 600.00, 2, 2, 2),
('Refactoring', '2019-01-01', 500.00, 4, 1, 3),
('Java Basics', '2017-01-01', 350.00, 5, 1, 4),
('DDD', '2020-01-01', 550.00, 2, 5, 5),
('Deep Learning', '2016-01-01', 700.00, 3, 2, 2),
('AI Superpowers', '2018-05-01', 550.00, 2, 2, 2),
('Neural Networks and Learning Machines', '2010-01-01', 650.00, 4, 2, 2);

INSERT INTO Customer ([Name], Email, [Address]) VALUES
('Ahmed Ali', 'ahmed@mail.com', 'Cairo'),
('Sara Mohamed', 'sara@mail.com', 'Giza'),
('Omar Hassan', 'omar@mail.com', 'Alexandria'),
('Mona Adel', 'mona@mail.com', 'Tanta'),
('Youssef Khaled', 'youssef@mail.com', 'Mansoura');


INSERT INTO Phone ([Number], CustomerId) VALUES
('01011111111', 1),
('01022222222', 2),
('01033333333', 3),
('01044444444', 4),
('01055555555', 5);


INSERT INTO [Status] (StatusType) VALUES
('Borrowed'),
('Returned'),
('Late'),
('Lost'),
('Reserved');


INSERT INTO Borrow (ReturnDate, BookId, CustomerId, StatusId) VALUES
('2026-02-10', 1, 1, 1),
('2026-02-12', 2, 2, 2),
('2026-02-15', 3, 3, 3),
('2026-02-18', 4, 4, 1),
('2026-02-20', 5, 5, 4);

