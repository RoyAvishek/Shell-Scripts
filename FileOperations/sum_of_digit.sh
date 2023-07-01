#! /bin/bash

n=$1

sum_of_digits=0

while [ $n -gt 0 ]; do

digits=$(( $n % 10 ))

sum_of_digits=$(( $sum_of_digits + $digits ))

n=$(( $n/10 ))

done

echo "Sum of the digits is : $sum_of_digits"
