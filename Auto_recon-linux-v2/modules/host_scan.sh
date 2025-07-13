#!/bin/bash
source core/logger.sh
source core/scanner_utils.sh
read -p "Enter subnet (e.g. 192.168.1.0/24): " subnet
ask_report_format
log "🔍 Host Discovery: $subnet"
nmap -sn "$subnet" | tee -a "$LOG_FILE"