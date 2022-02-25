#!/usr/bin/env bash
#this file runs some command that must run after deploy example: run a db seed
echo "Run CMD"
if [ "$1" == "develop" ]; then
    shift 1
    #write your commands below
    echo "run queue:listen"
    docker exec -d php-develop php artisan queue:listen
fi

if [ "$1" == "master" ]; then
    shift 1
    #write your commands below
    echo "run queue:listen"
    docker exec -d php-master php artisan queue:listen
fi



