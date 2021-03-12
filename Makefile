.PHONY: tests

up:
	docker-compose up -d php

build:
	docker-compose build $(c)

deploy:
	docker-compose exec php composer install --no-scripts

tests:
	docker-compose exec php vendor/bin/phpunit tests