FROM registry.fedoraproject.org/fedora:40 AS builder


RUN dnf install -y cargo \
    && cargo install mdbook \
    && cargo install mdbook-callouts


FROM registry.fedoraproject.org/fedora:40 

COPY --from=builder /root/.cargo/bin/mdbook /usr/bin
COPY --from=builder /root/.cargo/bin/mdbook-callouts /usr/bin

RUN mkdir -p /workspace
VOLUME /workspace
WORKDIR /workspace
