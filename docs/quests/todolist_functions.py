from pymongo import MongoClient

def Connect_Mongo(collection_name):
    mongoClient = MongoClient("mongodb://localhost:27017")    # mongodb 접속
    database = mongoClient["local"]   # database 연결
    return database[collection_name]        # collection 작업

def Data_insert(collection, data):
    collection.insert_many(data)

def User_name(collection):
    #사용자 이름 입력 후 db 저장
    user_name = input("Input Your Name: ")
    print("")

    result_participants = collection.insert_one({"user_name" : user_name})
    inserted_participants_id = result_participants.inserted_id
    return inserted_participants_id

def Todos(user_id, collection1, collection2):
    print("ToDo List 중 하나 선택 하세요 !")
    doc = collection1.find({})
    count = 1

    for i in doc:
        print("{}. {}".format(count, i["title"]), end=" ")
        count+= 1
    print("")

    #todo중 하나 입력
    user_input = int(input("Title 번호: "))-1
    # Status 입력
    user_status = input("Status: ")

    # 사용자 id와 사용자가 입력한 번호에 해당하는 title의 id를 저장
    result_todo = collection1.find().skip(user_input).limit(1)
    for doc in result_todo:
        inserted_todo = doc['title']
        inserted_todo_id = doc['_id']
    collection2.insert_one({"user_id" : user_id, "user_todo_id" : inserted_todo_id, "todo_title" : inserted_todo, "user_status" : user_status})

# 종료 여부 입력
def End(user_id, collection, collection1, collection2):
    while True:
        user_end = input("종료 여부: ")
        if user_end == "c":
            print("")
            Todos(user_id, collection1, collection2)
        elif user_end == "q":
            print("")
            print("------------------------")
            user_id = User_name(collection)
            Todos(user_id, collection1, collection2)
        elif user_end == "x":
            print("")
            print("------------------------")
            print("프로그램이 종료되었습니다.")
            break
        else:
            print("c, q, x 중 하나를 입력하세요.")
            End()
