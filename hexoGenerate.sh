#!/bin/bash

type hexo > /dev/null 2>&1 || { echo >&2 "hexo not installed."; exit 1; }

if [ -f "extra_others/gen_dot.sh" ] ; then
	extra_others/gen_dot.sh extra_others ../source/images
	hexo generate

	if [ "$?" == 0 -a -d "../guo122.github.io" ] ; then
		rm -rf ../guo122.github.io/*
		cp -rf public/* ../guo122.github.io
	fi
else
	echo "wrong path"
fi
