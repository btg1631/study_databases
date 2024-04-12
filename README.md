# ✏️ study_databases

## ☑ 사용기술
<img alt="이미지명" src ="https://img.shields.io/badge/PYTHON-3776AB.svg?&style=for-the-badge&logo=PYTHON&logoColor=white"/> <img alt="이미지명" src ="https://img.shields.io/badge/visual studio code-007ACC.svg?&style=for-the-badge&logo=visualstudiocode&logoColor=white"/>
<img alt="이미지명" src ="https://img.shields.io/badge/MySQL-4479A1.svg?&style=for-the-badge&logo=MySQL&logoColor=white"/> <img alt="이미지명" src ="https://img.shields.io/badge/W3Schools-04AA6D.svg?&style=for-the-badge&logo=W3Schools&logoColor=white"/> <img alt="이미지명" src ="https://img.shields.io/badge/MongoDB-47A248.svg?&style=for-the-badge&logo=MongoDB&logoColor=white"/>

<details> 
  <summary>mongodb functions</summary>
  
- insertOne() : db.collection_name.insertOne({...});
- delete : db.posts.deleteMany({});
- find : db.fruits.find({});
- find : db.posts.find({},{_id:1, title:1, category:1, likes:1});   조건을 주고 찾기
- update : db.posts.updateMany({}, { $inc : {likes : 10} }); 한번에 증가시킴
```
{
  acknowledged: true,
  insertedId: ObjectId("657bf12e77238e20069959b9")
}
- 변수 + 부등식 + 기준값
```
</details>

## [프로그래머스(PROGRAMMERS)](https://school.programmers.co.kr/learn/challenges?order=acceptance_desc&page=1&levels=1&languages=mysql)
<details> 
  <summary>MYSQL</summary>
  <p></p>

|구분|소스|문제설명|출처|
|--|--|--|--|
|SELECT|[MYSQL](./docs/codingtests/59035.sql)|역순 정렬하기|[프로그래머스 59035](https://school.programmers.co.kr/learn/courses/30/lessons/59035)|
|SELECT|[MYSQL](./docs/codingtests/59036.sql)|아픈 동물 찾기|[프로그래머스 59036](https://school.programmers.co.kr/learn/courses/30/lessons/59036)|
|SELECT|[MYSQL](./docs/codingtests/59037.sql)|어린 동물 찾기|[프로그래머스 59037](https://school.programmers.co.kr/learn/courses/30/lessons/59037)|
|SELECT|[MYSQL](./docs/codingtests/59403.sql)|동물의 아이디와 이름|[프로그래머스 59403](https://school.programmers.co.kr/learn/courses/30/lessons/59403)|
|SELECT|[MYSQL](./docs/codingtests/59404.sql)|여러 기준으로 정렬하기|[프로그래머스 59404](https://school.programmers.co.kr/learn/courses/30/lessons/59404)|
|SELECT|[MYSQL](./docs/codingtests/59405.sql)|상위 n개 레코드|[프로그래머스 59405](https://school.programmers.co.kr/learn/courses/30/lessons/59405)|
|SELECT|[MYSQL](./docs/codingtests/131112.sql)|강원도에 위치한 생산공장 목록 출력하기|[프로그래머스 131112](https://school.programmers.co.kr/learn/courses/30/lessons/131112)|
|SELECT|[MYSQL](./docs/codingtests/131535.sql)|조건에 맞는 회원수 구하기|[프로그래머스 131535](https://school.programmers.co.kr/learn/courses/30/lessons/131535)|
|SELECT|[MYSQL](./docs/codingtests/132203.sql)|흉부외과 또는 일반외과 의사 목록 출력하기|[프로그래머스 132203](https://school.programmers.co.kr/learn/courses/30/lessons/132203)|
|SELECT|[MYSQL](./docs/codingtests/132201.sql)|12세 이하인 여자 환자 목록 출력하기|[프로그래머스 132201](https://school.programmers.co.kr/learn/courses/30/lessons/132201)|
|SELECT|[MYSQL](./docs/codingtests/133024.sql)|인기있는 아이스크림|[프로그래머스 133024](https://school.programmers.co.kr/learn/courses/30/lessons/133024)|


|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)|
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)|
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)|
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)|
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)|

</details>


## 💻 SQL
- 어쩌구저쩌구설명

|*|제목|code|설명|비고|
|--|--|--|--|--|
|1|CREATE|[STUDY_CREATE](./docs/sqls/STUDY_DATABASE_CREATE.sql)|CREATE||
|2|SELECT|[STUDY_SELECT](./docs/sqls/STUDY_NOTICES_SELECT.sql)|SELECT||
|3|UPDATE|[STUDY_UPDATE](./docs/sqls/STUDY_NOTICES_UPDATE.sql)|UPDATE||
|4|DELETE|[STUDY_DELETE](./docs/sqls/STUDY_NOTICES_DELETE.sql)|DELETE||
|5|where|[select_where](./docs/sqls/select_where_w3schools.sql)|where|w3schools|
|6|groupby|[select_groupby](./docs/sqls/select_groupby_w3schools.sql)|groupby, having, alias|w3schools|
|7|orderby|[select_orderby](./docs/sqls/select_orderby_w3schools.sql)|orderby, 정렬|w3schools|
|8|IS NULL|[IS NULL](./docs/sqls/IS_NULL_Operator.sql)|IS NULL, IS NOT NULL|w3schools|
|9|JOIN|[JOIN](./docs/sqls/JOIN.sql)|JOIN, INNER JOIN, LEFT JOIN|w3schools|
|10|CASE_Syntax|[CASE_END](./docs/sqls/CASE_Syntax.sql)|CASE ~ END|w3schools|
|11|common_codes|[common_codes](./docs/sqls/common_codes_sample.sql)|common_codes||



## QUEST
|*|제목|code|설명|비고|
|--|--|--|--|--|
|0|select_group_havings_orderby|[select_group_havings_orderby](./docs/sqls/quests/select_group_havings_orderby.sql)|설명|서브 쿼리 사용|
|0||[](./docs/sqls/quests/.sql)|설명|서브 쿼리 사용|
|0|common_codes|[common_codes](./docs/sqls/quests/common_codes.sql)|설명|common code 사용|
|0||[](./docs/sqls/quests/.sql)|설명|서브 쿼리 사용|
|0||[](./docs/sqls/quests/.sql)|설명|서브 쿼리 사용|
