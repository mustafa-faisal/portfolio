    #!/bin/bash 
   
    
#This function prints a given error 
     
printError() 
     
{ 
      
echo -e "\033[31mERROR:\033[0m $1" 
 } 
      
# This function prints message if number is Low
lownumber()
{


 if [ $REPLY -lt 42 ]; 

then 

printError "Too Low"


fi
}

# This function prints message if number is High
highnumber()
{
 
if [ $REPLY -gt 42 ];
then
printError "Too High"

fi
}

# This function prints message if number is Low
equalnumber()
{
if [ $REPLY = 42 ];
then
echo "Right!" 
fi
}

     
#This function will get a value between the 2nd and 3rd arguments 
getNumber() 
{ 
read -p "$1:" 
while (( $REPLY < $2 || $REPLY > $3 )); do 
printError "Input must be between $2 and $3" 
read -p "$1: " 
done
} 


correct()
{
      
getNumber "please type a number between 1 and 100" 1 100 

while (( $REPLY != 42 ))

do
lownumber "number is too low"

highnumber " number is too high "

getNumber "please type a number between 1 and 100" 1 100 

done

equalnumber " number is correct"
}


correct