# Changelog

Each entry is one version of this Railway template. Breaking changes come first.

## 9.5.1-1 (2026-11-16)

- README: added the Deploy on Railway button for the published template `gotenberg-3`. No change to the service.

## 9.5.1 (2026-11-16)

- First release: Gotenberg 9.5.1 (`gotenberg/gotenberg:9.5.1@sha256:a0f596c2aeee6391c24ccf2953737971f13976b14d4240525a447f209185e2c8`).
- Basic auth on by default (user `gotenberg`, generated password); `/health` stays open for Railway's health check.
- Listens on Railway's `PORT`.
