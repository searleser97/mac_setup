#!/usr/bin/env bash

NewBranch=$1
OriginBranch=$2

git switch -c $NewBranch $OriginBranch || { exit 1 }

git branch --unset-upstream
