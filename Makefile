.PHONY: tests

up:
	docker-compose up -d php

build:
	docker-compose build $(c)

deploy:
	docker-compose exec php composer install --no-scripts

tests:
	docker-compose exec php composer phpcs
	docker-compose exec php composer tests