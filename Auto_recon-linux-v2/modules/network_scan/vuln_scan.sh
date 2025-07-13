#!/bin/bash
source core/logger.sh
source core/scanner_utils.sh
read -p "Enter target: " target
ask_report_format
log "🔥 Vulnerability Scan: $target"
sudo nmap --script vuln "$target" | tee -a "$LOG_FILE"