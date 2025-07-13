#!/bin/bash
run_menu() {
  while true; do
    echo -e "\n🛠  Select Scan Option:"
    echo "1. Host Discovery"
    echo "2. Network Scan (submenu)"
    echo "3. Helper Tools"
    echo "4. Exit"
    read -p "Option: " opt
    case $opt in
      1) bash modules/host_scan.sh ;;
      2) bash modules/network_scan.sh ;;
      3) run_helpers ;;
      4) echo "Bye!" && exit ;;
      *) echo "Invalid." ;;
    esac
  done
}
run_helpers() {
  echo "1. nslookup"
  echo "2. traceroute"
  echo "3. whois"
  read -p "Choose: " h
  case $h in
    1) bash helpers/nslookup.sh ;;
    2) bash helpers/traceroute.sh ;;
    3) bash helpers/whois_lookup.sh ;;
  esac
}
handle_cli() {
  local target=""
  local scan=""
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      --target) target="$2"; shift ;;
      --scan) scan="$2"; shift ;;
    esac
    shift
  done
  [[ -z "$target" || -z "$scan" ]] && echo "Usage: --scan [type] --target [ip]" && exit 1
  bash "modules/network_scan/$scan.sh" "$target"
}