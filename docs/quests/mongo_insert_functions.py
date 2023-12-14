from pymongo import MongoClient

def Connect_Mongo(localhost_name, database_name, collection_name):
    mongoClient = MongoClient(localhost_name)    # mongodb 접속
    database = mongoClient[database_name]         # database 연결
    return database[collection_name]          # collection 작업

# insert 작업
def insert(insert_fruit):
    collection.insert_one(insert_fruit)


fruit_info = [
    {"name": "사과", "color": "빨간색", "origin": "한국"},
    {"name": "바나나", "color": "노란색", "origin": "필리핀"},
    {"name": "딸기", "color": "빨간색", "origin": "한국"},
    {"name": "수박", "color": "초록색", "origin": "한국"},
    {"name": "오렌지", "color": "주황색", "origin": "미국"},
]

collection = Connect_Mongo("mongodb://localhost:27017", "local", "fruit_info")

for num in range(len(fruit_info)):
    insert(fruit_info[num])


