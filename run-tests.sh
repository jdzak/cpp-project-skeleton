#!/bin/bash
make

if [ $? -eq 0 ] ; then
  for f in test/target/*test
  do
      echo "Running test - $f"
      exec $f
  done
fi