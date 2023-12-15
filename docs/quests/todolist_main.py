from pymongo import MongoClient
mongoClient = MongoClient("mongodb://localhost:27017")
database = mongoClient["local"]
collection_todos = database['todos_list']

# ToDo 리스트 생성
todo_list = [
    {"title": "주간 보고서 작성", "description": "팀의 주간 성과와 진행 상황에 대한 보고서를 작성합니다."},
    {"title": "이메일 확인 및 응답", "description": "미처 확인하지 못한 이메일을 확인하고 필요한 이메일에 대해 응답합니다."},
    {"title": "회의 준비", "description": "다가오는 회의에 대해 준비합니다. 주제 연구, 발표 자료 준비 등이 포함될 수 있습니다."},
    {"title": "프로젝트 계획서 수정", "description": "현재 진행 중인 프로젝트의 계획서를 검토하고 필요한 부분을 수정합니다."},
    {"title": "팀 멤버와의 1:1 면담", "description": "팀 멤버와 개별적으로 만나서 그들의 업무 진행 상황, 이슈, 우려사항 등을 논의합니다."},
]

result_todo = collection_todos.insert_many(todo_list)

#사용자 이름 입력 후 db 저장

user_name = input("Input Your Name: ")

collection_participants = database["participants"]
result_participants = collection_participants.insert_one({"user_name" : user_name})
inserted_participants_id = result_participants.inserted_id


# print("ToDo List 중 하나 선택 하세요 !")
doc = collection_todos.find({})
for i in doc:
    print(i["title"], end=", ")

#todo중 하나 입력
print("\n")
user_input = int(input("Title 번호: "))


# Status 입력
user_status = input("Status: ")

# 종료 여부 입력
user_end = input("종료 여부: ")


# 사용자 id와 사용자가 입력한 번호에 해당하는 title의 id를 저장
collection_participants_todos = database["participants_todos"]
collection_participants_todos.insert_one({"user_id" : inserted_participants_id })

result_todo = result_todo["title"][user_input]
print(result_todo.inserted_id)
#???????
inserted_todo_id = result_todo.inserted_id

collection_participants_todos.insert_one({"user_todo_id" : inserted_todo_id })


