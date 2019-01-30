#!/bin/bash
echo "yarn location and version"
which yarn
yarn -v

npm install

gulp $@
