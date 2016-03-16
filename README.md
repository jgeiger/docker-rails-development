# docker-rails-development
A basic Rails development environment using Docker.

Pull the containers
```shell
docker pull jgeiger/rails
docker pull jgeiger/rails-integration
docker-compose pull
```

Build the application containers
```shell
docker-compose build webapp
docker-compose build webapp_test
docker-compose build sidekiq
```

Launch the database containers
```shell
docker-compose up consul
docker-compose up registrator
docker-compose up db redis
```

Setup the database
```shell
docker-compose run webapp bundle exec rake db:drop db:create db:migrate db:test:prepare
```

Launch the web application containers
```shell
docker-compose up sidekiq
docker-compose up webapp
docker-compose up haproxy
```

Visit the website
https://webapp.dockerdev.local/
