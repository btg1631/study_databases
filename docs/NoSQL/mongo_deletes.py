from pymongo import MongoClient

# mongodb 접속 -> 자원에 대한 class
mongoClient = MongoClient("mongodb://localhost:27017")

# database 연결
database = mongoClient["local"]

# collection 작업
collection = database['fruits']

# insert_many 작업 진행
fruit_info = [
    {"name": "사과", "color": "빨간색", "origin": "한국"},
    {"name": "바나나", "color": "노란색", "origin": "필리핀"},
    {"name": "딸기", "color": "빨간색", "origin": "한국"}
]


insert_result = collection.insert_many(fruit_info)


list_inserted_ids = insert_result.inserted_ids

# delete inserted records by _ids 
collection.delete_many({"_id":list_inserted_ids[0]})
pass