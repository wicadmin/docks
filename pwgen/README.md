#### Description

**Password generator** in a docker-container based on the lightweight Alpine Linux.

#### Environment:

| Environment | Default value |
|-------------|---------------|
| OPTIONS     | -s -N 1 16    |

#### Usage:

    docker run --rm -ti -e OPTIONS="-s -N 1 16" maxpatternman/pwgen

#### Need help for Options? Run:

    docker run --rm -ti -e OPTIONS="--help" maxpatternman/pwgen

