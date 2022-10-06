Create database CNTT_Watch
go
use CNTT_Watch
go 
create table Account
(
	UserName nvarchar(50) not null primary key,
	PassWord nvarchar(50) not null,
	Type nvarchar(20) not null
)
go
create table Category
(
	ID int not null primary key,
	NameCategory nvarchar(50) not null,
	Country nvarchar(50) not null
)
go
create table Orders
(
	ID int not null primary key,
	OrderDate date not null,
	Confirm date null,
	CustomerName nvarchar(50) not null,
	PhoneNumber nvarchar(10) not null,
	CusAddress nvarchar(100) not null,
)
go
create table OrderDetail
(
	OrderID int not null,
	ProductID int not null,
	Price float not null,
	Quantity int not null,
	CONSTRAINT fk_Order
	FOREIGN KEY (OrderID)
	REFERENCES Orders (ID),
	CONSTRAINT fk_Product
	FOREIGN KEY (ProductID)
	REFERENCES Orders (ID),
)
go
create table Product
(
	ID int not null primary key,
	
)
