use world;


insert into book (
	seq
    ,bookImage
    ,bookHeader
    ,bookName
    ,writer
    ,bookCompany
    ,publishingDate
    ,price 
    ,quantity
    ,review
    ,arrival
    ,event 
    ,relatedProducts 
    ,ebookPrice)
    values (
    1
    ,'image'
    ,'이지스퍼블리싱-Do it! 시리즈'
    ,'[도서]Do it! HTML+CSS+자바스크립트 웹 표준의 정석 한권으로 끝내는 웹 기본 교과서'
    ,'고경희 저'
    ,'이지스퍼블리싱'
    ,'2021-01-01 12:00:00'
    ,27000
    ,'판매지수 49,899'
    ,'회원리뷰(15건)'
    ,'2021-01-25 23:49:49'
    ,'[대학생X취준생]지치지 않는 자, 점수를 잡는다! - 리유저블텀블러/한국문학 담요/슬라이드 파일 증정'
    ,'관련상품 : 중고상품 11개'
    ,19000
    );
    
    drop table book;