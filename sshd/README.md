#### Description

**sshd** in a docker-container based on the lightweight Alpine Linux.

#### Usage:

    docker run \
        -d \
        --name sshd \
        -p 22:22 \
        maxpatternman/sshd

##### Oneliner
`docker run -d --name sshd -p 22:22 maxpatternman/sshd`

##### !Important! renew the keys
`docker exec sshd startscript`

##### Add a new user
`docker exec -ti sshd adduser [USERNAME]`

#### Env

##### Timezone
Use the TZ variable to change the timezone.
Check out the [wiki](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
e.g. `-e TZ='America/Chicago'`
You must run the startup script once for the changes to take effect.
`docker exec sshd startscript`
