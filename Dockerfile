FROM debian:stable-slim
RUN apt update && apt install -y wget
COPY InstallPackages.sh /tmp/InstallPackages.sh
RUN sh /tmp/InstallPackages.sh
RUN rm -rf /tmp/*
ENV PATH="/usr/lib/llvm-17/bin/:${PATH}"
CMD ["sh"]
