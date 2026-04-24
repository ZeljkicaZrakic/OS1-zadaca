#!/bin/bash

brojac=1

for datoteka in screenshots/*; do
    if [ -f "$datoteka" ]; then
        naziv=$(basename "$datoteka")
        mv "$datoteka" "screenshots/screenshot_${brojac}_$naziv"
        brojac=$((brojac + 1))
    fi
done

ls screenshots
