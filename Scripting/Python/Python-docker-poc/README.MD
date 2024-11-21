# POC
- Write a python script to create an api.
- This api should a sqlite database.
- Write a dockerfile to store that database in docker-volumes.
- Write a docker compose to run the app and set the db.
- Hit api to GET and POST responses.
- Check logs


- Write a k8s manifest to host this app.
- expose it.
- Manage logs
    - store it in a format


## Check the db and run sqlite commands
knoldus@CCZYN93:~/NashTech/DevOps-2023/Scripting/Python/Python-docker-poc$ docker-compose exec flask-app bash
root@cfbecf4b8cd8:/app# ls
Dockerfile  README.MD  api_with_db.py  docker-compose.yaml  requirements.txt  users.db
root@cfbecf4b8cd8:/app# sqlite3 /app/users.db
SQLite version 3.40.1 2022-12-28 14:03:47
Enter ".help" for usage hints.
sqlite> .tables
user
sqlite> SELECT * FROM user;
1|Virat
2|Nitin
3|Sachin
sqlite> 

