#!/bin/sh -l

# Solve / Parse variables
# Construct command
# Run command
# Generate full repo name as an output

echo "Here are all the environment variables set:"
env

# Input validation
case $INPUT_ACTION in
  (push|pull|repository) ;;
  (*) printf >&2 'Error: Invalid action, must be one of [push,pull,repository].'; exit 1 ;;
fi

echo "Successfully parsed action input: $INPUT_ACTION"