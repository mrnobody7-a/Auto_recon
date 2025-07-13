#!/bin/bash
source core/logger.sh
read -p "Enter domain: " domain
log "🌐 nslookup for $domain"
nslookup "$domain" | tee -a "$LOG_FILE"