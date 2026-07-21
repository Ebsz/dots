#!/bin/sh

# Stop all running polybar instances
polybar-msg cmd quit


polybar ishinohana 2>&1 | tee -a /tmp/polybar.log & disown
