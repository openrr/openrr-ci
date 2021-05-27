FROM ros:foxy-ros1-bridge-focal

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    curl \
    libasound2-dev \
    libclang-dev \
    libfreetype6-dev \
    libglu1-mesa-dev \
    libudev-dev \
    xorg-dev

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN source ~/.cargo/env && \
    cargo install cargo-tarpaulin
