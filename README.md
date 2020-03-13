## A Django+Haystack+Whoosh implementation of stackoverflow.com for our institute. ##

:tada: Winner of the annual web development challenge of MNNIT Allahabad.

## Steps to Run:

1. Create virtual environment
2. Run in terminal: `pip3 install requirements.txt`
3. Import database dump and name it as `asqdb`
4. In project root open terminal and run:
	```
    python3 manage.py makemigrations
	python3 manage.py migrate
	python3 manage.py createsuperuser
    ```
    Add necessary details to create super user 
5. Run: `python3 manage.py runserver`
6. visit `127.0.0.1:8000` in browser

## Authors

* **Tuhin Subhra Patra** - [armag-pro](https://github.com/armag-pro)
* **Bavishi Milan** - [jarvis-dev](https://github.com/jarvis-dev)
* **Jugta Ram** - [jugtaram](https://github.com/jugtaram)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

