# atmos-go

atmos-go is **Unofficial** Go client to use [ATMOS](https://www.atmos.app/) Platform API.

## Usage

```sh
go get github.com/umatare5/atmos-go/v0
```

## Features

- Get profile
- Fetch divelogs

## Prerequisite

Both parameters are hidden yet. Let's wait for the release.

- URI of ATMOS Platform API
- Access Token to use ATMOS Platform API

## Development

The code is generated from OpenAPI Specification.

### Setup

- Install `swagger-cli` for bundle divided OpenAPI Specifications.

  ```sh
  npm install
  ```

- Install `oapi-codegen` for build the client.

  ```sh
  go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest
  ```

## Operation

### Build

```sh
scripts/build.sh
```

### Release

```sh
scripts/release.sh
```
