# Gotenberg for Railway: the official image, pinned by version and digest.
# Upstream: https://github.com/gotenberg/gotenberg
FROM gotenberg/gotenberg:9.8.0@sha256:5467aaf0bb2a8b296b589a388bc7fd2a0b245fd71e63a64bb42baba63cbf3914

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
