### Description

**Password generator** in a docker-container based on the lightweight **Alpine Linux**.

### Usage

    docker run --rm -ti maxpatternman/pwgen

### Examples

    docker run --rm -ti maxpatternman/pwgen -s -N 1 16

#### Output to a text file

    docker run --rm -ti maxpatternman/pwgen -s -1 -N 10 16 > pw.txt

#### Optional

    --network="none" //There is no need for a network connection

