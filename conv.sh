mkdir transcoded; for i in *.mp4 *.mkv *.MOV; do ffmpeg -i "$i" -c:v prores -profile:v 3 -c:a pcm_s16be -q:a 3 -f mov "transcoded/${i%.*}.mov"; done
