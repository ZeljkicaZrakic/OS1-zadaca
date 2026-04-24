#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Potrebno je proslijediti tocno 2 argumenta"
    exit 1
fi

direktorij="$1"
nastavak="$2"

if [ ! -d "$direktorij" ]; then
    echo "Direktorij ne postoji"
    exit 2
fi

datoteka=$(find "$direktorij" -maxdepth 1 -type f -name "*$nastavak" | head -n 1)

if [ -z "$datoteka" ]; then
    echo "Nema datoteka s nastavkom $nastavak"
else
    basename "$datoteka"
fi
