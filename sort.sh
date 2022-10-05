#!/bin/bash
echo "Enter length:"
read l
echo "Enter the input:"
for ((i=0;i<l;i++))
	{
		read a[$i]
	}
echo "User input array:"
echo "P[]: ${a[*]}"
for ((i=0;i<l;i++))
	{
		echo "Pass $(($i+1)) :"
		for ((j=0;j<l-i-1;j++))
			{
				if (( ${a[$(($j+1))]} <= ${a[$j]} ))
				then 
					temp=${a[$(($j+1))]}
					a[$(($j+1))]=${a[$j]}
					a[$j]=$temp
				fi
			}
	echo "P[$(($i+1))]: ${a[*]}"
	}
		echo "Sorted array"
		echo "P[]: ${a[*]}"
	

