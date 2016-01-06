#!/bin/sh

cd build

cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ../third_party/ycmd/cpp/

if [[ $? != 0 ]]; then
	# Error occurred
	exit
fi

cmake --build . --target ycm_support_libs
