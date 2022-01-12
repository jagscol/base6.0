# **BASE**

## Pasos para la instalación del repositorio y ambiente de desarrollo utilizando docker

### 1. Requisitos

Por favor previamente debe tener instalado en su maquina.

- git

- docker

- docker-compose

### 2. Instalación

#### 2.1 Contenedores

- Clone el repositorio. `git clone git@github.com:jagscol/gyqingenieria.git`

- Copie el archivo con las variables de entorno. `cp .env.example .env`

- De ser necesario edite el archivo `.env` y personalicelo para que no entre en conflicto con su maquina.

- Ejecute para construir sus contenedores. `docker-compose up -d`

#### 2.2 Laravel

- Instale los paquetes de php necesarios `docker-compose exec php composer install`

- Instale los paquetes de node necesarios `docker-compose exec php npm install`

- Instale los paquetes de node necesarios `docker-compose exec php npm run dev`

- Corra las migraciones y seeders `docker-compose exec php php artisan migrate:fresh --seed`

### 3. Ejecución

#### 3.1 Ejecución de procesos

Si usted desea ingresar y ejecutar procesos dentro de los contenedores ingrese a ellos por medio de estos comandos

- Laravel `docker-compose exec php sh`

- MySQL `docker-compose exec mysql sh`

#### 3.2 Ejecución de interface de aplicativos

- Laravel [gyqingenieria.localhost](gyqingenieria.localhost)
- phpMyAdmin [pma.gyqingenieria.localhost](pma.gyqingenieria.localhost)
- Adminer [adminer.gyqingenieria.localhost](adminer.gyqingenieria.localhost)
- Mailhog [mailhog.gyqingenieria.localhost](mailhog.gyqingenieria.localhost)
- Portainer [portainer.gyqingenieria.localhost](portainer.gyqingenieria.localhost)
- Traefik [traefik.gyqingenieria.localhost](traefik.gyqingenieria.localhost)
