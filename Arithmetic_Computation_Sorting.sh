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

result[111]=$((result_1))
echo "result[111]="${result[111]}

result[222]=$((result_2))
echo "result[222]="${result[222]}

result[333]=$((result_3))
echo "result[333]="${result[333]}

result[444]=$((result_4))
echo "result[444]="${result[444]}

echo "value of computation" ${result[@]}
