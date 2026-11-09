#!/bin/bash
# Installs the graphify CLI (PyPI: graphifyy) if it is not already available.
export PATH="$HOME/.local/bin:$PATH"
if command -v graphify >/dev/null 2>&1; then
  exit 0
fi
if command -v uv >/dev/null 2>&1; then
  uv tool install graphifyy >/dev/null 2>&1
elif command -v pipx >/dev/null 2>&1; then
  pipx install graphifyy >/dev/null 2>&1
else
  python3 -m pip install --user graphifyy >/dev/null 2>&1
fi
exit 0
