# Adapt Academy - BE - Lesson 2

## How we do it?

Clone the project:

```bash
git clone git@github.com:Adapt-LT-academy/improved-octo-giggle.git botman.docker.localhost
```

Create single `.env` file from `.env.docker4php` and `.env.dist`:

```bash
cat .env.docker4php >> .env &&
cat .env.dist >> .env
```

Start the project:
```bash
make up &&
make install
```

Open project in browser: [botman.docker.localhost](http://botman.docker.localhost)

Stop the project:
```bash
make stop
```
