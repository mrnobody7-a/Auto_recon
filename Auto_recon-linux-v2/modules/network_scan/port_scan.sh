#!/bin/bash
source core/logger.sh
source core/scanner_utils.sh
read -p "Enter target: " target
ask_report_format
log "🔎 Port scan on $target"
nmap -p- "$target" -oX "$REPORT_DIR/scan_$TIMESTAMP.xml" | tee -a "$LOG_FILE"
generate_html_report
