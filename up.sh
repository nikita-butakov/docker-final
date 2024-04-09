#!/bin/bash

# Запуск efk.compose.yml
docker compose -f efk.compose.yml up -d

# Проверка успешного запуска efk
efk_status=$(docker compose -f efk.compose.yml ps -q)
if [ -z "$efk_status" ]; then
    echo "Failed to start EFK stack. Exiting."
    exit 1
else
    echo "EFK stack started successfully."
fi

# Запуск app.compose.yml
docker compose -f app.compose.yml up -d

