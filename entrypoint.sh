#!/bin/bash
echo "::warning ::Github Action: actionshub/yamllint has migrated to the main branch as default, the master branch will be removed"

MATCHER_FILE="._actionshub_problem-matchers/yamllint.json"

mkdir -p ._actionshub_problem-matchers

if [[ ! -f ${MATCHER_FILE} ]];then
    cp /yamllint.json ${MATCHER_FILE}
fi

echo "##[add-matcher]${MATCHER_FILE}"
yamllint .
