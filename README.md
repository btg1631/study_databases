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

## [프로그래머스(PROGRAMMERS)](https://school.programmers.co.kr/learn/challenges?order=acceptance_desc&page=1&languages=mysql)
<details> 
  <summary>MYSQL Lv. 1</summary>
  <p></p>

|구분|소스|문제설명|출처|비고|
|--|--|--|--|--|
|SELECT|[MYSQL](./docs/codingtests/59034.sql)|모든 레코드 조회하기|[프로그래머스 59034](https://school.programmers.co.kr/learn/courses/30/lessons/59034)|*|
|SELECT|[MYSQL](./docs/codingtests/59035.sql)|역순 정렬하기|[프로그래머스 59035](https://school.programmers.co.kr/learn/courses/30/lessons/59035)|DESC|
|SELECT|[MYSQL](./docs/codingtests/59036.sql)|아픈 동물 찾기|[프로그래머스 59036](https://school.programmers.co.kr/learn/courses/30/lessons/59036)||
|SELECT|[MYSQL](./docs/codingtests/59037.sql)|어린 동물 찾기|[프로그래머스 59037](https://school.programmers.co.kr/learn/courses/30/lessons/59037)|NOT IN|
|SELECT|[MYSQL](./docs/codingtests/59403.sql)|동물의 아이디와 이름|[프로그래머스 59403](https://school.programmers.co.kr/learn/courses/30/lessons/59403)||
|SELECT|[MYSQL](./docs/codingtests/59404.sql)|여러 기준으로 정렬하기|[프로그래머스 59404](https://school.programmers.co.kr/learn/courses/30/lessons/59404)||
|SELECT|[MYSQL](./docs/codingtests/59405.sql)|상위 n개 레코드|[프로그래머스 59405](https://school.programmers.co.kr/learn/courses/30/lessons/59405)|LIMIT|
|SELECT|[MYSQL](./docs/codingtests/131112.sql)|강원도에 위치한 생산공장 목록 출력하기|[프로그래머스 131112](https://school.programmers.co.kr/learn/courses/30/lessons/131112)|LIKE|
|SELECT|[MYSQL](./docs/codingtests/131535.sql)|조건에 맞는 회원수 구하기|[프로그래머스 131535](https://school.programmers.co.kr/learn/courses/30/lessons/131535)|DATE_FORMAT, LIKE|
|SELECT|[MYSQL](./docs/codingtests/132203.sql)|흉부외과 또는 일반외과 의사 목록 출력하기|[프로그래머스 132203](https://school.programmers.co.kr/learn/courses/30/lessons/132203)|DATE_FORMAT|
|SELECT|[MYSQL](./docs/codingtests/132201.sql)|12세 이하인 여자 환자 목록 출력하기|[프로그래머스 132201](https://school.programmers.co.kr/learn/courses/30/lessons/132201)|IF NULL|
|SELECT|[MYSQL](./docs/codingtests/133024.sql)|인기있는 아이스크림|[프로그래머스 133024](https://school.programmers.co.kr/learn/courses/30/lessons/133024)||
|SELECT|[MYSQL](./docs/codingtests/144853.sql)|조건에 맞는 도서 리스트 출력하기|[프로그래머스 144853](https://school.programmers.co.kr/learn/courses/30/lessons/144853)|DATE_FORMAT|
|SELECT|[MYSQL](./docs/codingtests/151136.sql)|평균 일일 대여 요금 구하기|[프로그래머스 151136](https://school.programmers.co.kr/learn/courses/30/lessons/151136)|ROUND, AVG|
|SELECT|[MYSQL](./docs/codingtests/133025.sql)|과일로 만든 아이스크림 고르기|[프로그래머스 133025](https://school.programmers.co.kr/learn/courses/30/lessons/133025)|JOIN|
|SELECT|[MYSQL](./docs/codingtests/293258.sql)|잔챙이 잡은 수 구하기|[프로그래머스 293258](https://school.programmers.co.kr/learn/courses/30/lessons/293258)|COUNT, IS NULL|
|SELECT|[MYSQL](./docs/codingtests/276013.sql)|Python 개발자 찾기|[프로그래머스 276013](https://school.programmers.co.kr/learn/courses/30/lessons/276013)|OR|
|SELECT|[MYSQL](./docs/codingtests/164673.sql)|조건에 부합하는 중고거래 댓글 조회하기|[프로그래머스 164673](https://school.programmers.co.kr/learn/courses/30/lessons/164673)|JOIN, DATE_FORMAT|
|SELECT|[MYSQL](./docs/codingtests/298517.sql)|가장 큰 물고기 10마리 구하기|[프로그래머스 298517](https://school.programmers.co.kr/learn/courses/30/lessons/298517)|LIMIT|
|IS NULL|[MYSQL](./docs/codingtests/59407.sql)|이름이 있는 동물의 아이디|[프로그래머스 59407](https://school.programmers.co.kr/learn/courses/30/lessons/59407)|IS NOT NULL|
|IS NULL|[MYSQL](./docs/codingtests/131114.sql)|경기도에 위치한 식품창고 목록 출력하기|[프로그래머스 131114](https://school.programmers.co.kr/learn/courses/30/lessons/131114)|CASE~END, LIKE|
|IS NULL|[MYSQL](./docs/codingtests/131528.sql)|나이 정보가 없는 회원 수 구하기|[프로그래머스 131528](https://school.programmers.co.kr/learn/courses/30/lessons/131528)|COUNT, IS NULL|
|IS NULL|[MYSQL](./docs/codingtests/59039.sql)|이름이 없는 동물의 아이디|[프로그래머스 59039](https://school.programmers.co.kr/learn/courses/30/lessons/59039)|IS NULL|
|IS NULL|[MYSQL](./docs/codingtests/293259.sql)|잡은 물고기의 평균 길이 구하기|[프로그래머스 293259](https://school.programmers.co.kr/learn/courses/30/lessons/293259)|ROUND, AVG, CASE~END, IS NULL|
|SUM, MAX, MIN|[MYSQL](./docs/codingtests/298515.sql)|잡은 물고기 중 가장 큰 물고기의 길이 구하기|[프로그래머스 298515](https://school.programmers.co.kr/learn/courses/30/lessons/298515)|CONCAT, MAX|
|SUM, MAX, MIN|[MYSQL](./docs/codingtests/59415.sql)|최댓값 구하기|[프로그래머스 59415](https://school.programmers.co.kr/learn/courses/30/lessons/59415)|MAX|
|String, Date|[MYSQL](./docs/codingtests/157343.sql)|특정 옵션이 포함된 자동차 리스트 구하기|[프로그래머스 157343](https://school.programmers.co.kr/learn/courses/30/lessons/157343)|LIKE|
|String, Date|[MYSQL](./docs/codingtests/298516.sql)|한 해에 잡은 물고기 수 구하기|[프로그래머스 298516](https://school.programmers.co.kr/learn/courses/30/lessons/298516)|COUNT, DATE_FORMAT, LIKE|
|String, Date|[MYSQL](./docs/codingtests/151138.sql)|자동차 대여 기록에서 장기/단기 대여 구분하기|[프로그래머스 151138](https://school.programmers.co.kr/learn/courses/30/lessons/151138)|DATEDIF, DATE_FORMAT, CASE~END|
</details>


<details open> 
  <summary>MYSQL Lv. 2</summary>
  <p></p>

|구분|소스|문제설명|출처|비고|
|--|--|--|--|--|
|SELECT|[MYSQL](./docs/codingtests/131120.sql)|3월에 태어난 여성 회원 목록 출력하기|[프로그래머스 131120](https://school.programmers.co.kr/learn/courses/30/lessons/131120)|DATE_FORMAT, IS NOT NULL|
|SELECT|[MYSQL](./docs/codingtests/131536.sql)|재구매가 일어난 상품과 회원 리스트 구하기|[프로그래머스 131536](https://school.programmers.co.kr/learn/courses/30/lessons/131536)||
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)||
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)||
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)||
|SELECT|[MYSQL](./docs/codingtests/.sql)||[프로그래머스 ](https://school.programmers.co.kr/learn/courses/30/lessons/)||

</details>

## 💻 SQL(Structured Query Language)
- 데이터베이스에서 데이터를 추출하고 조작하는 데에 사용하는 데이터 처리 언어

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



## 📚 QUEST
|*|제목|code|설명|비고|
|--|--|--|--|--|
|0|DELETE|[DELETE](./docs/sqls/quests/NOTICE_DELETES.sql)|DELETE||
|1|INSERT|[INSERT](./docs/sqls/quests/NOTICE_INSERTS.sql)|INSERT||
|2|USERSwithlnestSQL|[STUDY_USERSwithlnestSQL](./docs/sqls/quests/STUDY_USERSwithlnestSQL.sql)|INSERT, DELETE, UPDATE 수행||
|3|selectwhere|[selectwhereRangeAndEquals](./docs/sqls/quests/selectwhereRangeAndEquals.sql)|WHERE|NOT IN, BETWEEN 사용|
|4|select_group_havings_orderby|[select_group_havings_orderby](./docs/sqls/quests/select_group_havings_orderby.sql)|설명|서브 쿼리 사용|
|5|select_subquerys|[select_subquerys](./docs/sqls/quests/select_subquerys.sql)|WHERE||
|6|select_joins|[select_joins](./docs/sqls/quests/select_joins.sql)|JOIN||
|7|select_alls|[select_alls](./docs/sqls/quests/select_alls.sql)|JOIN||
|8|common_codes|[common_codes](./docs/sqls/quests/common_codes.sql)|설명|common code 사용|