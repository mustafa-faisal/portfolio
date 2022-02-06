#!/bin/bash

### Declaring Fruit Array ###
### ------------------------------------- ###
declare -a fruits=(Apple, Mango, Strawberry, Orange, Banana)

for ((i=0; i<${#fruits[@]}; i++))



do

echo "FRUITS [$i] ->" ${fruits[@]}

done