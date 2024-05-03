#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.*}_slowed.${input_file##*.}"

ffmpeg -i "$input_file" -filter_complex "[0:v]setpts=1.33*PTS[v];[0:a]atempo=0.75[a]" -map "[v]" -map "[a]" "$output_file"
