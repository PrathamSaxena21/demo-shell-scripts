#!/bin/bash

<<info 
loops : anything that you want to repeat again and again based on conditions
for loops conditions : 

1..10
start point = 1
end point = 10

increment/decrement = + / -

5...1 
start = 5
end = 1 
decrement 5 times 
info

for (( num=1 ; num<=10 ; num++))
do 
	echo "$num"
	echo "hello"
done

