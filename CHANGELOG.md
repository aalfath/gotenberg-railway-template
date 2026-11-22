# Changelog

Each entry is one version of this Railway template. Breaking changes come first.

## 9.9.2 (2026-11-22)

- No breaking changes for this template's settings, and no new or changed variables. Gotenberg is stateless, so there is no data to migrate; your basic-auth credentials are unchanged.
- Behaviour change in the Markdown routes: the `index.html` page may now hold only text and `{{ toHTML "<file>" }}` actions, each Markdown file named once. Anything else (other Go template actions, a file named twice) now answers `400`. Pages that follow Gotenberg's documented Markdown usage are not affected.
- Gotenberg [9.9.2](https://github.com/gotenberg/gotenberg/releases/tag/v9.9.2) is a security fix release: Markdown pages can no longer loop until CPU or memory runs out, page selections, form fields and archive extraction stay bounded, Chromium no longer opens a DevTools port, web workers can't read `file://` URLs, and a handler past its hard timeout can't write into another request's response.
- How to apply: accept Railway's "update available" notice on the Gotenberg service. To go back, redeploy the previous deployment (9.9.1) from the service's Deployments tab.
- Image: `gotenberg/gotenberg:9.9.2@sha256:f6b4b6f7c8ae0ca7805f9e105ef989bf13b02d548378fa784c3630a9c479c31b`.

## 9.9.1 (2026-11-21)

- No breaking changes. Gotenberg is stateless, so there is no data to migrate; your basic-auth credentials are unchanged.
- Gotenberg [9.9.1](https://github.com/gotenberg/gotenberg/releases/tag/v9.9.1): `extract-attachments` now caps each decoded attachment at `--pdf-max-stream-bytes`, so a small crafted PDF can no longer expand to any size on disk and in the response.
- Gotenberg [9.9.0](https://github.com/gotenberg/gotenberg/releases/tag/v9.9.0): a `locale` field on `/forms/libreoffice/convert`, `compressStreams` (on by default) for `optimize`, and smaller `remediate` output.
- Image: `gotenberg/gotenberg:9.9.1@sha256:0fc05327fcc4af8ba84bb99b3da35fe728840d98cef9d3bf0d701bd077834eb5`.

## 9.8.0 (2026-11-19)

- No breaking changes. Gotenberg is stateless, so there is no data to migrate.
- Gotenberg [9.7.0](https://github.com/gotenberg/gotenberg/releases/tag/v9.7.0) and [9.8.0](https://github.com/gotenberg/gotenberg/releases/tag/v9.8.0): `fileBookmarks` on `merge`, Markdown output from `extract-text`, an OpenAPI description, PDF/A font remediation fixes, and the memory limits no longer kill an idle Chromium or LibreOffice right after a conversion.
- Image: `gotenberg/gotenberg:9.8.0@sha256:5467aaf0bb2a8b296b589a388bc7fd2a0b245fd71e63a64bb42baba63cbf3914`.

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
