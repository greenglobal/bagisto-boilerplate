# bagisto-boilerplate
Bagisto boilerplate using docker

* Config environments:*
Create `.env` file from `.env.example` file

* Up docker services:*
`docker-compose up -d`

* Create bagisto project (optional):*
`docker exec -it <web_service> bash`
`cd /var/www`
`composer create-project bagisto/bagisto app`
Then follow the 2nd way at [Bagisto installation](https://devdocs.bagisto.com/index.html#installation)

* From exsting project:*
`docker exec -it <web_service> bash`
`cd <project_directory>`
Follow the 2nd way at [Bagisto installation](https://devdocs.bagisto.com/index.html#installation)
(Skip creating project via composer)
