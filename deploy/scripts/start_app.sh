#!/bin/sh

# export env vars
export $(egrep -v '^#' /env/.env)

printenv | grep REDIS

# start app
pm2-runtime /home/node/app/process.yml

# this line is added to stop container completes with exit code 0
# tail -f /dev/null
