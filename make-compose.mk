compose-build:
	docker-compose build

compose:
	docker-compose up

compose-gettext-build:
	docker-compose run app mix gettext.extract --merge
	docker-compose run app mix gettext.merge priv/gettext --locale ru_RU

compose-bash:
	docker-compose run app bash

compose-setup:
	docker-compose run app mix ecto.create
	docker-compose run app bash -c "cd assets && npm install"

