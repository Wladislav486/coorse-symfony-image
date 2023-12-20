# Описание

## Создаём Dockerfile, устанавливающий на Ubuntu 20.04 следующие программы

1. php 7.4
2. Composer 2.0.13
3. Symfony cli 4.25.2
4. Nodejs 14
5. npm 7.15.0
6. postgres 12
7. yarn 1.22.5

## Создаём и отправляем образ на DockerHub

1. Создаём образ  
   `docker build -t wladislav486/ubuntu-shop-symfony:v1 .`  
2. Запускаем образ в контейнере, заходим в контейнер в интерактивном режиме  
   `docker run -it --name coorse-symfony wladislav486/ubuntu-shop-symfony:v1`
3. Проверяем версии программ  
   `php -v` (проверка версии PHP)  
   `php -m` (установленные модули PHP)  
   `git --version` (проверка версии GIT)  
   `symfony -v` (проверка версии symfony)  
   `composer -v` (проверка версии composer)  
   `node -v` (проверка версии node.js)  
   `npm -v` (проверка версии npm)  
   `unzip -v`  
   `yarn --version` (версия yarn)  
4. Пушим в репозиторий DockerHub  
   `docker push wladislav486/ubuntu-shop-symfony:v1`

## Учебные материалы

1. Установка Docker на виндовс

> https://youtu.be/gAYPxmtbadc

2. Курс по Docker

> https://youtube.com/playlist?list=PLU2ftbIeotGoGFC_2lj-OplT_cItXfu48

3. Документация Dockerfile

> https://docs.docker.com/engine/reference/builder/

4. Документация docker-compose

> https://docs.docker.com/compose/gettingstarted/
