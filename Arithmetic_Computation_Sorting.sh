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
