.PHONY: tests

build:
	docker-compose up -d

deploy:
	docker-compose exec php composer install --no-scripts

tests:
	docker-compose exec php vendor/bin/phpunit tests