#!/bin/bash

cp -f ~/.conky/weather-icons/$(cat ~/.cache/weather.xml|awk -F'[><]' '{print $68}'|grep icon|awk -F'="' '{print $4}'|awk -F'"' '{print $1}').png ~/.cache/weather.png
