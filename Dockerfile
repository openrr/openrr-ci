FROM ros:melodic-ros-base

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y curl libfreetype6-dev

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rust_install.sh && \
    sh rust_install.sh -y && \
    rm rust_install.sh && \
    source ~/.cargo/env && \
    rustup install nightly-2021-03-04

RUN source ~/.cargo/env && \
    cargo install cargo-tarpaulin
