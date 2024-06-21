deploy:
	git add .
	git commit -m 'update'
	git push -u origin main
	ansible-playbook -i hosts.ini deployment.yaml --private-key keys/ansible