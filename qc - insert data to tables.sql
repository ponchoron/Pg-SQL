insert into client
	values('amy', '111-111111', '123 road1, city1'),
	      ('jack', '222-222222', 'the hill'),
	      ('bill', '333-333333','456 road 3, city2'),
	      ('jen', '444-444444','543 road 4, city1'),
	      ('humpty dumpty', '123-456789', 'wall in kingdom');

insert into billing
	values(1, '01/12/2007', 'danny', 6, 'all'),
	      (4, '05/13/2016', 'sam', 5, 'aaa'),
	      (4, '02/20/2016', 'danny', 5, 'bbb'),
	      (2, '05/12/2016', 'amy', 4, 'aaa'),
	      (2, '05/20/2016', 'amy', 5, 'bbb'),
	      (2, '06/10/2016', 'helen', 3, 'ccc'),
	      (2, '06/12/2016', 'rose', 4, 'ccc'),
	      (3, '03/07/2016', 'helen', 5, 'aaa'),
	      (3, '04/10/2016', 'jo', 5, 'aaa'),
	      (4, '05/12/2016', 'sam', 2, 'aaa'),
	      (5, '03/10/2016', 'jo', 7, 'bbb'),
	      (10, '04/10/2016', 'danny', 3, 'meeting client'),
	      (10, '05/02/2016', 'rose', 6, 'evidance'),
	      (10, '05/29/2016', 'sam', 4, 'evidance'),
	      (10, '06/01/2016', 'helen', 6, 'prepare court case'),
	      (10, '06/10/2016', 'rose', 3, 'prepare court case'),
	      (10, '06/28/2016', 'danny', 7, 'court'),
	      (10, '06/28/2016', 'helen', 7, 'court'),
	      (10, '06/30/2016', 'danny', 1, 'payment and close case');

insert into file
	values(1, 'amy vs. dave', 'divorce file', '02/27/2007','amy', 'danny'),
	      (2, 'jack and jill', 'problems on the hill', NULL,'jack', 'amy'),
	      (3, 'file 3', 'company', NULL,'bill', 'helen'),
	      (4, 'file 4', 'house', NULL,'jen', 'danny'),
	      (5, 'file 5', 'description', NULL,'bill', 'jo'),
	      (6, 'file 6', 'description 2', NULL,'bill', 'jo'),
	      (7, 'jack is black', 'coloring', '04/23/2016','jack', 'helen'),
	      (8, 'file 2', 'house', '11/11/2013','jack', 'jo'),
	      (10, 'the great fall of humpty dumpty', 'injury', '06/30/2016','humpty dumpty', 'danny');

insert into lawyer
	values('danny', '04/23/1994', 700, '04/23/1994'),
	      ('jo', '6/15/2004', 500, '08/22/2010'),
	      ('sam', '12/12/2010', 300, NULL),
	      ('Helen', '04/23/1994', 700, '04/23/1994'),
	      ('amy', '11/11/2009', 500, '01/01/2014'),
	      ('rose', '03/07/2016', 300, NULL);
		  
insert into lonfile
	values(2, 'jo', 'resp1'),
	      (2, 'helen', 'resp2'),
	      (2, 'rose', 'resp3'),
	      (3, 'amy', 'resp1'),
	      (3, 'jo', 'resp2'),
	      (3, 'sam', 'resp3'),
	      (3, 'rose', 'resp3'),
	      (4, 'sam', 'resp1'),
	      (5, 'sam', 'resp2'),
	      (5, 'amy', 'resp1'),
	      (10, 'helen', 'co-rep'),
	      (10, 'sam', 'getting evidence'),
	      (10, 'rose', 'support'),
	      (3, 'danny', 'supervising'),
	      (7, 'jo', 'resp1');