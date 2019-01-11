#!/bin/sh

help () {
    echo "tipp.sh - Entfernt leere Zeilen und Kommentare aus dem Quellcode."
    echo ""
    echo "  tipp.sh <input> [output]"
    echo ""
    echo "    input - Eingabedatei mit zu bearbeitendem Quelltext"
    echo "    output - Ausgabedatei für bearbeiteten Quelltext, wird überschrieben falls vorhanden"
}

if [ ! $1 ]; then
    help
    exit 0
fi

if [ ! -f $1 ]; then
    echo "Fehler! Die Eingabedatei ist nicht vorhanden: ${1}"
    exit 1
fi

if [ $2 ]; then
    sed '/^\"/d' $1 | sed '/^[[:space:]]*$/d' - > $2
else
    sed '/^\"/d' $1 | sed '/^[[:space:]]*$/d' -
fi
