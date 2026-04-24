#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Potrebno je proslijediti samo jedan argument"
    exit 1
fi

direktorij="$1"

if [ ! -d "./$direktorij" ]; then
    echo "Direktorij ne postoji"
    exit 2
fi

zip svi_zapisi.zip "$direktorij"/*
