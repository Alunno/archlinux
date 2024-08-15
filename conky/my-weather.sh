#!/bin/bash

url="api.openweathermap.org/data/2.5/weather?$(grep lat ~/.conky/variables.lst)&$(grep lon ~/.conky/variables.lst)&mode=xml&$(grep units ~/.conky/variables.lst)&$(grep lang ~/.conky/variables.lst)&$(grep appid ~/.conky/variables.lst)" 
curl ${url} -s -o ~/.cache/weather.xml
