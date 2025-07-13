#!/bin/bash
source core/logger.sh
source core/scanner_utils.sh
read -p "Enter target: " target
ask_report_format
log "🔍 Service Version Detection: $target"
nmap -sV "$target" | tee -a "$LOG_FILE"