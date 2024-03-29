CREATE DATABASE STUDY_USERSwithSQL;

-- CREATE TABLE `GENDER` (
-- 	`GENDER_ID`	VARCHAR(50)	NOT NULL,
-- 	`GENDER_USER`	VARCHAR(255)	NULL
-- );
INSERT INTO GENDER 
(GENDER_ID, GENDER_USER)
VALUES 
('GENDER_01', '남')
, ('GENDER_02', '여');

-- CREATE TABLE `HOBBY` (
-- 	`HOBBY_ID`	VARCHAR(50)	NOT NULL,
-- 	`HOBBY_USER`	VARCHAR(255)	NULL
-- );
INSERT INTO HOBBY
(HOBBY_ID, HOBBY_USER)
VALUES
('HOBBY_01', '등산')
, ('HOBBY_02', '요리')
, ('HOBBY_03', '음악감상')
, ('HOBBY_04', '수영')
, ('HOBBY_05', '영화감상')
, ('HOBBY_06', '자전거')
, ('HOBBY_07', '요가')
, ('HOBBY_08', '그림 그리기')
, ('HOBBY_09', '독서')
, ('HOBBY_10', '공원 산책') ;

-- CREATE TABLE `ADDRESS` (
-- 	`ADDRESS_ID`	VARCHAR(50)	NOT NULL,
-- 	`ADDRESS_USER`	VARCHAR(255)	NULL
-- );
INSERT INTO ADDRESS
(ADDRESS_ID, ADDRESS_USER)
VALUES
('ADDRESS_01', '서울특별시 강남구')
, ('ADDRESS_02', '경기도 수원시')
, ('ADDRESS_03', '인천광역시 부평구')
, ('ADDRESS_04', '대전광역시 서구')
, ('ADDRESS_05', '경상북도 포항시 북구');

-- CREATE TABLE `USER_HOBBY` (
-- 	`USER_HOBBY_ID`	VARCHAR(50)	NOT NULL,
-- 	`HOBBY_ID2`	VARCHAR(50)	NOT NULL,
-- 	`USER_ID`	VARCHAR(50)	NOT NULL,
-- );
INSERT INTO USER_HOBBY
(USER_HOBBY_ID, HOBBY_ID2, USER_ID)
VALUES
('USER_HOBBY_01', 'HOBBY_01', 'USER_01')
, ('USER_HOBBY_02', 'HOBBY_02', 'USER_01')
, ('USER_HOBBY_03', 'HOBBY_03', 'USER_02')
, ('USER_HOBBY_04', 'HOBBY_04', 'USER_02')
, ('USER_HOBBY_05', 'HOBBY_05', 'USER_03')
, ('USER_HOBBY_06', 'HOBBY_06', 'USER_03')
, ('USER_HOBBY_07', 'HOBBY_07', 'USER_04')
, ('USER_HOBBY_08', 'HOBBY_08', 'USER_04')
, ('USER_HOBBY_09', 'HOBBY_09', 'USER_05')
, ('USER_HOBBY_10', 'HOBBY_10', 'USER_05');

-- CREATE TABLE `USER_ADDRESS` (
-- 	`USER_ADDRESS_ID`	VARCHAR(50)	NOT NULL,
-- 	`ADDRESS_ID2`	VARCHAR(50)	NOT NULL,
-- 	`USER_ID`	VARCHAR(50)	NOT NULL,
-- );
INSERT INTO USER_ADDRESS
(USER_ADDRESS_ID, ADDRESS_ID2, USER_ID)
VALUES
('USER_ADDRESS_01', 'ADDRESS_01', 'USER_01')
, ('USER_ADDRESS_01', 'ADDRESS_02', 'USER_01')
, ('USER_ADDRESS_01', 'ADDRESS_02', 'USER_02')
, ('USER_ADDRESS_01', 'ADDRESS_03', 'USER_03')
, ('USER_ADDRESS_01', 'ADDRESS_04', 'USER_04')
, ('USER_ADDRESS_01', 'ADDRESS_04', 'USER_05')
, ('USER_ADDRESS_01', 'ADDRESS_05', 'USER_05');

-- CREATE TABLE `USER` (
-- 	`USER_ID`	VARCHAR(50)	NOT NULL,
-- 	`GENDER_ID`	VARCHAR(50)	NOT NULL,
-- 	`USER_NAME`	VARCHAR(255)	NULL,
-- 	`USER_AGE`	VARCHAR(255)	NULL,
-- 	`USER_PHONENUMBER`	VARCHAR(255)	NULL,
-- 	`USER_EMAIL`	VARCHAR(255)	NULL
-- );
INSERT INTO USER
(USER_ID, GENDER_ID, USER_NAME, USER_AGE, USER_PHONENUMBER, USER_EMAIL)
VALUES 
('USER_01', 'GENDER_01', '홍길동', '30', '010-1234-5678', 'hong@example.com')
, ('USER_02', 'GENDER_02', '김영희', '25', '010-9876-5432', 'kim@example.com')
, ('USER_03', 'GENDER_01', '이철수', '35', '010-2468-1357', 'lee@example.com')
, ('USER_04', 'GENDER_01', '박민준', '28', '010-8642-9137', 'park@example.com')
, ('USER_05', 'GENDER_02', '임지영', '32', ' 010-5793-6241', 'lim@example.com');


-- INSERT 완료

-- PARENT KEY 알고 있을 때
DELETE FROM USER_HOBBY
WHERE USER_ID = 'USER_02';

DELETE FROM USER_ADDRESS
WHERE USER_ID = 'USER_02';

DELETE FROM USER
WHERE USER_ID = 'USER_02';

-- DELETE 완료

UPDATE ADDRESS
SET ADDRESS_USER = '대전광역시 동구'
WHERE ADDRESS_ID = 'ADDRESS_04';

-- UPDATE 완료

SELECT *
FROM USER;

SELECT *
FROM ADDRESS;

