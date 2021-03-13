.PHONY: tests deploy

up:
	docker-compose up -d php

deploy:
	docker-compose exec php composer install --no-scripts

tests:
	docker-compose exec php composer phpcs
	docker-compose exec php composer tests