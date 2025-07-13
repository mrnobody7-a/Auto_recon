#!/bin/bash
source core/logger.sh
read -p "Enter domain: " domain
log "🔎 Whois lookup: $domain"
whois "$domain" | tee -a "$LOG_FILE"