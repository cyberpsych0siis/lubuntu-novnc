#!/bin/bash
exec /noVNC/utils/novnc_proxy --vnc localhost:5901 --listen 0.0.0.0:80
