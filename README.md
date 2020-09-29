# bagisto-boilerplate

Bagisto boilerplate using docker

### Config environments:

- Create `.env` file base on `.env.example` file

### Up docker services:

- `docker-compose up -d`

### Create bagisto project (optional):

- `docker exec -it <web_service> bash`
- [In docker container] `composer create-project bagisto/bagisto ./`
- Create `src/.env` file base on `src/.env.example` file
- `sudo chown -R <your user> src`
- `sudo chmod -R 777 src/public`
- `sudo chmod -R 777 src/storage`
- `sudo chmod -R 777 src/bootstrap/cache`
- [In docker container] `php artisan bagisto:install`

### From exsting project:

- `docker exec -it <web_service> bash`
- Config `src/.env` file
- Follow the 2nd way at [Bagisto installation](https://devdocs.bagisto.com/index.html#installation) (Skip creating project via composer)
