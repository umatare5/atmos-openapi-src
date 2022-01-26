# atmos-openapi-src

atmos-openapi-src is a source generates libraries for [ATMOS Platform API](https://www.atmos.app/).

This code generates following module;

- [atmos-go](https://github.com/umatare5/atmos-go)

  Go Client to use ATMOS Platform API.

## Prerequisite

- FQDN of ATMOS Platform API
- Access-token to use ATMOS Platform API

Both parameters are hidden yet. Let's wait for official release.

## Development

### Setup

- Install `swagger-cli` for bundle divided OpenAPI Specifications.

  ```sh
  npm install
  ```

- Install `oapi-codegen` for build the client.

  ```sh
  go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest
  ```

### Build

```sh
make build
```

### Release

```sh
git bump
make release
```
