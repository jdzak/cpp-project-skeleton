#!/bin/bash
make

TEST_DIR="test/build"
if [ $? -eq 0 ] ; then
  if [$1 -n]; then
    exec $TEST_DIR/$1
  else
    for f in $TEST_DIR/*test
    do
        echo "Running test - $f"
        exec $f
    done
  fi
fi