#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

PKGLIST="$REPO_ROOT/packages/pkglist.txt"
AURLIST="$REPO_ROOT/packages/aurlist.txt"

if [[ ! -f "$PKGLIST" ]]; then
    echo "Error: pkg: $PKGLIST is not found"
    exit 1
fi

echo ">>> Installing officially pkgs..."
sudo pacman -S --needed --noconfirm - <"$PKGLIST"

if [[ -f "$AURLIST" ]] && [[ -s "$AURLIST" ]]; then
    if command -v yay &>/dev/null; then
        echo ">>> Installing AUR-pkgs with yay..."
        yay -S --needed --noconfirm - <"$AURLIST"
    else
        echo "Warn: yay is not found. AUR-pgks skipped."
        echo "Install yay and run script again."
    fi
else
    echo "AUR-list is empty, skip."
fi

echo ">>> done."
