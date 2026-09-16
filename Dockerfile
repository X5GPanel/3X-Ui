FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    sqlite3 \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN bash -c "$(curl -FsSL https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)" <<EOF
y
admin
admin
443
EOF

EXPOSE 443

CMD ["/usr/local/3x-ui/x-ui"]

