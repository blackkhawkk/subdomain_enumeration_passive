#!/bin/bash

domain=$1
curl "https://tls.bufferover.run/dns?q=$domain" -H 'x-api-key: ' | jq -r '.Results[]' | cut -d ',' -f5 | grep -F "$domain" | sort -u
