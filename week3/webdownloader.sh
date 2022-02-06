#!/bin/bash



### ---------------------------------------------------------------------------------- ###

### Prompting user to type the Website URL ###


###  storing the website ###
### ---------------------------------------------------------------------------------###
read -p "Enter the location where you would like to download the file or or type exit to quit: " folderName

if [ $folderName == "exit" ] 

then

exit 

else


 

read -p "Enter the website name : " website
 
while [ $website != "exit" ]
do
    wget --limit-rate=1m --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla $website
    
    mv $website "$folderName"
    read -p "Enter the website name : " website


done

fi





 