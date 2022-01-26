#!/bin/bash

read -sp "Enter the password : " pass_var

hash1=`cat test/secret.txt`

hash2=`echo $pass_var | sha256sum`

if [ "$hash1" = "$hash2" ];
then
    echo "Access granted"
    exit 0
else
    echo "Access Denied"
    exit 1
fi