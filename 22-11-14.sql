-- 1-10장. SQL : Structured Query Language (구조화된 질의어) 연습
-- 2장. SQL

-- 공통사항
-- 한줄 주석
/*
    1장. oracle 설치
    2장. sql 실습
    3장. ....
    -- 여러줄 주석
*/
-- 명령의 끝에는 세미콜론(;)을 작성한다.
-- 일반적으로 대,소문자는 구분하지않는다.

-- 회원정보를 저장하는 테이블을 만들기
-- 아이디 : 인조키-데이터 식별하기 위한 임의로 만든 키
-- 이름
-- 나이
-- 전화번호
-- 주소
-- 이메일

CREATE TABLE userTBL(
    id NUMBER,
    name VARCHAR2(20),
    age NUMBER,
    phone CHAR(13),
    addr VARCHAR2(50),
    email VARCHAR2(30),
    reg_date DATE
);

INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (1, '홍길동', 20, '010-1234-5678', 'gwangju, nam-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (2, '김길동', 21, '010-1234-5679', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (3, '최길동', 22, '010-1234-5680', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (4, '박길동', 23, '010-1234-5681', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (5, '이길동', 24, '010-1234-5682', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (6, '한길동', 24, '010-1234-5683', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (7, '차길동', 25, '010-1234-5684', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);


SELECT*FROM userTBL;

desc itemTBL;

INSERT INTO itemTBL (id, buyer, title, qty, price, selldate)
VALUES (001, 1, '카메라', 1, 100000, SYSDATE);

commit;
