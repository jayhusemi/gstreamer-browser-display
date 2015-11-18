#!/bin/sh

gst-launch-1.0 \
        v4l2src device=/dev/video0 ! video/x-raw,width=320,height=240 \
        ! videoscale ! videoconvert \
        ! clockoverlay shaded-background=true font-desc="Sans 38" \
        ! theoraenc ! oggmux ! tcpserversink host=127.0.0.1 port=8080