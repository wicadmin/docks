#### Description

**TeamSpeak3 Server** in a docker-container based on the lightweight Alpine Linux.

#### Usage:

`docker run -d --restart="always" --name teamspeak -p 10011:10011 -p 30033:30033 -p 9987:9987/udp maxpatternman/teamspeak`

Look for the admin password with:

`docker logs teamspeak`