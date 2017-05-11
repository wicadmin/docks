#/bin/ash
set -e

# if URL var wasn't changed
if [ "$URL" = "none" ]; then
  echo 'ERROR: missing URL. Define URL with: -e URL="https://www.youtube.com/watch/...."'
  exit 1
fi

# verbose for debugging
if $DEBUG; then
  DEBUG="-v"
else
  DEBUG="-q"
fi

# case insensitive
OUTPUT="$(echo $OUTPUT | tr '[:upper:]' '[:lower:]')"

# initial var OPTION
OPTION=""

# case switch for presets
case "$OUTPUT" in
        mp3)
            OPTION="--extract-audio --audio-format mp3"
            ;;
        mp3hq)
            OPTION="--extract-audio --audio-quality 0 --audio-format mp3"
            ;;
        wav)
            OPTION="--extract-audio --audio-format wav"
            ;;
        wavhq)
            OPTION="--extract-audio --audio-quality 0 --audio-format wav"
            ;;
        mp4)
            OPTION="-f mp4"
            ;;
        mp4hq)
            OPTION="-f bestvideo[ext=mp4]+bestaudio[ext=m4a]"
            ;;
        bestaudio)
            OPTION="-f bestaudio"
            ;;

        install)
	    cd /target
            cp -f /youtube-dl-docker ./
	    chmod 711 youtube-dl-docker
	    echo "Installation complete."
            exit 0
            ;;
        *)
            OPTION="$OUTPUT"
            ;;
esac

# change directory to target
cd /target

# exec
youtube-dl $DEBUG $OPTION -o "%(title)s.%(ext)s" --no-cache-dir $URL

exit 0
