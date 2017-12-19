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

#### Systemd Unit File (recommended)

URL: https://github.com/maxpatternman/docks/blob/master/m-minerd/m-minerd.service

##### Installation

1. Download the Unit File  
`sudo wget -O /etc/systemd/system/m-minerd.service https://raw.githubusercontent.com/maxpatternman/docks/master/m-minerd/m-minerd.service`  
or  
`sudo curl https://raw.githubusercontent.com/maxpatternman/docks/master/m-minerd/m-minerd.service -o /etc/systemd/system/m-minerd.service`

2. Open /etc/systemd/system/m-minerd.service and change the parameters like above.  
`sudo nano /etc/systemd/system/m-minerd.service`  
or  
`sudo vi /etc/systemd/system/m-minerd.service`

##### Enable & Start

`sudo systemctl enable m-minerd.service && sudo systemctl start m-minerd.service`

##### Disable & Stop

`sudo systemctl disable m-minerd.service && sudo systemctl stop m-minerd.service`
