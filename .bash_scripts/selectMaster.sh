#!/bin/bash

#checks out master of the current repo

R=$(git remote | grep -E "device|portal|integration" | tr -d "\n")
eval "git fetch $R"
eval "git checkout -B master $R/master"
