# Prerequisite

## 各環境別ビルドコマンド

mysql_local:
	cp -rp Dockerfile.mysql Dockerfile
	cp -rp .env.local .env
	docker-compose -f docker-compose.yml.mysql up -d

pg_local:
	cp -rp Dockerfile.postgres Dockerfile
	cp -rp .env.local .env
	docker-compose -f docker-compose.yml.postgres up -d
