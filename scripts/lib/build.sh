# Bundle divided OpenAPI specification to single
function build_openapi(){
  npx swagger-cli bundle \
    openapi/openapi.yaml \
    --outfile builds/openapi.yaml \
    --type yaml \
    --dereference
}

# Build library for go
function build_library(){
  oapi-codegen \
    -generate "types,client" \
    -package atmos \
    -o main.go \
    builds/openapi.yaml
}
