#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo ""
pause

clear
cat ./apache/Dockerfile
pause

clear
echo ""
pause

docker build ./apache -t adapt-academy/apache:1.0
pause

clear
echo ""
pause

clear
cat ./nginx/Dockerfile
pause

clear
echo ""
pause

docker build ./nginx -t adapt-academy/apache:1.0
pause

clear
echo ""
pause

docker run -p 8001:80 irmantasp/apache:1.0
pause

clear
echo ""
pause

docker run -p 8002:80 irmantasp/nginx:1.0
pause
