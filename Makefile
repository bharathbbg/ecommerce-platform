.PHONY: up down ps logs build

# Docker Compose commands
up:
	docker-compose up -d

down:
	docker-compose down

ps:
	docker-compose ps

logs:
	docker-compose logs -f

build:
	docker-compose build

# Service shortcuts
order-logs:
	docker-compose logs -f order-service

delivery-logs:
	docker-compose logs -f delivery-service

inventory-logs:
	docker-compose logs -f inventory-service

# Database initialization
init-db:
	docker-compose up -d postgres mongo
	sleep 5  # Wait for databases to start
	./scripts/postgres-init.sh