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


-- unique, primary key, foreign key : 유일한 데이터
-- pk : primary key :중복되는 데이터는 불허
-- nn : not null : null값을 허용하지 않는다.( 데이터가 무조건 들어와야 한다.)
-- uq : unique : 중복되는 데이터는 불허
-- b : 바이너리 파일 저장
-- un : unsigned : 양수만 
-- tinyint = -128 ~ 0 ~ 127에 un 적용 : 0 ~ 255
-- zf : zerofill
-- ai : auto increament : 자동증가
-- g : auto increament의 다른 형태


-- DDL : db, table : 주로 관리자 ,선임들의 업무 alter
-- DML : data : 후임들
-- DCL : 접근 권한, 커밋/롤백

-- 컬럼 추가
alter table table1 add tel varchar(50);
desc table1;
-- 컬럼 삭제
alter table table1 drop tel;
-- 컬럼 타입 변경
alter table table1 modify tel int;
-- 컬럼 이름 변경
 alter table table1 change tel tele int;
 
-- 데이터 수정
update table1 set
	name ='HDH'
where 1=1
	and seq = 3;

-- 데이터 삭제
delete from table1
where 1=1
	seq=3;
    
-- 전체 데이터 삭제
truncate table1;
 