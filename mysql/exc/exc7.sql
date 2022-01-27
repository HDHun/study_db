


insert into book4 (
name
) values (
'4차산업혁명의 이해'
);



insert into review2 (
comment
,book4_no
) values (
'우와 책 재미 있습니다'
,2
);

select *from review2;



select
a.name
, (select count(no) from review2 where book4_no = a.no) as count
from book4  a;

select*from book4;
select*from review2;



select
a.comment
,b.name
from review2 as a
left join book4 as b on b.no = a.book4_no;






