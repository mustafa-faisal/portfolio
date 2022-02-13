#!/bin/bash

echo "Printing all lines with sed statments"
grep -r sed

echo "Printing all lines starts with letter m"
grep -r '^m'

echo "Printing all the lines that contain three digits"
grep -r -L "[^0-3 ]"


echo "Printing all lines that making good password"
grep -r sha256sum 

grep -E -r '^echo\s*\"\w*\s\w*\s\w*\s*.*\"'