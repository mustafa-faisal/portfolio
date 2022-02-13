#!/bin/bash

echo "User Accounts and detail:"

awk -F":" '
BEGIN {
    
    print "==========================================================================================" 
    printf "%-28s %-20s %-19s %-31s %-25s\n", "|\033[36mUsername\033[0m", "| \033[36mUserID\033[0m", "| \033[36mGroupID\033[0m", "| \033[36mHome\033[0m", "| \033[36mShell\033[0m               |"
    print "=========================================================================================="    
     
  
     

}


    $6 == "/bin/bash" {

    printf("| \033[33m %-16s\033[0m |  \033[35m %-7d\033[0m | \033[35m %-7d\033[0m | \033[35m%-20s\033[0m | \033[35m%-20s\033[0m|\n", $1, $3, $4, $6, $7);
    print "==========================================================================================" 
}

    
END {
  


}' /etc/passwd