#!/bin/bash -x

set -e

CURRENT_PATH=`pwd`

find $CURRENT_PATH -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc" > cscope.files
cscope -Rbkq -i cscope.files

# mv cscope.in.out ~/cscope
# mv cscope.out    ~/cscope
# mv cscope.po.out ~/cscope

rm cscope.files
