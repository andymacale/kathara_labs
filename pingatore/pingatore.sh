#!/bin/sh

fileC=$(find . -name pingatore.c)

if [ -n $fileC]; then
    gcc -o pingatore pingatore.c
    wait
    rm -f pingatore.c
fi

if [ -n "$1" ]; then
    pos=$(pwd)
    cd "$1" || { echo "Percorso '$1\' non trovato"; exit 1; }
    cd "$pos"
fi

arg=$(echo $file | xargs)

if [ -n "$1" ];
    then
        lista=$(find macaleandrea/*.startup)
        carattere="/n"
        carattere=" "
        file=${lista//$carattere}
        
    else
        lista=$(ls -m | grep .startup)
        carattere=","
        file=${lista//$carattere}
fi

arg=$(echo $file | xargs)

programma="./pingatore"

comando="${programma} ${arg}"

$comando

if [ -f indirizzi.sh ]; then
    chmod 777 indirizzi.sh
else
    echo "File 'indirizzi.sh' non trovato!"
fi