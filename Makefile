.PHONY: tests

build:
	docker-compose up -d

deploy:
	docker-compose exec --user www-data php composer install --no-scripts

tests:
	docker-compose exec php vendor/bin/phpunit tests