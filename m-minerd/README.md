#### Description

**m-minerd** in a docker-container based on Ubuntu.

And use the code of:
https://github.com/magi-project/m-cpuminer-v2

#### Usage:

    docker run \
           --rm \
           -d \
           --name m-minerd \
           maxpatternman/m-minerd -o URL -u USERNAME -p PASSWORD -e CPU_EFFICIENCY

##### Oneliner
`docker run --rm -d --name m-minerd maxpatternman/youtube-dl -o URL -u USERNAME -p PASSWORD -e CPU_EFFICIENCY`

