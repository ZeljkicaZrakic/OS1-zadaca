#!/bin/bash


if [ "$#" -ne 1 ]; then
    echo "Potrebno je proslijediti tocno jedan argument"
    exit 1
fi

repo="$1"

if [ ! -d "$repo" ]; then
    echo "Direktorij ne postoji"
    exit 2
fi

if [ ! -d "$repo/.git" ]; then
    echo "Nije Git repozitorij"
    exit 3
fi

cd "$repo" || exit 4

echo "Informacije o repozitoriju" > repozitorij_info.txt

git add repozitorij_info.txt
git commit -m "Dodana datoteka repozitorij_info"
git log --oneline
