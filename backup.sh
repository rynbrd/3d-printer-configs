#!/bin/bash

ROOT=$(cd "$(dirname "$0")"; pwd)
KLIPPER_CONFIG=klipper-config

V2700_IP=192.168.86.188
V2700_DEST="$ROOT/printers/V2.700"

VS096_IP=192.168.86.137
VS096_DEST="$ROOT/printers/VS.096"

SUPERSLICER_SRC=/mnt/c/Users/BlueDragonX/AppData/Roaming/SuperSlicer
SUPERSLICER_DEST="$ROOT/slicers/SuperSlicer"

backup_printer() {
	mkdir -p "$2"
	rsync -av --delete --exclude="*.json" --exclude="printer-????????_??????.cfg" --exclude-from="$ROOT/.gitignore" "pi@${1}:$KLIPPER_CONFIG/" "$2"
}

backup_superslicer() {
	mkdir -p "$2"
	for dir in filament print printer sla_material sla_print snapshots vendor; do
		rsync -av --delete --exclude='.*' --exclude-from="$ROOT/.gitignore" "$1/$dir" "$2/"
	done
}

backup_printer "$V2700_IP" "$V2700_DEST"
backup_printer "$VS096_IP" "$VS096_DEST"
backup_superslicer "$SUPERSLICER_SRC" "$SUPERSLICER_DEST"
