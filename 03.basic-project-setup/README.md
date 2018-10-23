# Adapt Academy - BE - Lesson 2

## Basic project setup

### Create Symfony project

<details>
    <summary>Missing <a href="https://getcomposer.org">Composer</a></summary>
    
Install PHP & Composer
    
```bash
sudo apt update
```

```bash
sudo apt install curl php-cli php-mbstring php-xml php-curl php-zip php git unzip
```

```bash
cd ~

curl -sS https://getcomposer.org/installer -o composer-setup.php

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
```
Test installed Composer!

```bash
composer
```
</details>
</br>

Create Symfony project on your machine

```bash
composer create-project symfony/website-skeleton my-project
```

### Add Docker implementation for Symfony project

Lets user popular Docker based PHP developer stack [wodby/docker4php](https://github.com/wodby/docker4php) for this.

Go to your project directory:

```bash
cd my-project
```

Add `docker-compose.yml` and `.env` to your project:

```bash
wget https://raw.githubusercontent.com/wodby/docker4php/master/docker-compose.yml
```

```bash
wget https://raw.githubusercontent.com/wodby/docker4php/master/.env -O .env.docker4php
```

 Copy contents from `.env.docker4php` to `.env` file

### Run the project

```bash
docker-compose up -d
```

Optionally we can run project without port in the end of address.

Edit `docker-compose.yml` and edit `services.traefik.ports` value `8000:80` to `80:80`.

Change:

```yml
traefik:
  image: traefik
  container_name: "${PROJECT_NAME}_traefik"
  command: -c /dev/null --web --docker --logLevel=INFO
  ports:
    - '8000:80'
#    - '8080:8080' # Dashboard
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
```
    
To:

```yml
traefik:
  image: traefik
  container_name: "${PROJECT_NAME}_traefik"
  command: -c /dev/null --web --docker --logLevel=INFO
  ports:
    - '80:80'
#    - '8080:8080' # Dashboard
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
```

Save the changes, and start the project again:

```bash
docker-compose up -d
```

<details>
    <summary> If you get error regarding occupied port <em>80</em></summary>
    
Stop default webserver:

```bash
sudo service apache2 stop
```

Or:

```bash
sudo service nginx stop
```
</details>
</br>
