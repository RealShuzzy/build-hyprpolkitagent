#!/bin/bash

PKG="hyprpolkitagent"

SCRIPT="../../shuzzyos-arch-repo/update.sh"

rm ${PKG}-shuzzyos-debug-*-x86_64.pkg.tar.zst
rsync -r ${PKG}-shuzzyos-*-x86_64.pkg.tar.zst ../../shuzzyos-arch-repo/x86_64/

(
    cd "$(dirname "$SCRIPT")" || exit 1
    bash $(basename "$SCRIPT")
)
