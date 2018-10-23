#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo ""
echo
cat ./apache/index.html
echo
echo
cat ./nginx/index.html
pause

clear
echo ""
pause
cat ./docker-compose.yml
pause

clear
echo ""
pause

docker-compose up -d
pause

clear
echo ""
cat ./docker-compose.secondary.yml
pause

clear
echo ""
docker-compose -f docker-compose.secondary.yml up -d
pause

clear
echo ""
cat ./docker-compose.third.yml
pause

clear
echo ""
docker-compose -f docker-compose.third.yml up -d
pause
