
all: up

up: build
	docker compose -f ./docker-compose.yml	 up

build:
	docker compose -f ./docker-compose.yml build

down:
	docker compose -f ./docker-compose.yml down -v

clean: down remove
	docker compose -f ./docker-compose.yml down --rmi all

remove:
	sudo rm -rf ~/data/database/*
	sudo rm -rf ~/data/wordpress/*