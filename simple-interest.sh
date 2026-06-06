#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal × Rate × Time) / 100

echo "=== Simple Interest Calculator ==="
echo ""

# Get user input for Principal
read -p "Enter the principal amount: " principal

# Get user input for Rate of Interest
read -p "Enter the rate of interest (per year): " rate

# Get user input for Time Period
read -p "Enter the time period (in years): " time

# Calculate Simple Interest using bc for floating-point arithmetic
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc -l)

# Display the results
echo ""
echo "=== Results ==="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo ""
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
