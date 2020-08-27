Drop database if exists prs;
Create database prs;
Use prs;

DROP USER IF EXISTS prs_user@localhost;
CREATE USER prs_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON prs.* TO prs_user@localhost;

Create table user (
ID 			      integer 		   primary key auto_increment,
UserName 	      varchar(20) 	  not null unique,
Password 	      varchar(10) 	  not null,
FirstName 	      varchar(20) 	  not null,
LastName 	      varchar(20) 	  not null,
PhoneNumber       varchar(12)     not null,
Email             varchar(75)     not null,
IsReviewer        TinyInt         not null,
IsAdmin           TinyInt         not null)   
;

Create table vendor (
ID                INT             primary key auto_increment,
Code              varchar(10)     not null unique,
Name              varchar(255)    not null,
Address           varchar(255)    not null,
City              varchar(255)      not null,
State             varchar(2)      not null,
Zip               varchar(5)      not null,
PhoneNumber       varchar(12)     not null,
Email             varchar(100)    not null)
;

Create table request (
ID                INT             primary key auto_increment,
UserID            INT             not null,
Description       varchar(100)    not null,
Justification     varchar(255)    not null,
DateNeeded        DATE            not null,
DeliveryMode      varchar(25)     not null,
Status            varchar(20)     not null,
Total             DECIMAL(10,2)   not null,
SubmittedDate     DATETIME        not null,
ReasonForRejection varchar(100),
FOREIGN KEY (userID) references user(ID))
; 

Create table product (
ID                INT             primary key auto_increment,
VendorID          INT             not null,
PartNumber        varchar(50)     not null,
Name              varchar(150)    not null,
Price             DECIMAL(10,2)   not null,
Unit              varchar(255),  
PhotoPath         varchar(255),
FOREIGN KEY (vendorID) references vendor(ID),
CONSTRAINT vendor_part unique (vendorID, PartNumber))
;

Create table lineitem (
ID                INT             primary key auto_increment,
RequestID         INT             not null,
ProductID         INT             not null,
Quantity          INT             not null,
FOREIGN KEY (productID) references product(ID),
FOREIGN KEY (requestID) references request(ID),
CONSTRAINT req_pdt unique (requestID, productID))
;

insert into user (UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin)
 values
('SYSTEM', 'xxxxx', 'System', 'System', 'XXX-XXX-XXXX', 'system@test.com', 0, 0),
('DKimmel', '123!@#', 'Dana', 'Kimmel', '513-555-1234', 'dkimmel@gmail.com', 0, 0)
;

insert into vendor (Code, Name, Address, City, State, Zip, PhoneNumber, Email)
values
('BB-1001', 'Best Buy', '100 Best Buy Street', 'Louisville', 'KY', 40207, '502-111-9099', 'geeksquad@bestbuy.com'),
('AP-1001', 'Apple Inc', '1 Infinite Loop', 'Cupertino', 'CA', 95014, '800-123-4567', 'genius@apple.com'),
('AM-1001', 'Amazon', '410 Terry Ave. North', 'Seattle', 'WA', 98109, '206-266-1000', 'amazon@amazon.com'),
('ST-1001', 'Staples', '9550 Mason Montgomery Rd', 'Mason', 'OH', 45040, '513-754-0235', 'support@orders.staples.com'),
('MC-1001', 'Micro Center', '11755 Mosteller Rd', 'Sharonville', 'OH', 45241, '513-782-8500', 'support@microcenter.com')
;

insert into product (VendorID, PartNumber, Name, Price, Unit, Photopath)
values
(1, 'ME280LL', 'iPad mini 2', '296.99', null, null),
(2, 'ME280LL', 'iPad mini 2', '299.99', null, null),
(3, '105810', 'Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap', '8.99', '1 Ream/500 Sheets', null),
(4, '122374', 'Hammermill Copy Plus Copy Paper, 8 1/2" x 11", Case', '29.99', '1 Case, 10 Reams, 500 Sheets per ream', null),
(4, '784551', 'Logitech M325 Wireless Optical Mouse, Ambidextrous, Black', '14.99', null, null),
(4, '382995', 'Staples Mouse Pad, Black', '2.99', null, null),
(4, '2122178', 'AOC 24-Inch Class LED Monitor', '99.99', null, null),
(4, '2460649', 'Laptop HP Notebook 15-AY163NR', '529.99', null, null),
(4, ' 2256788', 'Laptop Dell 13552-3240BLK 15.6', '239.99', null, null),
(4, 'IM12M9520', 'Laptop Acer Acer Aspire One Cloudbok 14"', '224.99', null, null),
(4, '940600', 'Canon imageCLASS Copier (D530)', '99.99', null, null),
(5, '228148', 'Acer Aspire ATC-780A-UR12 Desktop Computer', '399.99', null, '/images/AcerAspireDesktop.jpg'),
(5, '279364', 'Lenovo IdeaCentre All-In-One Desktop', '349.99', null, '/images/LenovoIdeaCenter.jpg')
;






