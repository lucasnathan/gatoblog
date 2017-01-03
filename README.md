# gatoblog

=======

This README describe whatever steps are necessary to get the application up and running.

Things you may want to cover:

- Install docker engine;
- Install docker compose;
- Set the environment variables:
  - POSTGRES_USERNAME
  - POSTGRES_PASSWORD

  edit ~/.bashrc or ~/.zshrc if you're using zsh:
    > export POSTGRES_USERNAME=postgres_username

    > export POSTGRES_PASSWORD=postgres_password

  run: `$ source ~/.bashrc`

- `$ docker-compose build`
- `$ docker-compose up`
- `$ docker-compose run web rails db:create`
