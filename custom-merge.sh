#!/bin/bash
# custom-merge.sh

# Use 'ours' strategy for the 'helper' directory
if [[ $1 == "helper" ]]; then
    git checkout --ours -- "$2"
else
    # For other files, use the default merge strategy
    git checkout --merge -- "$2"
fi