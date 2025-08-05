#!/bin/bash

# Define source and destination
SRC="/mnt/c/Users/JimSmits/OneDrive - StayOnline/Documents/Obsidian Vaults/stayoline-wire/_posts"
DEST="/home/jim/stayonline-wire/_posts"

IMGSRC="/mnt/c/Users/JimSmits/OneDrive - StayOnline/Documents/Obsidian Vaults/stayoline-wire/assets"
IMGDEST="/home/jim/stayonline-wire/assets"

# Sync files without deleting anything
rsync -av "$SRC/" "$DEST/"
rsync -av "$IMGSRC/" "$IMGDEST/"
