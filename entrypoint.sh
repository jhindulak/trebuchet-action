#!/bin/sh -l

# Solve / Parse variables
# Construct command
# Run command
# Generate full repo name as an output

echo "Here are all the environment variables set:"
env

# export INPUT_ACTION="pull"

# Input validation
case $INPUT_ACTION in
    push | pull | repository) ;;
    *) echo "ERROR - invalid input actionL $INPUT_ACTION. Action must be one of [push, pull, repository]." && exit 1 ;;
esac

echo "Successfully parsed action input: $INPUT_ACTION"