#!/bin/sh

set -e

BOARD_DIR=$(dirname "$0")

cp -f "$BOARD_DIR/genimage-efi.cfg" "$BINARIES_DIR/genimage-efi.cfg"
support/scripts/genimage.sh -c "$BINARIES_DIR/genimage-efi.cfg"
