mkdir ._actionshub_problem-matchers
cp /yamllint.json ._actionshub_problem-matchers/yamllint.json
echo "##[add-matcher]._actionshub_problem-matchers/yamllint.json"
yamllint .