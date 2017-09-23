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

##### Add a new user
`docker exec -ti sshd adduser [USERNAME]`

#### Env
Use the TZ variable to change the timezone.
You need to run the startscript ones
`docker exec sshd startscript`

