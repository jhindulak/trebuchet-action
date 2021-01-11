#!/bin/sh -l

TREB_AS=""
TREB_PROFILE=""
TREB_REGION=""
TREB_STRIP=""
TREB_VERBOSE=""

if [[ -n "$INPUT_ASSUMEROLEARN" ]]; then
  TREB_AS="--as $INPUT_ASSUMEROLEARN"
  echo "INPUT_ASSUMEROLEARN is not empty"
fi

if [[ -n "$INPUT_AWSPROFILE" ]]; then
  TREB_PROFILE="--profile $INPUT_AWSPROFILE"
fi

if [[ -n "$INPUT_AWSREGION" ]]; then
  TREB_REGION="--region $INPUT_AWSREGION"
fi

if [[ -n "$INPUT_STRIPECRIMAGE" ]]; then
  TREB_STRIP="--region $INPUT_STRIPECRIMAGE"
fi

if [[ -n "$INPUT_VERBOSE" && "$INPUT_VERBOSE" = true ]]; then
  TREB_VERBOSE="--verbose"
fi

# Execute Trebuchet
case $INPUT_ACTION in
  push) 
    echo "Executing: treb push $INPUT_IMAGE $TREB_PROFILE $TREB_AS $TREB_REGION $TREB_VERBOSE"
    echo "PUSH COMMAND HERE" ;;
  pull) 
    echo "Executing: treb pull $INPUT_IMAGE $TREB_PROFILE $TREB_AS $TREB_REGION $TREB_STRIP $TREB_VERBOSE"
    echo "PULL COMMAND HERE" ;;
  *) 
    echo "ERROR - invalid input action: $INPUT_ACTION. Action must be one of [push, pull]." && exit 1 ;;
esac

# Set Repository output
# repositoryOutput=$(treb repository $INPUT_IMAGE $TREB_PROFILE $TREB_AS $TREB_REGION $TREB_VERBOSE)
# echo "::set-output name=fullImageName::$repositoryOutput"