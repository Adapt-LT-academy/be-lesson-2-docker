# Adapt Academy - BE - Lesson 2

## How to create image from Dockerfile

### Build Docker image from Dockerfile

```bash
docker build ./apache -t irmantasp/apache:1.0
```

```bash
docker build ./nginx -t irmantasp/nginx:1.0
```

### Run built Docker image as container

```bash
docker run -p 8001:80 irmantasp/apache:1.0
```

```bash
docker run -p 8002:80 irmantasp/nginx:1.0
```
