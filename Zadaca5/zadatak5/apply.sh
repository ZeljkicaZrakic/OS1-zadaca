#!/bin/bash

if [ "$#" -ne 2 ]; then
     echo "Potrebno je proslijediti točno dva arugmenta."
     exit1
fi

perm=$1
file=$2

convert() {
    local part=$1
    local value=0

    [[ ${part:0:1} == "r" ]] && ((value+=4))
    [[ ${part:1:1} == "w" ]] && ((value+=2))
    [[ ${part:2:1} == "x" ]] && ((value+=1))

    echo $value
}

owner=$(convert "${perm:0:3}")
group=$(convert "${perm:3:3}")
other=$(convert "${perm:6:3}")

octal="$owner$group$other"

chmod "$octal" "$file"

echo "Dozvole $perm pretvorene su u $octal i primijenjene su na $file."

