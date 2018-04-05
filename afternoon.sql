/* select * from InvoiceLine where UnitPrice > 0.99; */

/* SELECT InvoiceDate, Customer.FirstName, Customer.LastName, Total
FROM Customer
Join Invoice ON Invoice.InvoiceId = Customer.CustomerId; */

/* select Customer.FirstName, Customer.LastName, Employee.FirstName, Employee.LastName
From Customer
Join Employee; */

/* select Album.Title, Artist.Name
from Album
Join Artist; */

/* select pt.TrackId
from PlaylistTrack pt
Join Playlist p on p.PlaylistId = pt.PlayListId
where p.Name = 'Music'; */

/* select t.Name
from PlaylistTrack pt
Join Track t on pt.TrackId = t.TrackId
where pt.PlaylistId = 5; */

/* select t.Name, p.Name
from Track t
Join PlaylistTrack pt on t.TrackId = pt.TrackId
Join Playlist p on p.PlaylistId = pt.PlaylistId; */

/* select t.Name, a.Title
from Album a
Join Track t on t.AlbumId = a.AlbumId
Join Genre g on g.GenreId = t.GenreId
where g.Name = 'Alternative'; */

/* select p.Name as Playlist_Name,t.Name as Track_Name,g.Name as Genre_Name,a.Title as Album_Name,ar.Name as Artist_Name
from Artist ar
Join Album a on a.ArtistId = ar.ArtistId
Join Track t on t.AlbumId = a.AlbumId
Join PlaylistTrack pt on pt.TrackId = t.TrackId
Join Playlist p on p.PlaylistId = pt.PlaylistId
Join Genre g on t.GenreId = g.GenreId
where p.Name = 'Music'; */

/* select * 
from Invoice 
where InvoiceId IN (select InvoiceId from InvoiceLine where UnitPrice > 0.99); */

/* select *
from PlaylistTrack
where PlaylistId = (select PlaylistId from Playlist where name = 'Music'); */

/* select *
from Track
where TrackId in (select TrackId from PlaylistTrack where PlaylistId = 5); */

/* select *
from Track
where GenreId in (select GenreId from Genre where Name = 'Comedy'); */

/* select *
from Track
where AlbumId in (select AlbumId from Album where Title = 'FireBall'); */

/* select *
from Track
where AlbumId in (select AlbumId from Album where ArtistId in (select ArtistId from Artist where Name = 'Queen')); */

/* Update Customer
Set Fax = null
where fax is Not null */

/* Update Customer
Set Company = 'Self'
where Company is null; */

/* Update Customer
Set LastName = 'Thompson'
where FirstName = 'Julia' And LastName = 'Barnett'; */

/* update customer
set SupportRepId = 4
where email = 'luisrojas@yahoo.cl'; */

/* update Track
set Composer = 'The darkness around us'
where GenreId = ( select GenreId from Genre where Name = 'Metal') And Composer is null; */

/* select Count(*), g.Name
from Track t
Join Genre g on t.GenreId = g.GenreId
Group by g.Name; */

/* select Count(*), g.Name
from Track t
Join Genre g on t.GenreId = g.GenreId
where g.Name = 'Pop' or g.Name = 'Rock'
group by g.Name; */

/* select ar.Name, count(*)
from Artist ar
Join Album a on ar.ArtistId = a.ArtistId
group by a.ArtistId; */

/* select distinct Composer
from Track; */

/* select distinct BillingPostalCode
from Invoice; */

/* select distinct Company
from Customer; */

/*
Delete
from practice_delete
where Type = 'bronze';

delete
from practice_delete
where Type = 'silver';

delete
from practice_delete
where Value = 150; */

-- drop table if exists users;
-- drop table if exists products;  
-- drop table if exists orders;

-- create table if not exists users
-- ( 
--   userId Serial Primary Key, 
--   Name text,
--   Email text
-- );
-- insert into users(Name,Email)
-- values
-- ('John', 'a@email.com'),
-- ('Jimmy', 'b@email.com'),
-- ('Jacob', 'c@email.com'),
-- ('Jessica', 'd@email.com'),
-- ('Jennifer', 'e@email.com');

-- select * from users;

-- create table if not exists products
-- (
--   productId Serial Primary Key,
--   Name text,
--   Price integer
-- );
-- insert into products(Name,Price)
-- values
-- ('Rock',5),
-- ('Paper',2),
-- ('Scissors',4);

-- select * from products;
-- select * from users;

-- create table if not exists orders
-- (
--   OrderId Serial Primary Key,
--   Qty Integer,
--   ProductId Integer references products(ProductId)
  
-- );
-- insert into orders(Qty,ProductId)
-- values
-- (4,2),
-- (2,3),
-- (3,1),
-- (5,1),
-- (8,3);

-- select * from users;
-- select * from products;
-- select * from orders;

-- select * from orders
-- where orderId = 1;

-- select OrderId,SUM(Qty * Price)
-- from products p
-- join orders o on p.ProductId = o.ProductId
-- group by OrderId;



-- ALTER TABLE orders
-- add column userId Integer references users(userId);

-- select * from orders;

-- update orders
-- set userId = orders.orderId;

-- select * from orders;