#!/bin/bash
# test_calculator.sh

# Function to run a test and compare the result
run_test() {
    expected_output="$1"
    input1="$2"
    operator="$3"
    input2="$4"
    
    # Capture the output of the calculator script
    output=$(./calculator.sh "$input1" "$operator" "$input2")
    
    # Compare the output with the expected output
    if [ "$output" == "$expected_output" ]; then
        echo "Test passed for input $input1 $operator $input2."
    else
        echo "Test failed for input $input1 $operator $input2."
        echo "Expected: $expected_output"
        echo "Got: $output"
    fi
}

# Test cases for addition, subtraction, multiplication, and division
run_test "5" 2 + 3
run_test "1" 5 - 4
run_test "6" 2 '*' 3
run_test "2.00" 4 / 2

# Test case for division by zero
run_test "Error: Division by zero" 4 / 0

# Additional test cases can be added as needed
