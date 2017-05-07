#### Description

**Youtube-dl** in a docker-container based on the lightweight Alpine Linux.
I added some presets for more comfort.

#### Environment:

| Environment | Default value |
|-------------|---------------|
| URL         | none          |
| OUTPUT      | mp3           |
| DEBUG       | false         |

#### Usage:

    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v /home/xyz:/target \
        -e URL=url \
        -e OUTPUT=mp3 \
        -e DEBUG=false \
        maxpatternman/youtube-dl
        
#### Explanation:

**replace** \
*optional*

| Option                    | Explanation |
|---------------------------|-------------|
| --rm -d --read-only       |  Remove container after finished process and deamon mode (background), read-only for security's sake |
| *-u $UID:$EUID*           |  UID/GID from current user will be set otherwise the file will be created as root |
| -v **/home/xyz**:/target  |  Replace /home/xyz with your target directory |
| -e URL=**url**            |  Replace url with the youtube link |
| _-e OUTPUT=**mp3**_       |  Replace mp3 with an preset or define your own options for youtube-dl. If you don't define OUTPUT it will create a mp3 file |
| _-e DEBUG=**false**_      |  Set to true for DEBUG-Mode |

##### Presets

| Presets for OUTPUT | Options |
|--------------------|---------|
| mp3                | --extract-audio --audio-format mp3 |
| mp3HQ              | --extract-audio --audio-quality 0 --audio-format mp3 |
| wav                | --extract-audio --audio-format wav |
| wavHQ              | --extract-audio --audio-quality 0 --audio-format wav |
| mp4                | -f mp4 |
| mp4HQ              | -f bestvideo[ext=mp4]+bestaudio[ext=m4a] |
| bestaudio          | -f bestaudio |

You can also use your own options. Just declare the OUTPUT variable with them. e.g: -e OUTPUT="--simulate"
Please visit https://github.com/rg3/youtube-dl/blob/master/README.md#options for more details.

#### Examples:

##### Download music in home directory
    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v $HOME:/target \
        -e URL="https://www.youtube.com/watch?v=QH2-TGUlwu4" \
        maxpatternman/youtube-dl

##### Download video
    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v $HOME:/target \
        -e URL="https://www.youtube.com/watch?v=9C_HReR_McQ" \
        -e OUTPUT=mp4 \
        maxpatternman/youtube-dl

##### Costum option
    docker run \
        --rm -d --read-only \
        -u $UID:$EUID \
        -v $HOME:/target \
        -e URL="https://www.youtube.com/watch?v=2Z4m4lnjxkY" \
        -e OUTPUT="-x --audio-format opus" \
        maxpatternman/youtube-dl

##### Debug
    docker run \
        --rm -t -i --read-only \
        -u $UID:$EUID \
        -v $HOME:/target \
        -e URL="https://www.youtube.com/watch?v=fe4fyhzS3UM" \
        -e OUTPUT=mp4HQ \
        -e DEBUG=true \
        maxpatternman/youtube-dl

