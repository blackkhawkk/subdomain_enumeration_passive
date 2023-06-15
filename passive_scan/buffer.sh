#!/bin/bash

domain=$1
curl "https://tls.bufferover.run/dns?q=$domain" -H 'x-api-key: ls9sK55VKMaRzB96FxV4J7VwIDn0VpdV13FvPp0p' | jq -r '.Results[]' | cut -d ',' -f5 | grep -F "$domain" | sort -u
