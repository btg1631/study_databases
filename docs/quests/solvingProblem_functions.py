# import로 사용
from pymongo import MongoClient

def Connect_Mongo(localhost, database_name, collection_name):
    mongoClient = MongoClient(localhost)    # mongodb 접속
    database = mongoClient[database_name]         # database 연결
    return database[collection_name]          # collection 작업

collection = Connect_Mongo("mongodb://localhost:27017", "local", "solvingproblem")

def Data_insert(data):
    collection.insert_many(data)

def Problem():
    doc = collection.find({})
    score_temp = [1, 1, 3, 3, 2]

    count_question = 1
    count_score = 0

    for i in doc:
        count_choices = 1
        print("문제{}: {}".format(count_question, i["question"]))

        for j in range(4):
            print("{}. {}".format(count_choices, i["choices"][j]))
            count_choices += 1
        count_question += 1

        user_input = int(input("답을 입력하세요: "))

        if user_input == score_temp[count_score]:
            print("정답입니다!")
        else:
            print("틀렸습니다.")

        count_score += 1
        print("")
        
        collection.update_one({"question" : i["question"] }, {"$set":{"user_input" : user_input}})   








