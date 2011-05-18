#!/bin/bash
#
# wikiStart.sh - start hatta wiki and open a browser window
#
# This script exisits mainly to remind me how to get things started.
# It assumes that hatta.py can be found by using PATH

# Make sure we are in the corrected directory
if [ ! -e hatta.conf ]
then
    echo "ERROR: hatta.conf file not found. Are you in the right directory?" >&2
    exit 1
fi

# There should really be a check to make sure hatta.py is not already
# running.

hatta.py >/dev/null 2>&1 &

# probably ought to check if hatta.py actually started before opening
# the browser window...

firefox localhost:8080 &


