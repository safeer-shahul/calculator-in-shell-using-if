echo "simple calculator"
sum=0
i="y"
echo "enter first number"
read n1
echo "enter second number"
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter choice"
read ch
if [ $ch = "1" ]
   then
      sum=$(echo " $n1 + $n2" | bc -l)
      echo "Addition is =" $sum;
elif [ $ch = "2" ]
   then
      sum=$(echo "$n1 - $n2" | bc -l)
      echo "Sub is =" $sum;
elif [ $ch = "3" ]
   then
      sum=$(echo "$n1 * $n2" | bc -l)
      echo "Mul is =" $sum;
elif [ $ch = "4" ]
   then
       sum=$(echo "$n1 / $n2" | bc -l)
       echo "div is =" $sum;
fi
echo "Do you want to continue(y)"
read i
if [ $i != "y" ]
then
exit
fi
done
