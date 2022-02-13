#!/bin/bash

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}

function searchfile(){

    read -sp "Enter the password to hack :" pass_var


    hash1=`cat password/secret.txt`

    hash2=`echo $pass_var | sha256sum`
    
    if [ "$hash1" = "$hash2" ];

    then echo "The password has been hacked"
    
    else

    printError " The password is wrong "

                      
   
 
     
   
    fi

}
searchfile

