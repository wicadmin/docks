#### Description

**TeamSpeak3 Server** in a docker-container based on the lightweight Alpine Linux.

#### Usage:

`docker run -d --restart="always" --name teamspeak -p 10011:10011 -p 30033:30033 -p 9987:9987/udp maxpatternman/teamspeak`

Look for the admin password with:

`docker logs teamspeak`

#### Suggestion

Use the TeamSpeak3 container as a throw away container by creating an ts-data volume and mount that directly.
So your server stays persistent.

e.g.:

`docker volume create ts-data`

`docker run -d --rm --name teamspeak -v ts-data:/opt/teamspeak3 -p 10011:10011 -p 30033:30033 -p 9987:9987/udp maxpatternman/teamspeak`
