### mongodb functions
- insertOne() : db.collection_name.insertOne({...});
- delete : db.posts.deleteMany({});
- find : db.fruits.find({});
- find : db.posts.find({},{_id:1, title:1, category:1, likes:1});   조건을 주고 찾기
- update : db.posts.updateMany({}, { $inc : {likes : 10} }); 한번에 증가시킴

{
  acknowledged: true,
  insertedId: ObjectId("657bf12e77238e20069959b9")
}
- 변수 + 부등식 + 기준값