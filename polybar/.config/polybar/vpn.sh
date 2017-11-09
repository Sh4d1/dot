#!/bin/sh

PID=$(pgrep openvpn)
if [ -z "$PID" ]
then
	NAME=""
else
	NAME="$(cat /proc/$PID/cmdline | cut -d '.' -f 1 | cut -c 43-)"
fi
echo "$NAME"
