#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Create Symfony project:"
echo
echo "COMMAND:"
echo
echo "composer create-project symfony/website-skeleton my-project"
pause
composer create-project symfony/website-skeleton my-project
pause

clear
echo "Add Docker implementation for Symfony project:"
echo
echo "COMMANDS:"
echo
echo "cd my-project"
echo "wget https://raw.githubusercontent.com/wodby/docker4php/master/docker-compose.yml"
echo "wget https://raw.githubusercontent.com/wodby/docker4php/master/.env -O .env.docker4php"
echo "cat .env.docker4php >> .env"
pause

{
  cd my-project &&
  wget https://raw.githubusercontent.com/wodby/docker4php/master/docker-compose.yml &&
  wget https://raw.githubusercontent.com/wodby/docker4php/master/.env -O .env.docker4php &&
  cat .env.docker4php >> .env
}
pause

clear
echo "Start Docker implementation"
echo
echo "COMMAND:"
echo "docker-compose up -d"
pause
docker-compose up -d;
pause

clear
echo "Open Project in browser:" &&
firefox --private-window http://php.docker.localhost:8000
pause

clear
echo "Stop Docker implementation"
echo
echo "COMMAND:"
echo "docker-compose stop"
pause
clear
