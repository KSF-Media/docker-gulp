#!/bin/bash
echo "yarn location and version"
which yarn
yarn -v

yarn install

gulp $@
