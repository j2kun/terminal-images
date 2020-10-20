#!/bin/bash
PEN_COLORS="1=#839496:2=#d30102:3=#268bd2:4=#859900:5=#cb4b16"

graph \
    -T svg \
    -F Courier \
    --bg-color "none" \
    -W 0.01 \
    -f 0.07 \
    -C \
    --pen-colors "$PEN_COLORS" \
    --frame-color "#839496" \
| xml-sed 's/polyline/polyline@stroke-linejoin=round/z'
