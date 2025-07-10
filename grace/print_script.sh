#!/bin/bash

# Get the input parameter
TO_PRINT="$2"  # The value after --to_print

# Create output directory
mkdir -p output

# Print the message and save to output file
echo "Hello world: $TO_PRINT" | tee output/result.txt

# Ensure the output directory exists for CWL to find
echo "Process completed successfully"