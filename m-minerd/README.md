#### Description

**m-minerd** in a docker-container based on Ubuntu.

From:
https://github.com/magi-project/m-cpuminer-v2

#### Usage:

    docker run \
           --rm \
           -d \
           --name m-minerd \
           maxpatternman/m-minerd -o URL -u USERNAME -p PASSWORD -t THREAD_NUMBERS -e CPU_EFFICIENCY

THREAD_NUMBERS and CPU_EFFICIENCY are optional.

##### Oneliner
`docker run --rm -d --name m-minerd maxpatternman/m-minerd -o URL -u USERNAME -p PASSWORD -t THREAD_NUMBERS -e CPU_EFFICIENCY`

