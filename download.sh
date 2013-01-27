#!/usr/bin/env bash


while [  $? -eq 0 ]; do
	JSON=`curl -q http://vinepeek.com/video`
	node find_url.js "$JSON"
	wget -c `node find_url.js "$JSON"`
	#sleep 45

done
