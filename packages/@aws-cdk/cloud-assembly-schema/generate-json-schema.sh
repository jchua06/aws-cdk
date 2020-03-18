#!/bin/bash
set -euo pipefail

# Input
INPUT_FILE='lib/assembly-manifest.d.ts'

# Output
OUTPUT_DIR='schema'
OUTPUT_FILE="${OUTPUT_DIR}/cloud-assembly.schema.json"

mkdir -p ${OUTPUT_DIR}

echo "Generating JSON schema into ${OUTPUT_FILE}"
typescript-json-schema                           \
    ${INPUT_FILE}      'AssemblyManifest'        \
    --out              ${OUTPUT_FILE}            \
    --refs             true                      \
    --required         true                      \
    --strictNullChecks true                      \
    --topRef           true