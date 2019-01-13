alias killAll='docker ps | awk '{print $1}' | grep -v 'CONTAINER' | while read line; do docker kill $line; done'

