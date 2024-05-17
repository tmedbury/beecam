#!/bin/bash

#FOR REOLINK CAMERAS

logger "Starting ffmpeg processes!"
ffmpeg -i rtsp://<user>:<password>@<Camera_IP>:554/h264Preview_01_main -vcodec copy -acodec copy -f flv rtmp://a.rtmp.youtube.com/live2/<KEY>
