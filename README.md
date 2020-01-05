# Markdown Lint

[![CI State](https://github.com/actionshub/yamllint/workflows/release/badge.svg)](https://github.com/actionshub/yamllint)

A Github Action to run yamllint on your files

## Usage

```yaml
name: yamllint

on: [push, pull_request]

jobs:
  delivery:

    runs-on: ubuntu-latest

    steps:
    - name: Check out code
      uses: actions/checkout@master
    - name: Run yamllint
      uses: actionshub/yamllint@master
```
