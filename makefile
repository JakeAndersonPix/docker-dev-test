dev-server:
	docker-compose up -d

stop-dev-server:
	docker-compose down

prod-server: dockerize
	docker run -d -p 8080:8080 --name docker-dev-test-prod-container docker-dev-test-prod

dockerize:
	docker build -f ./dockerfile.prod -t docker-dev-test-prod .

stop-prod-server:
	docker container stop docker-dev-test-prod-container
	docker container rm docker-dev-test-prod-container