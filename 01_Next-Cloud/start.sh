#!/usr/bin/bash

ps_cnt=$(docker ps | wc -l)

if [[ ${ps_cnt} -gt 1 ]]; then
	echo -e "Stop an existing container\n"
	/usr/local/bin/docker-compose down
fi

echo -e "\nStarting Docker-Compose ..\n"
/usr/local/bin/docker-compose up -d --build; echo "Done" || exit 1
