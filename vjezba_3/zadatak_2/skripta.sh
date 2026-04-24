#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Potrebno je proslijediti tocno 1 argument"
    exit 1
fi

broj="$1"

if [ "$broj" -lt 1 ] || [ "$broj" -gt 10 ]; then
    echo "Broj mora biti izmedu 1 i 10"
    exit 2
fi

seq 1 "$broj" > brojevi.txt
