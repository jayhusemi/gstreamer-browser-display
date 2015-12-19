#!/bin/sh
# for Windows

gst-launch-1.0 \
        ksvideosrc device-index=0 \
        ! videoconvert ! videoscale ! video/x-raw,width=320,height=240 \
        ! clockoverlay shaded-background=true font-desc="Sans 38" \
        ! theoraenc ! oggmux ! tcpserversink host=127.0.0.1 port=8080