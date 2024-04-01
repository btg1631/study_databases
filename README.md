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


## 💻 SQL
- 어쩌구저쩌구설명

|*|제목|code|설명|비고|
|--|--|--|--|--|
|0|제목|[code](./docs/)|설명||


## QUEST
|*|제목|code|설명|비고|
|--|--|--|--|--|
|0|select_group_havings_orderby|[select_group_havings_orderby](./docs/sqls/quests/select_group_havings_orderby.sql)|설명|서브 쿼리 사용|


