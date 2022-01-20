#!/bin/bash
apipath = "https://api.exchangerate-api.com/v4/latest/eur"
fileName="index.html"
Browsers= "google-chrome firefox microsoft-edge"
if $Browsers 
then
google-chrome $fileName&
else 
firefox $fileName&
fi

While  :;
do
curl -s https://api.exchangerate-api.com/cv4/latest/EUR | jq '.base'
curl -s $apipath | jq '.rates.GBP'
GBP=$ ((curl -s $apiPath | jq '.rates.GBP') | sed 's/"//g')

cat > $filename <<- _EOF_
https://api.exchangerate-api.com/v4/latest/eur
_EOF_
done
exit 0

