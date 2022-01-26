use sakila;


insert into book2 (
name
,publisher_cd
) values (
'성심당'
,1
);


insert into publisher (
name
) values (
'출판사'
);

select*from book2;
select*from publisher;

select
	a.seq
	,a.name
	,a.publisher_cd
	,b.name
from book2 as a
left join publisher as b on b.seq = a.publisher_cd;

select
	a.seq
	,a.name
	,a.publisher_cd
    ,(select name from publisher where seq = a.publisher_cd)
from book2 as a;

select
	a.seq
	,a.name
	,a.publisher_cd
    ,(select name from publisher where seq = a.publisher_cd) as publisher_cd
from book2 as a;
	
select
	a.seq
	,a.name
	,a.publisher_cd
	,gerPublisherName -- 함수
from book2 as a;
