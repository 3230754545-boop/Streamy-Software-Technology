#!/bin/sh
PATH=/usr/local/bin:/usr/bin:/bin
LOG_DIR="$HOME/lab9/telemetry_logs"
mkdir -p "$LOG_DIR"
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')

if docker run --rm --network homework-isolated-switch postgres:16-alpine pg_isready -h homework-postgres-monitoring -p 5432 >/dev/null 2>&1
then
  STATUS="READY"
else
  STATUS="UNAVAILABLE OR CHECK FAILED"
fi

echo "$TIMESTAMP - Node Status: $STATUS" >> "$LOG_DIR/server_health_linux.log"
