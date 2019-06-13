## Time Tracking Challenge

=======

**Time Tracking Challenge** é uma aplicação feita para resolver 


## Setup do Projeto

### 
Pré requisitos

 - Ter [Ruby](https://www.ruby-lang.org) versão 2.5.1 previamente instalado na máquina


### Configurando e executando testes

 - `bin/setup`
 - `bundle exec rspec`

#### Docker
 - `docker-compose build`
 - `docker-compose run --rm app bin/setup`
 - `docker-compose run --rm --service-ports app bash`
 - `bundle exec rspec`

### Executando a aplicação

Após os passos de configuração executar o comando `rails server` e acessar pela
url [http://localhost:3000/](http://localhost:3000/).

#### Docker

 - `docker-compose build`
 - `docker-compose run --rm app bin/setup`
 - `docker-compose run --rm app bundle install`
 - `docker-compose run --rm app rails assets:precompile`
 - `docker-compose up`
 - `docker exec -it timetracking bash`

### Principais contribuidores
 
[angelorange](https://github.com/angelorange)
