#### Description

**Youtube-dl** in a docker-container based on the lightweight Alpine Linux.

#### Usage:

    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v /home/xyz:/target \
        maxpatternman/youtube-dl

##### Oneliner
`docker run --rm -d --read-only -u $UID:$EUID -v /home/xyz:/target maxpatternman/youtube-dl`

Please visit https://github.com/rg3/youtube-dl/blob/master/README.md#options for more details about all options.

#### Startscript

Feel free to use my startscript.
It requires bash to run.
https://github.com/maxpatternman/docks/blob/master/youtube-dl/youtube-dl-docker

#### Examples:

##### Download music in home directory
    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v $HOME:/target \
        maxpatternman/youtube-dl https://www.youtube.com/watch?v=QH2-TGUlwu4 --extract-audio --audio-format mp3

##### Download video
    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v $HOME:/target \
        maxpatternman/youtube-dl https://www.youtube.com/watch?v=9C_HReR_McQ -f mp4

##### Costum option
    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v $HOME:/target \
        maxpatternman/youtube-dl https://www.youtube.com/watch?v=2Z4m4lnjxkY -x --audio-format opus
