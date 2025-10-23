#!/bin/bash
set -e

echo "Starting dynv6 updater for $DYNV6_HOST"
while true; do
  IP4=$(curl -4 -s https://4.ipw.cn || echo "")

  if [ -n "$IP4" ]; then
    curl -s "https://dynv6.com/api/update?zone=$DYNV6_HOST&ipv4=$IP4&token=$DYNV6_TOKEN" \
      && echo "Updated IPv4: $IP4"
  fi

  sleep "${INTERVAL:-300}"
done