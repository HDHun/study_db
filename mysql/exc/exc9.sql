insert into codeGroup (
seq
,name
) values (
'infra003'
,'성별'
);

select *from codeGroup;
select *from code;

insert into code (
code
,name
,codeGroup_seq
) values (
'3'
,'kt'
,'infra003'
);

select
a.seq
,a.name
,b.code
,b.name
from codeGroup a
left join code b on b.codeGroup_seq = a.seq
;insert into codeGroup (
seq
,name
) values (
'infra003'
,'성별'
);

select *from codeGroup;
select *from code;

insert into code (
code
,name
,codeGroup_seq
) values (
'3'
,'기타'
,'infra003'
);
