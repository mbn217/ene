DROP TABLE IF exists users;
	
CREATE TABLE users (
  id  int not null PRIMARY KEY AUTO_INCREMENT,
  username varchar(100),
  password varchar(50),
  email varchar(100)
);


DROP TABLE IF exists book;
	
CREATE TABLE book (
  id  int not null PRIMARY KEY AUTO_INCREMENT,
  bookTitle varchar(100),
  bookAuthor varchar(50) ,
  bookCategory varchar(50),
  isbn varchar(100),
  publishDate date,
  price double,
  userId int,
  FOREIGN KEY (userId) REFERENCES users(id)
);
	
