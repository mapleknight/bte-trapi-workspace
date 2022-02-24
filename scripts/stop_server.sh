pkill node
[ "$(docker ps -a | grep test-redis)" ] && docker rm test-redis --force > /dev/null 2>&1 && echo 'Containerized redis stopped.'
redis-cli flushall > /dev/null 2>&1 && redis-cli shutdown > /dev/null 2>&1 && echo 'Native redis stopped.'
