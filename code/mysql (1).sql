/***  root 관리자 계정으로 접속 ***/

SELECT * FROM basicjsp.namecard;

SELECT * FROM basicjsp.MemberRegister;

SELECT * FROM basicjsp.BookRegister;


/* 0. DB 및 계정 삭제  */
DROP DATABASE IF EXISTS basicjsp;
DROP USER IF EXISTS jspid@'%';
-- DROP USER IF EXISTS jspid@localhost;

/* 1. 계정 생성, DB 생성 및 접근권한 부여  */
create user jspid@'%' identified with mysql_native_password by 'jsppass';
-- create user jspid@localhost identified with mysql_native_password by 'jsppass';
create database basicjsp;    
grant all privileges on basicjsp.* to jspid@'%' with grant option;
show databases;

/* 참고: 개별권한 부여 */
-- grant select, insert, update, delete, create, drop, alter 
-- on basicjsp.* to jspid@'%'
-- with grant option;


/*** jspid 사용자 계정으로 접속 ***/

/* 참고: CMD 창에서 접속시 */ 
-- mysql -u jspid -p basicjsp
-- pw: jsppass

show databases;
use basicjsp;

/* 2. Table 생성  */
create table test (
	num_id int not null primary key auto_increment, 
	title varchar(50) not null, 
	content text not null
);

create table MemberRegister (
	email varchar(20) not null primary key,
	passwd varchar(20) not null,
	name varchar(10) not null,
	major varchar(20) not null,
	number varchar(20) not null,
	university varchar(30),
	grade varchar(10)
);

create table BookRegister (
	email varchar(20) not null primary key,
	book_title varchar(20) not null,
	university varchar(20) not null,
	major varchar(10) not null,
	grade varchar(20) not null,
	subject varchar(20) not null,
	price varchar(30)
);

create table Scratch (
	score varchar(20) not null primary key,
	underlinec varchar(20),
	notec varchar(10),
	cleanc varchar(20),
	namec varchar(20),
	pagec varchar(30)
);

show tables;
desc memberTBL;

/* 3. Table 데이터 입력 */ 
insert into memberTBL values ('hongkd', 'happy', '홍길동', now());
insert into memberTBL values ('kimkd', 'happy', '김길동', now());
insert into memberTBL values ('choijw', 'happy', '최재원', now());
insert into member1 values ('hongkd', 'happy', '홍길동', '111111', '1111111', 'hongkd@ks.ac.kr', '홍길동의 블로그', now());

/* 3. Table 데이터 조회, 수정, 삭제 */ 
select * from memberTBL;
select * from member1; 

select * from memberTBL where id='hongkd';
select * from memberTBL where name like '%길동%';
update memberTBL set id='choejw' where id='choijw';
delete from memberTBL where id='choejw';

/* 5. MySQL 상에서 Auto Commit 해제, 설정, 확인 방법 */
set autocommit=0;               -- 해제: 0, 설정: 1 
select @@autocommit;            -- 해제: 0, 설정: 1 
begin;                          -- autocommit=1 이라도 rollback 가능
rollback;                       -- 롤백: rollback, 실행: commit

/*참고. JSP 상에서 Auto Commit 해제, 설정 및 트랜잭션 처리 */
/*
conn.setAutoCommit(false);      -- 해제: false, 설정: true 
conn.commit();                  -- 트랜잭션 실행 
conn.rollback();                -- 트랜잭션 철회  
*/
