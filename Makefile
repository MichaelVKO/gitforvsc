build:
	docker build --no-cache -t tgbot .
run:
	docker run -d -p 3000:3000 --name tgbot --rm tgbot