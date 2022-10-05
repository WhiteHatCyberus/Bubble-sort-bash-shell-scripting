#!/bin/bash
echo "Enter length:"				#no of elements
read l
echo "Enter the input:"				#input
for ((i=0;i<l;i++))
	{
		read a[$i]
	}
echo "User input array:"
echo "P[]: ${a[*]}"				#displays user array
for ((i=0;i<l;i++))
	{
		echo "Pass $(($i+1)) :"							#displays pass number
		for ((j=0;j<l-i-1;j++))
			{
				if (( ${a[$(($j+1))]} <= ${a[$j]} ))			#checks if next value is lesser than current value
				then 							#swaps
					temp=${a[$(($j+1))]}
					a[$(($j+1))]=${a[$j]}
					a[$j]=$temp
				fi
			}
	echo "P[$(($i+1))]: ${a[*]}"							#displays the array structure after each pass
	}
		echo "Sorted array"
		echo "P[]: ${a[*]}"							#displays obtained sorted array
	

