#!/bin/bash
set -e

if command -v ya &>/dev/null; then
  echo "[*] Installing yazi packages..."
  ya pkg install
else
  echo "[!] ya not found, skipping yazi package install"
fi
