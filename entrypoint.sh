#!/bin/sh -l

TREB_VERBOSE=""
if [[ $INPUT_VERBOSE = true ]]; then
  TREB_VERBOSE="--verbose"
fi

# Execute Trebuchet
case $INPUT_ACTION in
  push) 
    echo "Executing: treb push $INPUT_IMAGE $INPUT_AWSPROFILE $INPUT_ASSUMEROLEARN $INPUT_AWSREGION $TREB_VERBOSE"
    echo "PUSH COMMAND HERE" ;;
  pull) 
    echo "Executing: treb pull $INPUT_IMAGE $INPUT_AWSPROFILE $INPUT_ASSUMEROLEARN $INPUT_AWSREGION $INPUT_STRIPECRIMAGE $TREB_VERBOSE"
    echo "PULL COMMAND HERE" ;;
  *) 
    echo "ERROR - invalid input action: $INPUT_ACTION. Action must be one of [push, pull]." && exit 1 ;;
esac

# Set Repository output
# repositoryOutput=$(treb repository $INPUT_IMAGE $INPUT_AWSPROFILE $INPUT_ASSUMEROLEARN $INPUT_AWSREGION $TREB_VERBOSE)
# echo "::set-output name=fullImageName::$repositoryOutput"