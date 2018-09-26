#!/bin/bash
docker run --rm -ti \
  --env="DISPLAY" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix" \
  speaker-recognition
