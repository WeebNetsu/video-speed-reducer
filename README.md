# Video Speed Reducer (VSR)
Slow down videos with a simple shell script

## How to use
Simply run: `./slower.sh myvideo.mp4`

And it will output a file called `myvideo_slowed.mp4`

## Changing video speed
Currently the easiest way to change the speed is to modify this line: `ffmpeg -i "$input_file" -filter_complex "[0:v]setpts=1.33*PTS[v];[0:a]atempo=0.75[a]" -map "[v]" -map "[a]" "$output_file"`

- `setpts=1.33*PTS` - this slows down the video (ie. `1.176` will create a 0.85x speed of original video)
- `atempo=0.75` - matches the audio speed to the video speed
