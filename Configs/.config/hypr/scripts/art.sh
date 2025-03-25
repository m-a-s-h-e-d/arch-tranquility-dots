#!/usr/bin/bash
url=$(playerctl metadata mpris:artUrl)
artist=$(playerctl metadata xesam:artist)
album=$(playerctl metadata xesam:album)
metadata=$(printf "$artist - $album")

if [ $url == "No player found" ]
then
  exit
elif [ -f /home/mashed/.cache/albumart/"$metadata".png ]
then
  echo /home/mashed/.cache/albumart/"$metadata".png
else
  curl -s $url -o /home/mashed/.cache/albumart/"$metadata"
  magick /home/mashed/.cache/albumart/"$metadata" /home/mashed/.cache/albumart/"$metadata".png
  rm /home/mashed/.cache/albumart/"$metadata"
  echo /home/mashed/.cache/albumart/"$metadata".png
fi