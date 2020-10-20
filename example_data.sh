#!/bin/bash
curl -s https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.csv |
    q -H -d ',' 'select date(time), count(*) from - group by date(time) order by date(time)' |

# q command can be replaced by this awk command if q is not installed
#gawk -F, 'NR>1{split($1,date,"T"); arr[date[1]]++}END{PROCINFO["sorted_in"]="@ind_str_asc"; for (a in arr) {j++; print j, arr[a]}}'

    awk -F, '{j++; print j, $2}'
