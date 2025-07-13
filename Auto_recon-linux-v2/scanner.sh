#!/bin/bash
source core/config.ini
source core/logger.sh
source core/scanner_utils.sh
source core/engine.sh
if [[ $# -gt 0 ]]; then
    handle_cli "$@"
else
    run_menu
fi