#!/bin/bash

# Lemonbar Data Passed to Config file

clock() {
	date='date '+%I:%M:%S''
	echo "%{F#D41150} $date"
}

date() {
	date='date '+%D''
	echo "%{F#D41150} $date"
}

while true; do
	buf=""
	buf="${buf} $(clock)"
done
