from pymongo import MongoClient

# mongodb 접속 -> 자원에 대한 class
mongoClient = MongoClient("mongodb://localhost:27017")

# database 연결
database = mongoClient["local"]

# collection 작업
collection = database['fruits']

# insert 작업 진행
collection.insert_one({"name": "딸기",
                        "color": "빨간색",
                        "origin": "한국"})

dict_fruit = {"name": "오렌지",
              "color": "주황색",
              "origin": "미국"}

collection.insert_one(dict_fruit)

pass
