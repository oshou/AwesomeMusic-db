# Prerequisite

## 各環境別ビルドコマンド

build_mysql:
	cp -rp Dockerfile.mysql Dockerfile
	cp -rp .env.local .env
	docker-compose -f docker-compose.yml.mysql up -d

build_pg:
	cp -rp Dockerfile.postgres Dockerfile
	cp -rp .env.local .env
	docker-compose -f docker-compose.yml.postgres up -d
