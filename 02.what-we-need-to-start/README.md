# Adapt Academy - BE - Lesson 2

## What we need to start?

## Install Docker

Add Docker requirements

```bash
sudo apt-get update
```

```bash
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
```

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88
```

```bash
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

```bash
sudo apt-get update
```

Install Docker!

```bash
sudo apt-get install docker-ce
```

```bash
sudo usermod -aG docker $(whoami)
```

Test installed Docker!

```bash
docker run hello-world
```

Install Docker Compose

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

Test installed Docker Compose!

```bash
docker-compose --version
```
