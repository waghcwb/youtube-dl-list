#!/usr/bin/env bash

set -e

while read -r line;
do
    youtube-dl $line --extract-audio --audio-format mp3 --proxy socks5://localhost:8080
done < "download-list.txt" > "download-list.log"

mv *.mp3 ~/Music