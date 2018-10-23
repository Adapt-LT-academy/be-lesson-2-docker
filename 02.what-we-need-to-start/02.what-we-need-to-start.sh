#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Install Docker:"
echo
echo "COMMANDS:"
echo
echo "sudo apt-get update"
echo "sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common"
echo "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
echo "sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu \$(lsb_release -cs) stable\""
echo "sudo apt-get update"
echo "sudo apt-get install -y docker-ce"
echo "sudo usermod -aG docker \$(whoami)"
pause
clear
{
  sudo apt-get update &&
  sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common &&
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
  sudo apt-get update &&
  sudo apt-get install -y docker-ce &&
  sudo usermod -aG docker $(whoami)
}

clear
echo "Check if Docker was installed properly:"
echo
echo "COMMAND:"
echo "docker --version"
pause
docker --version;
pause

clear
echo "Test Docker installation:"
echo
echo "COMMAND:"
echo "docker run hello-world"
pause
clear
docker run hello-world
pause

clear
echo "Install Docker Compose:"
echo
echo "COMMANDS:"
echo
echo "sudo curl -L \"https://github.com/docker/compose/releases/download/1.22.0/docker-compose-\$(uname -s)-\$(uname -m)\" -o /usr/local/bin/docker-compose"
echo "sudo chmod +x /usr/local/bin/docker-compose"
pause
clear
{
  sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
  sudo chmod +x /usr/local/bin/docker-compose
}

clear
echo "Test Docker Compose installation:"
echo
echo "COMMAND:"
echo "docker-compose --version"
pause
docker-compose --version
pause

clear
echo "Install PHP:"
echo
echo "COMMANDS:"
echo "sudo apt update"
echo "sudo apt install -y curl php-cli php-mbstring php-xml php-curl php-zip php git unzip"
pause
clear
{
  sudo apt update &&
  sudo apt install -y curl php-cli php-mbstring php-xml php-curl php-zip php git unzip
}
pause

clear
echo "Check PHP installation:"
echo
echo "COMMAND:"
echo "php --version"
pause
php --version
pause

clear
echo "Install Composer"
echo
echo "curl -sS https://getcomposer.org/installer -o composer-setup.php"
echo "sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer"
pause
clear
{
  cd ~ &&
  curl -sS https://getcomposer.org/installer -o composer-setup.php &&
  sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
}

clear
echo "Check Composer installation:"
echo
echo "COMMAND:"
echo
echo "composer --version"
pause
composer --version
pause
