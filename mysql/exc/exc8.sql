
insert into book6 (
name
) values (
''
);

insert into writer (
name
) values (
''
);


select *from book6;
select *from writer;
select *from book6_writer;

insert into book6_writer (
book6_no1
,writer_no1
) values (
4
,5
);

select
a.no
,a.name
,b.writer_no1
,(select name from writer c where c.no = b.writer_no1) as writer_name
from book6 a
left join book6_writer b on b.book6_no1 = a.no
;

