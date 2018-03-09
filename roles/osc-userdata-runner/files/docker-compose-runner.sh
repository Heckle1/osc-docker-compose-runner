#!/bin/bash
FILEPATH=/opt/osc-docker-compose-runner/docker-compose.yml
OSC_DOCKER_COMPOSER_RUNNER_DIRECTORY=/opt/osc-docker-compose-runner/
USERDATA_LOCKFILE=/opt/osc-docker-compose-runner/user-data-getted.lock

curl --silent http://169.254.169.254/1.0/user-data/ > $FILEPATH

if [ -s "$FILEPATH" ] &&  [ ! -f "$USERDATA_LOCKFILE" ];
then
    echo "---- docker-compose file getted ! $FILEPATH" >> /dev/ttyS0
		cd "$OSC_DOCKER_COMPOSER_RUNNER_DIRECTORY"
		/usr/local/bin/docker-compose up -d
		if [ $? -ne 0 ]; then
				echo "---- docker-compose failed to create container" >> /dev/ttyS0
		else
				echo "---- docker-compose create container with success !" >> /dev/ttyS0
				touch "$USERDATA_LOCKFILE"
		fi
fi
