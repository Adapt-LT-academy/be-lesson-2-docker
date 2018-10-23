#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Lets use our previous project \"my-project\" for this..."
cd ./../03.basic-project-setup/my-project
pause

clear
echo "Lets download basic Makefile and separate file for commands:"
echo
echo "COMMANDS:"
echo "wget https://raw.githubusercontent.com/wodby/docker4php/master/Makefile"
echo "wget https://raw.githubusercontent.com/wodby/docker4php/master/docker.mk"
pause
{
  wget https://raw.githubusercontent.com/wodby/docker4php/master/Makefile &&
  wget https://raw.githubusercontent.com/wodby/docker4php/master/docker.mk
}
pause

clear
echo "Lets see the contents of our Makefile:"
pause
clear
cat Makefile
pause

clear
echo "Contents of Commands file (docker.mk)"
pause
clear
cat docker.mk
pause

clear
echo "Lets add new command:"
echo
echo "COMMAND:"
echo "nano docker.mk"
echo
echo "EXAMPLE COMMAND:"
echo "destroy"
echo
echo "WHAT IT SHOULD DO:"
echo "make prune";
echo "make ps"
pause

clear
nano docker.mk
pause

clear
echo "Lets run our command now..."
