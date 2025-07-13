#!/bin/bash
mkdir -p "$LOG_DIR"
mkdir -p "$REPORT_DIR"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
LOG_FILE="$LOG_DIR/scan_$TIMESTAMP.log"
REPORT_FILE="$REPORT_DIR/scan_$TIMESTAMP.html"
log() {
  echo -e "$1" | tee -a "$LOG_FILE"
}