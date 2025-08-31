#!/usr/bin/env bash
set -euo pipefail
IFACE=${1:-eth0}
sudo responder -I "$IFACE" -wrf
