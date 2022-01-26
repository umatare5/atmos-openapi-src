# atmos-openapi-src

atmos-openapi-src is a source generates libraries for [ATMOS Platform API](https://www.atmos.app/).

This code generates following two modules;

- [atmos-go](https://github.com/umatare5/atmos-go)

  Go Client to use Logbook API.

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
