# docker-rails-development
A basic Rails development environment using Docker.

Pull the containers
```shell
docker-compose pull
docker pull jgeiger/rails
docker pull jgeiger/rails-integration
```

Launch the containers
```shell
docker-compose up consul
docker-compose up registrator
docker-compose up db redis
docker-compose up webapp
docker-compose up haproxy
docker-compose up sidekiq
```

Build the application containers
```shell
docker-compose build webapp
docker-compose build webapp_integration
docker-compose build sidekiq
```

Setup the database
```shell
docker-compose run webapp bundle exec rake db:drop db:create db:migrate db:test:prepare
```

Visit the website
https://webapp.dockerdev.local/
