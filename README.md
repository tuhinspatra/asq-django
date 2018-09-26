Steps:

1. Create Virtual environment
2. pip3 install requirements.txt
3. import database dump and name it as asqdb
4. in project root open terminal and run:
	python3 manage.py makemigrations
	python3 manage.py migrate
	python3 manage.py createsuperuser 
		add necessary details to create super user 
5. run: python3 manage.py runserver
6. visit 127.0.0.1:8000 in browser
