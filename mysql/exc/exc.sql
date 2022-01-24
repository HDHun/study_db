use world;

show tables;

-- 주석

-- 테이블생성
create table member (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
    
);


create table member2 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
    
);
-- 테이블 삭제

drop table member;
drop table member2;











create table book (
    name varchar(100),
    publisher varchar(100),
    author varchar(100),
    price varchar(100)
);

drop table book;


drop table member2;

