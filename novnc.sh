#!/bin/bash
exec /sbin/setuser developer /home/developer/.vnc/vnc.sh >>/var/log/vncserver.log 2>&1
exec /noVNC/utils/novnc_proxy --vnc localhost:5901 --listen 0.0.0.0:80
