use world;
select *from infrMember;
select*from codeGroup;
select*from email;
select*from mobile;
select*from nation;
select*from project;
select*from code;
select*from sns;
select*from address;
select*from recommender;

alter table mobile add primary key(mobileseq);
update mobile set mobileseq = "3" where defaultNy = 0;
insert into project (
projectseq
,projectName
,projectPeriodStart
,projectPeriodEnd
,projectRole
,projectPublisher
,infrMember_seq
) values (
2
,'order_delivery_peristalsis'
,'2022-03-02'
,'2022-05-01'
,'produce'
,'saramin'
,1
);

insert into address (
addressseq
,defaultNY
,addressTypeCd
,address
,infrMember_seq
,zipcode
) values (
2
,0
,2
,'경기도 수원'
,1
,19999
);

insert into passwordQuestion (
passwordquesseq
,passwordQuestion
) values (
2
,'졸업한 학교는?'
);

insert into code (
codeseq
,name
,codeGroup_codegroupseq
) values (
8
,''
,9
);

insert into codeGroup (
codegroupseq
,name
) values (
9
,'hobby'
);

insert into infrMember (
seq
,id
,name
,password
,birth
,genderCd
,FAX
,mobileMarketingCd
,emailMarketingCd
,marryCd
,children
,passwordAnswer
,recommender
,color
,job
,expirationCd
,passwordQuestionCd
,hobbyCd
) values (
7
,'pepsi'
,'콜라'
,'pep24949'
,'2015-4-21'
,1
,'02-555-5555'
,1
,1
,2
,0
,'집'
,3
,'300ss2'
,'student'
,2
,3
,3
);


insert into mobile (
mobileseq
,defaultNy
,mobile_agencyCd
,mobileNumber
,infrMember_Seq
) values (
2
,1
,1
,'010-1234-5678'
,2
);


select *
from infrMember a
left join mobile b on b.mobileseq = a.seq;

select 
a.id
,a.name
,a.birth
,a.genderCd
,(select name from code where codeGroup_codegroupseq = 1 and codeseq = a.genderCd) as gendername
from infrMember a
left join recommender b on b.recommenderseq = a.seq;

insert into recommender (
recommenderseq
,id
,infrMember_seq
) values (
4
,'insect'
,4
);

insert into email (
emailseq
,email
,defaultNy
,infrMember_seq
) values (
3
,'please@naver.com'
,1
,2
);