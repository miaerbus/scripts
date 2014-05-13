#!/bin/bash

#http://www.rtvslo.si/media.php?id=131988298&lt;video_id&gt;&mt=flv&mq=hi&wm=true&rm=false&file=playlist.xml

FILE=85/28/1nujnasejaUstavnekomisijex201203201821x700000x351x413x.mp4
OUT=1nujnasejaUstavnekomisije.flv
flvstreamer \
-A 3000 \
-B 4000 \
-n fms.rtvslo.si \
-a vod -l 0 \
-s http://tvslo.si/media_player.swf \
-t rtmp://fms.rtvslo.si/vod \
-y mp4:$FILE \
-o $OUT
