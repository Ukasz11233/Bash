#!/bin/bash

function dod {
	local result=$[$1+$2]
	echo $result
}

function ode {
	local result=$[$1-$2]
	echo $result
}

function mno {
	local result=$[$1*$2]
	echo $result
}

function dzi {
	local result=$[$1/$2]
	echo $result
}


function end {
	if [ $1 -eq 1 ] || [ $1 -eq 255 ]; then
		clear
		echo "Wybrales cancle lub ESC"
		`kill -9 $2`
	fi
}

