#!/bin/bash
echo Enter the youtube url to begin downloading the video.
read VIDEO
echo What is the artist of the song?
read ARTIST
echo What is the name of the song?
read NAME
youtube-dl $VIDEO -o "${ARTIST} - ${NAME}.flv"
ffmpeg -i "${ARTIST} - ${NAME}.flv" -ac 2 -ab 128k "${ARTIST} - ${NAME}.mp3"
rm -rf "${ARTIST} - ${NAME}.flv"
echo Your video is finally converted into a mp3!
