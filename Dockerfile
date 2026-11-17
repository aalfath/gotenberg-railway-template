# Gotenberg for Railway: the official image, pinned by version and digest.
# Upstream: https://github.com/gotenberg/gotenberg
FROM gotenberg/gotenberg:9.6.0@sha256:bf8a2296b58bad169f052ef59a7f4c22f55b7fdbafd708c2c5da06ef5b95c926

# Listen on the port Railway gives the service ($PORT), on every interface
# (public domain and private network).
ENV API_PORT_FROM_ENV=PORT \
    PORT=3000

# Basic auth on every route except /health (the Railway health check).
# The template sets GOTENBERG_API_BASIC_AUTH_PASSWORD to a generated secret;
# Gotenberg refuses to start with basic auth on and no password.
ENV API_ENABLE_BASIC_AUTH=true \
    GOTENBERG_API_BASIC_AUTH_USERNAME=gotenberg

EXPOSE 3000

# The image's own entrypoint (tini) and user (gotenberg) stay as they are.
CMD ["gotenberg"]
