#! /bin/bash

amount_nums=0
average=0
sum_nums=0
array_nums=("$@")

for num in ${array_nums[*]}
do
sum_nums=$(($sum_nums+$num))
amount_nums=$(($amount_nums+1))
done

average=$(($sum_nums/$amount_nums))

echo "Arifmetic nums = $average"
echo "Amount of nums = $amount_nums"
