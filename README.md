# Gotenberg on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template/gotenberg-3?utm_medium=integration&utm_source=button&utm_campaign=gotenberg)

A Railway template for [Gotenberg](https://gotenberg.dev), a Docker-based API that turns HTML, Markdown, URLs and Office documents into PDFs, and merges, splits, signs, stamps and converts PDFs (PDF/A, PDF/UA).

## What it deploys

- **Gotenberg 9.9.1**, built from this repo's `Dockerfile`, which pins the official image `gotenberg/gotenberg:9.9.1` by digest. Chromium and LibreOffice are included.
- One public service with a Railway domain. No database and no volume: Gotenberg is stateless and stores nothing.
- Health check: `GET /health` (open, no auth).

## Variables

| Variable | Default | Notes |
|---|---|---|
| `GOTENBERG_API_BASIC_AUTH_USERNAME` | `gotenberg` | Basic auth user for every API route |
| `GOTENBERG_API_BASIC_AUTH_PASSWORD` | `${{secret(32)}}` | Generated at deploy time. Read it in the service's Variables tab |
| `PORT` | `3000` | Port Gotenberg listens on |

Basic auth is always on (`API_ENABLE_BASIC_AUTH=true` in the Dockerfile). Every other Gotenberg setting can be added as a variable, using the flag name in upper case with underscores, for example `API_TIMEOUT=120s`, `API_BODY_LIMIT=50MB` or `CHROMIUM_DENY_PRIVATE_IPS=true`. See the [configuration docs](https://gotenberg.dev/docs/configuration).

## Try it

```sh
curl -u gotenberg:YOUR-PASSWORD \
  --form files=@index.html \
  https://YOUR-DOMAIN/forms/chromium/convert/html -o out.pdf
```

From another service in the same Railway project, use the private network: `http://${{Gotenberg.RAILWAY_PRIVATE_DOMAIN}}:3000`.

## Updates

Updates ship as commits to this repo's `main` branch: a new Gotenberg version means a new digest in the `Dockerfile` and an entry in [CHANGELOG.md](CHANGELOG.md). Railway then shows an "update available" notice on projects deployed from the template, and you choose when to apply it. Read the changelog first: breaking changes are listed at the top of each entry.
