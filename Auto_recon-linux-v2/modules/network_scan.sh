#!/bin/bash
echo "🔧 Choose Scan Type:"
echo "1. Port Scan"
echo "2. Service Detection"
echo "3. OS Detection"
echo "4. Vulnerability Scan"
echo "5. Ping Sweep"
read -p "Option: " sub
case $sub in
  1) bash modules/network_scan/port_scan.sh ;;
  2) bash modules/network_scan/version_detection.sh ;;
  3) bash modules/network_scan/os_detection.sh ;;
  4) bash modules/network_scan/vuln_scan.sh ;;
  5) bash modules/network_scan/ping_sweep.sh ;;
esac