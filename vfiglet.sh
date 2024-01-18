#!/bin/bash

text="Figlet"

terminal_height=$(tput lines)
empty_lines_above=$(( (terminal_height - $(figlet -t "$text" | wc -l)) / 2 ))
empty_lines_below=$(( terminal_height - empty_lines_above - $(figlet -t "$text" | wc -l) ))

for ((i=0; i<empty_lines_above; i++)); do
    echo
done

figlet -w 136 -cf ~/fonts/Delta\ Corps\ Priest\ 1.flf -t "$text" | lolcat

for ((i=0; i<empty_lines_below; i++)); do
    echo
done

