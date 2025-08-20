#!/bin/bash

# Command Line for URLs

curl google.com

# -X: Specific method
# cur -X -POST google.com -d '{"title": "curl_command"}'
curl -XPOST google.com -d '{"title": "curl_command"}'

curl -XPUT google.com -d '{"title": "curl_command"}'
curl -XDELETE google.com -d '{"title": "curl_command"}'

# -H: Request Header
curl -XDELETE google.com -H 'Content-Type:application/json' -d '{"title": "curl_command"}'

# -I: Fetch only the response headers
curl -I google.com

# -O: Output to current directory
curl -O google.com

# -o: output to specific file
curl -o ~/Downloads/xxx.html google.com

# -L: Follow redirections
curl -L google.com

# -v: verbose
curl -v google.com