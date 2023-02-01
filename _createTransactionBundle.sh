#!/usr/bin/env sh

OUTPUT=./fsh-generated
RESOURCES_DIR=${OUTPUT}/resources
BUNDLES_DIR=${OUTPUT}/bundles

# Check if jq is installed
[ -z $(command -v jq) ] && echo "jq is not installed. Please install jq to generate a FHIR transaction bundle." && exit 1

# Check if output dir for transaction bundles exists; if not create one
[ ! -d ${BUNDLES_DIR} ] && mkdir -p ${BUNDLES_DIR}

# Transform any generated FHIR resource to transaction bundle and store it
jq -s '. | 
     flatten | 
          map({ 
                "fullUrl": "http://mihubx.de/fhir/\(.resourceType)/\(.id)",
                "resource": . ,
                "request": {
                  "method": "POST",
                  "url": .resourceType
                }
              }) |
              {
                "resourceType": "Bundle",
                "type": "transaction",
                "entry": .
              }' \
     ${RESOURCES_DIR}/*.json > ${BUNDLES_DIR}/TransactionBundle.json