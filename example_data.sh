#!/bin/bash
curl -s https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.csv | gawk -F, 'NR>1{split($1,date,"T"); arr[date[1]]++}END{PROCINFO["sorted_in"]="@ind_str_asc"; for (a in arr) {j++; print j, arr[a]}}'
