curl -sk --insecure "https://api.hackertarget.com/reverseiplookup/?q=$1" | grep -oE "[a-zA-Z0-9._-]+\.$1" | sort -u
