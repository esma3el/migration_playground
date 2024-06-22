git:
	git add .
	git commit -m 'update'
	git push -u origin main

migrate:
	venv/bin/python manage.py makemigrations
	venv/bin/python manage.py migrate

build:
	ansible-playbook -i hosts.ini deployment.yaml --private-key keys/ansible

deploy:migrate,git,build