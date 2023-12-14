from pymongo import MongoClient

# "mongodb://localhost:27017"

def Connect_Mongo(localhost):

    mongoClient = MongoClient(localhost)

    database = mongoClient["local"]

    return database['fruit_info']


def insert(insert_fruit):

    collection = Connect_Mongo("mongodb://localhost:27017")

    collection.insert_one(insert_fruit)


insert({"name": "사과", "color": "빨간색", "origin": "한국"})
insert({"name": "바나나", "color": "노란색", "origin": "필리핀"})
insert({"name": "딸기", "color": "빨간색", "origin": "한국"})
insert({"name": "수박", "color": "초록색", "origin": "한국"})
insert({"name": "오렌지", "color": "주황색", "origin": "미국"})



