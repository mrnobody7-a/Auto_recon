#!/bin/bash
source core/logger.sh
source core/scanner_utils.sh
read -p "Enter subnet: " subnet
ask_report_format
log "📡 Ping Sweep on $subnet"
nmap -sn "$subnet" | tee -a "$LOG_FILE"