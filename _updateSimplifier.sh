#!/usr/bin/env sh
find ./output -name "*.json.zip" -type f -exec unzip -ud ./.simplifier/resources {} "*.json" \;
