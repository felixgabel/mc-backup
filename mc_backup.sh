#!/bin/bash

SRC='/Users/felix/Library/Application Support/minecraft'
DATE=$(date +"%Y_%m_%d")
DST="/Users/felix/Desktop/$DATE"

mkdir -p "$DST"

DIRS=(
    config
    mods
    resourcepacks
    saves
    screenshots
    shaderpacks
)

FILES=(
    options.txt
)

echo "creating minecraft-backup..."
echo "from: $SRC"
echo "to: $DST"
echo ""

# copy directories
for dir in "${DIRS[@]}"; do
    SRC_PATH="$SRC/$dir"
    if [ -d "$SRC_PATH" ]; then
        echo "copying $dir/..."
        cp -R "$SRC_PATH" "$DST/"
        echo "done"
        echo ""
    else
        echo "'$dir' not found! proceed with next..."
        echo ""
    fi
done

echo ""

# copy files
for file in "${FILES[@]}"; do
    SRC_PATH="$SRC/$file"
    if [ -f "$SRC_PATH" ]; then
        echo "copying $file..."
        cp "$SRC_PATH" "$DST/"
        echo "done"
        echo ""
    else
        echo "'$file' not found! proceed with next..."
        echo ""
    fi
done

echo ""
echo "finished"
