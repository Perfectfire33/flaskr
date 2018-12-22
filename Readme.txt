run in command prompt before running app:
SET FLASK_APP=flaskr.py

then init the db:
flask initdb

then start server:
flask run -h 127.0.0.1 -p 5000
