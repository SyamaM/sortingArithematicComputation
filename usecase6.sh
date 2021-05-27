#!/bin/bash -x
read -p "enter the first value" a
read -p "enter the second value" b
read -p "enter the third value" c
com1=$(($a+$b*$c))
com2=$(($a*$b+$c))
com3=$(($c+($a/$b)))
mod=$(($a%$b))
com4=$(($mod+$c))
declare -A compute
compute["key1"]=$com1
compute+=( ["key2"]=$com2 ["key3"]=$com3 ["key4"]=$com4 )
for key in ${!compute[@]};do
	echo ${key} ${compute[${key}]}
done
