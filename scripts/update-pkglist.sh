#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

echo ">>> Update list of officialy pkgs..."
pacman -Qqe >"$REPO_ROOT/packages/pkglist.txt"

echo ">>> Update list of AUR-pkgs..."
pacman -Qqm >"$REPO_ROOT/packages/aurlist.txt"

echo "done."
