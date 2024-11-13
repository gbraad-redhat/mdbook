FROM registry.fedoraproject.org/fedora:40

RUN curl -L https://github.com/rust-lang/mdBook/releases/download/v0.4.42/mdbook-v0.4.42-x86_64-unknown-linux-gnu.tar.gz -o mdbook.tar.gz \
    && tar -zxvf mdbook.tar.gz \
    && mv mdbook /usr/bin \
    && rm -rf mdbook{,.tar.gz}

RUN mkdir -p /workspace
VOLUME /workspace
WORKDIR /workspace
    