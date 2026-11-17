# Changelog

Each entry is one version of this Railway template. Breaking changes come first.

## 9.6.0 (2026-11-17)

- No breaking changes. Gotenberg is stateless, so there is no data to migrate.
- Gotenberg [9.6.0](https://github.com/gotenberg/gotenberg/releases/tag/v9.6.0): `dropSignatures` on stages that rewrite a PDF, and new `--libreoffice-max-memory` / `--chromium-max-memory` flags.
- Image: `gotenberg/gotenberg:9.6.0@sha256:bf8a2296b58bad169f052ef59a7f4c22f55b7fdbafd708c2c5da06ef5b95c926`.

## 9.5.1-1 (2026-11-16)

- README: added the Deploy on Railway button for the published template `gotenberg-3`. No change to the service.

## 9.5.1 (2026-11-16)

- First release: Gotenberg 9.5.1 (`gotenberg/gotenberg:9.5.1@sha256:a0f596c2aeee6391c24ccf2953737971f13976b14d4240525a447f209185e2c8`).
- Basic auth on by default (user `gotenberg`, generated password); `/health` stays open for Railway's health check.
- Listens on Railway's `PORT`.
