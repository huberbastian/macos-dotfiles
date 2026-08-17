function hlsmerge
    if test (count $argv) -lt 2
        echo "Usage: hlsmerge <video.m3u8> <audio.m3u8>"
        return 1
    end

    set video $argv[1]
    set audio $argv[2]

    set outfile output_(date +%Y%m%d_%H%M%S).mp4

    ffmpeg \
        -i "$video" \
        -i "$audio" \
        -map 0:v:0 \
        -map 1:a:0 \
        -c copy \
        "$outfile"
end
