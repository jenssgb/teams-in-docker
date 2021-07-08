#!/bin/bash
docker run -it --net=host --env="DISPLAY" \
--volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
--privileged \
ms-teams-docker