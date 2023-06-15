curl -sk --insecure "https://jonlu.ca/anubis/subdomains/$1" | jq -r .[" "] | sort -u
