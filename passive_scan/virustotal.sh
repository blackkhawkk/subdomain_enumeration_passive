curl -sk --insecure "https://www.virustotal.com/vtapi/v2/domain/report?apikey=()&domain=$1" | jq -r '.subdomains[]?' | sort -u
