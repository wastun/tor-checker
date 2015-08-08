#!/bin/bash

SITESFILE=sites.txt #list the sites you want to monitor in this file
EMAIL=$(cat ../mailaddresses.txt) #list of email addresses to receive alerts in this file

while read site; do
    if [ ! -z "${site}" ]; then
        
        CURL=$(curl --socks5 localhost:9150 -s --head $site)
        
        if echo $CURL | grep "200 OK" > /dev/null
        then
            echo "The HTTP server on ${site} is up!"
        else    

            MESSAGE="$MESSAGE\n This is an alert that your site ${site} has failed to respond 200 OK."

        fi
    fi
done < $SITESFILE

SUBJECT="Tor-Checker Report"
printf "$MESSAGE" | mail -s "$SUBJECT" $EMAIL
echo $SUBJECT
echo "Alert sent to $mailaddress"

