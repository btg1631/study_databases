from pymongo import MongoClient

def Connect_Mongo(collection_name):
    mongoClient = MongoClient("mongodb://localhost:27017")    # mongodb 접속
    database = mongoClient["local"]   # database 연결
    return database[collection_name]        # collection 작업

# 데이터 입력 function
def Data_insert(collection, data):
    # 데이터 입력 전 초기화
    collection.delete_many({})
    collection.delete_many({})
    # 데이터 입력
    collection.insert_many(data)

# 사용자 이름 입력 function
def User_name(collection):
    #사용자 이름 입력 후 db 저장
    user_name = input("Input Your Name: ")
    print("")
    result_participants = collection.insert_one({"user_name" : user_name})
    inserted_participants_id = result_participants.inserted_id

    # 사용자 id를 return
    return inserted_participants_id

# 업무 보고 입력 function
def Todos(user_id, collection1, collection2):
    print("ToDo List 중 하나 선택 하세요 !")

    # todos_list 컬렉션의 내용 중 'title'만 print
    result_todo = collection1.find({})
    count = 1
    for i in result_todo:
        print("{}. {}".format(count, i["title"]), end=" ")
        count+= 1
    print("")

    # todo중 하나 입력
    user_input = int(input("Title 번호: "))-1
    # Status 입력
    user_status = input("Status: ")

    # 사용자가 입력한 번호에 해당하는 title과 그 title id를 찾음
    result_todo_title = collection1.find().skip(user_input).limit(1)
    for j in result_todo_title:
        inserted_todo = j['title']
        inserted_todo_id = j['_id']
        
    # user_id, 사용자가 입력한 title과 그 title id, 사용자가 입력한 status를 collection2에 담기
    collection2.insert_one({"user_id" : user_id, "user_todo_id" : inserted_todo_id, "todo_title" : inserted_todo, "user_status" : user_status})

# 종료 여부 입력 function
def End(collection, collection1, collection2):
    user_end = 'q'
    while True:
        # c 입력 시 Todos() 다시 실행
        if user_end == "c":
            print("")
            Todos(user_id, collection1, collection2)
        # q 입력 시 User_name() 실행 후 Todos() 다시 실행
        elif user_end == "q":
            print("")
            print("------------------------")
            user_id = User_name(collection)
            Todos(user_id, collection1, collection2)
        # x 입력 시 프로그램 종료
        else:
            break

        print("c, q, x 중 하나를 입력하세요.")
        user_end = input("진행 여부: ")

    print("------------------------")
    print("프로그램이 종료되었습니다.")