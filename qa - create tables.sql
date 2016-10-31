create table client
	(cname varchar(40),
	 tel char(11),
	 address varchar(50),
	 primary key (cname));

create table billing
	(fid numeric(7,0),
	 bdate date,
	 lname varchar(40),
	 hours int,
	 descr varchar(100),
	 primary key (fid, bdate, lname));

create table file
	(fid numeric(7,0),
	 fname varchar(100),
	 description varchar(1024),
	 status date,
	 cname varchar(40),
	 lname varchar(40),
	 primary key (fid));
	 
create table lawyer
	(lname varchar(40),
	 sdate date,
	 hbilling int,
	 partner date,
	 primary key (lname));

create table lonfile
	(fid numeric(7,0),
	 lname varchar(40),
	 responsibility varchar(50),
	 primary key (fid, lname));
	 