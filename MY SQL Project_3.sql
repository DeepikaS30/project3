-- 1. create database
create database BooksDB1;
-- 2. create table
create table BooksDB1.Books(
Books_id int primary key auto_increment,
Books_Title varchar(50),
Books_Author varchar(50),
Books_genre varchar(100),
publication_year int ,
Book_price int 
);
-- 3. create table 2
create table BooksDB1.Author(
SI_NO int primary key auto_increment,
Author_name varchar(50),
Book_Title varchar(50),
foreign key(SI_NO) References Books(Books_id)
);
select * from BooksDB1.Books;
select * from BooksDB1.Author;

-- 4. insert into values for table 1
insert into BooksDB1.Books values
(1,"The Red and The Black","Stendhal","Fiction",1830,1000),
(2,"Listen to your Heart","Ruskin Bond","Adventure",2022,1050),
(3,"Wrist Assured","G.R.Viswanath","Autobiography",2022,1001),
(4,"Stories I Must Tell","Kabir Bedi","The Journey of Actor",2021,299),
(5,"Manohar Parrikar","Nitin Gokhale","Simple Life",2021,500);
-- 5. insert into values for table 2
insert into BooksDB1.Author values
(1,"Mahatma Gandhi","The Story of Truth"),
(2,"Time Machine","H.G Wells"),
(3,"Romeo and Julit","William Shakespeare"),
(4,"Republic","Plato"),
(5,"Descent of maan","Charles Darwin");
select distinct Books_Title from BooksDB1.Books;
select distinct Book_Title from BooksDB1.Author;
-- 6. update the given condition of the table
update BooksDB1.Books set Books_Title="Gitanjali" where Books_id=5;
update BooksDB1.Books set Books_Author="Rabindhranath Tagore" where Books_id=5;
-- 7. delete the table for given condition
delete from BooksDB1.Author where SI_NO=5;
use BooksDB1;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
inner join Author
on Books.Books_id=Author.SI_NO;
select * from BooksDB1.Books;
select * from BooksDB1.Author;
use BooksDB1;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
left join Author
on Books.Books_id=Author.SI_NO;
use BooksDB1;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
right join Author
on Books.Books_id=Author.SI_NO;