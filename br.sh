#!/bin/bash

make \
	BR2_DL_DIR=`pwd`/download \
	BR2_EXTERNAL=`pwd`/external \
	O=`pwd`/output \
	-C buildroot \
	"$@"
