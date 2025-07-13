#!/bin/bash
validate_ip() {
  [[ $1 =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]
}
ask_report_format() {
  echo -e "Choose output format:"
  echo "1. Raw only"
  echo "2. Raw + HTML"
  read -p "Select [1/2]: " fmt
  if [[ "$fmt" == "2" ]]; then
    HTML_REPORT="true"
  else
    HTML_REPORT="false"
  fi
}

generate_html_report() {
  if [[ "$HTML_REPORT" == "true" ]]; then
    local xml_file="$REPORT_DIR/scan_$TIMESTAMP.xml"
    local html_file="$REPORT_DIR/scan_$TIMESTAMP.html"
    if command -v xsltproc &>/dev/null; then
      xsltproc "$xml_file" -o "$html_file"
      echo -e "\n📄 HTML report saved to: $html_file"
    else
      echo -e "\n⚠️  xsltproc not found. Install with: sudo apt install xsltproc"
    fi
  fi
}
