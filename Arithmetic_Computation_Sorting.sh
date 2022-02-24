# Arithmetic Computation & Sorting

read -p "Enter the number: " a
read -p "Enter the number: " b
read -p "Enter the number: " c

echo "a=$a b=$b c=$c"

result_1=$(( ($a + $b) * $c))
echo "a+b*c $result_1"

result_2=$(($a * $b + $c))
echo "a*b+c $result_2"

result_3=$(( (($c + $a) / $b) | bc ))
echo "c+a/b $result_3"

result_4=$(( (($a % $b) + $c) | bc ))
echo "a%b+c $result_4"

result[1]=$((result_1))
echo "result[1]="${result[1]}

result[2]=$((result_2))
echo "result[2]="${result[2]}

result[3]=$((result_3))
echo "result[3]="${result[3]}

result[4]=$((result_4))
echo "result[4]="${result[4]}

echo "Dictionary" ${result[@]}

for (( j=1; j<5; j++ ))
do
    arr[j]=$(( ${result[$j]} ))
done
echo "Array = "${arr[@]}

for ((m = 0; m<4; m++))
do
   for((n = 0; n<4-m-1; n++))
   do
      if [ $((${arr[n]})) -lt $((${arr[$((n+1))]})) ]
      then
      #SWAPPING
            	temp=${arr[n]}
            	arr[$n]=${arr[$((n+1))]}
            	arr[$((n+1))]=$temp
      fi
  done
done

echo "Descending Order : "${arr[*]}

for ((i = 0; i<4; i++))
   do
      for((j = 0; j<4-i-1; j++))
      	do
          if [ $((${arr[j]})) -gt $((${arr[$((j+1))]})) ]
          then
      	  #SWAPPING
                   temp=${arr[j]}
                   arr[$j]=${arr[$((j+1))]}
                   arr[$((j+1))]=$temp
          fi
      done
done

echo "Ascending Order "${arr[*]}
