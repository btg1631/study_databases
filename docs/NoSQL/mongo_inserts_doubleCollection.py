from pymongo import MongoClient

# mongodb 접속 -> 자원에 대한 class
mongoClient = MongoClient("mongodb://localhost:27017")

# database 연결
database = mongoClient["local"]

# collection 작업
collection = database['fruits']

mix_fruit = {"name": "오렌지",
              "color": ["주황색", "갈색", "노란색"],
              "origin": "미국"}

result = collection.insert_one(mix_fruit)

pass
