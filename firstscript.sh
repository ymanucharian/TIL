#!/bin/bash
access_token=$(curl -X POST \
-H 'content-type:application/x-www-form-urlencoded' \
-d 'username=ymanucharian&password=secret' \
http://localhost:8000/auth) | jq -r ".access_token"
echo "$access_token"
curl -X GET \
-H "Authorization: Bearer ${access_token}" http://localhost:8000/image --output /Users/user/Documents/AutomatedTesting/Lessons/image7.png
