use world;

create table cafe (
	seq int,
    cafename varchar(45),
    tableNumber int(100),
    chairNumber int(100),
    address varchar(45),
    area varchar(45),
    representativeName varchar(45)
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
	1
    , '별바당'
    , 1
    , 2
    , '서울시 어디읍'
    , '1'
    , '장동건'
);

-- varchar는 '또는"으로 감싼다
-- int는 안사용해도 된다.
-- 컴마는 앞쪽을 선호 :는 호불호가 갈린다.

-- 데이터 조회

select *from cafe;
