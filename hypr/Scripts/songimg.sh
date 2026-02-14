#!/bin/bash

if [[ $(playerctl -p chromium status 2>/dev/null) == "Playing" ]]; then
    
    song_img=$(playerctl -p chromium metadata mpris:artUrl | sed 's/^.*\///')
    echo "/tmp/$song_img"
else
    echo ""    
fi

