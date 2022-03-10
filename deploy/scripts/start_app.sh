#!/bin/sh

# export env vars
export $(egrep -v '^#' /env/.env)

printenv | grep REDIS

# start app
pm2-runtime bte-pm2.json --env env_prodci --only bte-trapi

# this line is added to stop container completes with exit code 0
# tail -f /dev/null
