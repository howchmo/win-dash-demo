ffmpeg -f webm_dash_manifest -live 1 -i glass_360.hdr -f webm_dash_manifest -c copy -map 0 -f webm_dash_manifest -live 1 -adaptation_sets "id=0,streams=0" -chunk_start_index 1 -chunk_duration_ms 2000 -time_shift_buffer_depth 7200 -minimum_update_period 7200 glass_live_manifest.mpd