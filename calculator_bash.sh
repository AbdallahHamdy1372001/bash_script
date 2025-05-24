#! /usr/bin/bash


echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Select operation:"


#function to check valid value 
is_number() {
    local num=$1
    if [[ "$num" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
        return 0  # valid number
    else
        return 1  # not a number
    fi
}

# frist number with validation

while true; do    
    
    if is_number "$num1"; then
        break
	

    else
        echo "Error: '$num1' is not a valid number"
	exit
    fi

done

# Get second number with validation
    
while true; do
    if is_number "$num2"; then
        break
    else
        echo "Error: '$num2' is not a valid number"
	exit
    fi

done

echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read op

if [ $op -eq 1 ]; then
    result=$((num1 + num2))
    echo "Result= $result"

elif [ $op -eq 2 ]; then
    result=$((num1 - num2))
    echo "Result= $result"

elif [ $op -eq 3 ]; then
    result=$((num1 * num2))
    echo "Result= $result"


elif [ $op -eq 4 ]; then
    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed"



    else
        result=$((num1 / num2))
        echo "Result=$result"
    fi
else
    echo "Invalid operation selected"
fi
