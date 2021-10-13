FROM rust:latest

ENV FASTLY_CLI_VERSION 0.39.3

WORKDIR /tmp

ADD fastly /usr/bin
RUN chmod a+x /usr/bin/fastly
COPY fastly.toml Cargo.toml rust-toolchain .cargo ./
RUN rustup toolchain add 1.54.0
RUN rustup target add wasm32-wasi --toolchain 1.54.0
RUN fastly compute build || true
WORKDIR /app
ENTRYPOINT ["/usr/bin/fastly"]
CMD ["--help"]
