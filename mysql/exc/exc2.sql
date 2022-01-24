insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)
    values (
	1
    , '별바당'
    , 1
    , 2
    , '서울시 어디읍'
    , '1'
    , '장동건'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	2
    , '테라로사'
    , 2
    , 3
    , '부산'
    , '1'
    , '개미'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	3
    , '폴바셋'
    , 4
    , 4
    , '수원'
    , '3'
    , '곰'
);

insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	4
    , '듁스'
    , 3
    , 3
    , '광명'
    , '4'
    , '뱀'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	5
    , '백미당'
    , 4
    , 7
    , '서울'
    , '2'
    , '강아지'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	6
    , '이디야커피'
    , 10
    , 10
    , '평택'
    , '4'
    , '친칠라'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	7
    , '스타벅스'
    , 9
    , 9
    , '서울'
    , '2'
    , '병아리'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	8
    , '탐앤탐스'
    , 6
    , 6
    , '천안'
    , '4'
    , '애벌레'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	9
    , '메가커피'
    , 4
    , 4
    , '일산'
    , '6'
    , '고양이'
);
insert into cafe (
	seq
    ,cafename
    ,tableNumber
    ,chairNumber
    ,address
    ,area
    ,representativeName)

  values (
	10
    , '툇마루카페'
    , 20
    , 20
    , '강릉'
    , '7'
    , '물개'
);
select *from cafe;

select *from cafe where seq =4;

select *from cafe where cafename ='듁스' and address ='광명';

select *from cafe where seq =4 or seq = 3;

select *from cafe where area >2;
select *from cafe where area <2;
select *from cafe where area >=2;
select *from cafe where area <=2;
select *from cafe where area <>2;


select *from cafe where cafename like '%라로%';
select *from cafe where cafename like '%라로';
select *from cafe where cafename like '라로%';

