#!/usr/bin/env bash
set -euo pipefail
python3 -m pip install --user impacket
mkdir -p ~/share
python3 -m impacket.smbserver share ~/share -smb2support
