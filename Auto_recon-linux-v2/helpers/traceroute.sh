#!/bin/bash
source core/logger.sh
read -p "Enter host: " host
log "📍 Traceroute to $host"
traceroute "$host" | tee -a "$LOG_FILE"