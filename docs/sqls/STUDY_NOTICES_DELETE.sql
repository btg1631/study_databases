-- DELETE FROM table_name WHERE condition;

DELETE FROM VISITOR 
WHERE VISITOR_ID = 'VISITE_11';

-- PARENT KEY 알고 있을 때
DELETE FROM VISITOR
WHERE NOTICE_ID = 'NOTICE_05';

DELETE FROM NOTICE
WHERE NOTICE_ID = 'NOTICE_05';
