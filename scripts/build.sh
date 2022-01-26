#!/bin/bash

# Preset variables
REPO_NAME=atmos-openapi-src

# Load libraries
source ./scripts/lib/build.sh
source ./scripts/lib/validation.sh

# Validations
validate_current_dir ${REPO_NAME}
validate_npx_exists
validate_swagger_cli_exists
validate_oapi_codegen_exists

# Build OpenAPI
build_openapi

# Build client
GO_CLIENT_PACKAGE_NAME=atmos
GO_CLIENT_MODULE_NAME=github.com/umatare5/atmos-go
GO_CLIENT_RELEASE_DIR=releases/client

validate_goreleaser_yml_exists ${GO_CLIENT_RELEASE_DIR}
build_client_library  ${GO_CLIENT_RELEASE_DIR} ${GO_CLIENT_PACKAGE_NAME}
initialize_go_modules ${GO_CLIENT_RELEASE_DIR} ${GO_CLIENT_MODULE_NAME}
update_go_modules     ${GO_CLIENT_RELEASE_DIR}
