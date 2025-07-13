#!/bin/bash
source core/logger.sh
source core/scanner_utils.sh
read -p "Enter target: " target
ask_report_format
log "🧠 OS Detection on $target"
sudo nmap -O "$target" | tee -a "$LOG_FILE"