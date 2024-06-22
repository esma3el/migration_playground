echo:
	@echo "😘"

git:
	git add .
	git commit -m 'update'
	git push -u origin main

run:
	venv/bin/python manage.py runserver

stop:
	docker compose -f /home/ismail/migrate_play/compose.yaml down

migrate:
	venv/bin/python manage.py makemigrations
	venv/bin/python manage.py migrate

prod:
	ansible-playbook -i hosts.ini prod.yaml --private-key keys/ansible

stage:
	ansible-playbook -i inventory_file stage.yaml --private-key keys/ansible

deploy_stage: migrate git stage

deploy_prod: migrate git prod