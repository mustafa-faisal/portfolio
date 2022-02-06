#!/bin/bash

for text in  `cat filenames.txt`

do

if [ -f $text ]; then


echo "$text That file exists."

elif [ -d $text ]; then

echo "$text That's a directory"

else

echo "$text  I don't know what that is!"
echo " Test your new script on"

  fi

done

exit 0