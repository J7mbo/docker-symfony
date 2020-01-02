#Makefile

.PHONY : start install

start :
	docker-compose up -d

install :
	docker-compose down
	rm -rf ./my_project
	docker-compose build
	docker-compose up -d
	docker-compose exec php composer create-project symfony/skeleton ./my_project


