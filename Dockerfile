FROM rust:latest

ENV FASTLY_CLI_VERSION 0.36.0

WORKDIR /tmp

RUN curl -L https://github.com/fastly/cli/releases/download/v${FASTLY_CLI_VERSION}/fastly_v${FASTLY_CLI_VERSION}_linux-amd64.tar.gz -o fastly.tgz
RUN tar -xzf fastly.tgz
RUN mv fastly /usr/bin
COPY fastly.toml Cargo.toml rust-toolchain .cargo .
RUN ls -a -R .
RUN fastly compute build || true
WORKDIR /app
ENTRYPOINT ["/usr/bin/fastly"]
CMD ["--help"]
