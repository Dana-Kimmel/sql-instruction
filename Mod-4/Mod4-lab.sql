select Name, sales from customer
  where sales >=  30000000 and sales < 40000000;
 
 CREATE TABLE State (
 Code nvarchar(2) not null primary key,
 Name nvarchar(50) not null
 );
 
 Insert state values
 ('AL', 'Alabama'),
 ('CA', 'California'),
 ('HI', 'Hawaii'),
 ('NJ', 'New Jersey'),
 ('NV', 'Nevada'),
 ('OH', 'Ohio'),
 ('TX', 'Texas'),
 ('WA', 'Washington');

  select c.Name, c.City, s.Name
 From Customer c
 join State s 
  on c.State = s.Code;