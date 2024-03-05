# Clang 17 & LLVM 17 Docker Image on Debian stable-slim

This Docker image offers a lightweight platform for C/C++ code analysis tools using Clang 17 and LLVM 17. Note: this image isn't a complete optimized toolchain.

## Features

- Debian stable-slim base
- Clang 17 & LLVM 17 binaries
- Installed headers for compatibility

## Usage

1. Create a `Dockerfile` in your project directory.
   Example `Dockerfile`:

  `FROM agentlans/clang-llvm:latest`

2. On the command line, use `docker build` to create your image:

  `docker build -t your-project-name .`

3. Use `docker run` to start your container:

  `docker run -it --rm your-project-name`

## Locate Binaries

Find Clang 17 & LLVM 17 binaries in `/usr/lib/llvm-17/bin/.`

## Licence

Covered under the same licence as Debian and Clang/LLVM.
