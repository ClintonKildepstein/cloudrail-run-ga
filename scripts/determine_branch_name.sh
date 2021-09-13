#!/bin/sh

# The logic for determining the branch name is from: https://stackoverflow.com/a/64210623/3830413
if [ -z "${GITHUB_HEAD_REF}" ]; then
    BRANCH_NAME=$(echo ${GITHUB_REF#refs/heads/} | tr / -)
else
    BRANCH_NAME=$(echo ${GITHUB_HEAD_REF} | tr / -)
fi
echo Determined branch name to be ${BRANCH_NAME}
echo "BRANCH_NAME=${BRANCH_NAME}" >> $GITHUB_ENV
