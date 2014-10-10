#!/bin/bash

#fetched the team's main repo

R=$(git remote | grep -E "device|portal|integration" | tr -d "\n")
eval "git fetch $R"
