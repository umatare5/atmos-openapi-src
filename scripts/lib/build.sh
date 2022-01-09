# Bundle divided OpenAPI specification to single.
function build_openapi(){
  npx swagger-cli bundle \
    openapi/openapi.yaml \
    --outfile builds/openapi.yaml \
    --type yaml \
    --dereference
}

# Build API client for go.
function build_client(){
  oapi-codegen \
    -generate "types,client" \
    -package atmos \
    -o main.go \
    builds/openapi.yaml
}
