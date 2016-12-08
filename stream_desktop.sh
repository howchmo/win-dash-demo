VP9_LIVE_PARAMS="-speed 6 -tile-columns 4 -frame-parallel 1 -threads 8 -static-thresh 0 -max-intra-rate 300 -deadline realtime -lag-in-frames 0 -error-resilient 1"

ffmpeg -re -f dshow -i video="screen-capture-recorder" -map 0:0 -pix_fmt yuv420p -c:v libvpx-vp9 -s 640x360 -keyint_min 60 -g 60 ${VP9_LIVE_PARAMS} -b:v 3000k -f webm_chunk -header "glass_360.hdr" -chunk_start_index 1 glass_360_%d.chk
