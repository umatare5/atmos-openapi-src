#!/bin/bash

# Preset variables
REPO_NAME=atmos-go

# Load libraries
source ./scripts/lib/build.sh
source ./scripts/lib/release.sh
source ./scripts/lib/validation.sh

# Validations
validate_current_dir ${REPO_NAME}
validate_npx_exists
validate_swagger_cli_exists
validate_oapi_codegen_exists
validate_goreleaser_exists

# Builds
build_openapi
build_client

# Release
release_library
