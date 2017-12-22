#### Description

**cpuminer-opt** in a docker-container based on Ubuntu.

From:
https://github.com/JayDDee/cpuminer-opt

#### Usage:

    docker run \
           --rm \
           -d \
           --name cpuminer-opt \
           maxpatternman/cpuminer-opt -a ALGORITHM -o URL -u USERNAME -p PASSWORD -t THREAD_NUMBERS

THREAD_NUMBERS is optional.

##### Oneliner
`docker run --rm -d --name cpuminer-opt maxpatternman/cpuminer-opt -a ALGORITHM -o URL -u USERNAME -p PASSWORD -t THREAD_NUMBERS`

#### Systemd Unit File (recommended)

URL: https://github.com/maxpatternman/docks/blob/master/cpuminer-opt/cpuminer-opt.service

##### Installation

1. Download the Unit File  
`sudo wget -O /etc/systemd/system/cpuminer-opt.service https://raw.githubusercontent.com/maxpatternman/docks/master/cpuminer-opt/cpuminer-opt.service`  
or  
`sudo curl https://raw.githubusercontent.com/maxpatternman/docks/master/cpuminer-opt/cpuminer-opt.service -o /etc/systemd/system/cpuminer-opt.service`

2. Open /etc/systemd/system/cpuminer-opt.service and change the parameters like above.  
`sudo nano /etc/systemd/system/cpuminer-opt.service`  
or  
`sudo vi /etc/systemd/system/cpuminer-opt.service`

##### Enable & Start

`sudo systemctl enable cpuminer-opt.service && sudo systemctl start cpuminer-opt.service`

##### Disable & Stop

`sudo systemctl disable cpuminer-opt.service && sudo systemctl stop cpuminer-opt.service`
