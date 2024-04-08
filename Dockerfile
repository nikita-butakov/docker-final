FROM php:7.4-fpm

# Install GD extension
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

RUN mkdir -p /speedtest/

# Copy sources
COPY backend/ /speedtest/backend
COPY results/*.php /speedtest/results/
COPY results/*.ttf /speedtest/results/
COPY *.js /speedtest/
COPY docker/servers.json /servers.json
COPY docker/*.php /speedtest/
COPY docker/entrypoint.sh /

# Prepare environment variables defaults
ENV TITLE=LibreSpeed
ENV MODE=frontend
ENV PASSWORD=password
ENV TELEMETRY=true
ENV ENABLE_ID_OBFUSCATION=true
ENV REDACT_IP_ADDRESSES=false
ENV db_type="postgresql"
ENV PostgreSql_username="user"
ENV PostgreSql_password="password1"
ENV PostgreSql_hostname="localhost"
ENV PostgreSql_databasename="mydb"

# Final touches
EXPOSE 9000

CMD ["bash", "/entrypoint.sh"]

