#!/bin/bash
# calculator.sh
# Usage: ./calculator.sh <num1> <operator> <num2>

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <num1> <operator> <num2>"
    exit 1
fi

num1=$1
operator=$2
num2=$3

case $operator in
    '+')
        result=$(echo "$num1 + $num2" | bc)
        ;;
    '-')
        result=$(echo "$num1 - $num2" | bc)
        ;;
    '*')
        result=$(echo "$num1 * $num2" | bc)
        ;;
    '/')
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero"
            exit 1
        fi
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Invalid operator. Use +, -, *, or /"
        exit 1
        ;;
esac

echo "$result"
