#!/bin/bash

flvstreamer \
-n fms.rtvslo.si \
-a live -l 0 \
-s http://tvslo.si/media_player.swf \
-t rtmp://fms.rtvslo.si/live \
-y slo3-low \
-v -B 10 \
-o slo3-low.flv

