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
