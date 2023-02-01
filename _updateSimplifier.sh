#!/usr/bin/env sh

find ./output -name "*.json.zip" -type f -exec unzip -uod ./.simplifier/resources {} "*.json" \;
