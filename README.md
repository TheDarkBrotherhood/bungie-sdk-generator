# Generator for Bungie SDKs

This is a meta-project that facilitates generating SDKs for the Bungie API using OpenAPI Generator. Currently only PHP
is implemented, but in theory support for many other languages can be easily added.

It currently uses a fork of OpenAPI Generator that includes some specific fixes for the Bungie API.  

## Requirements

  - Docker (https://docs.docker.com/install/)

## Generating the API

Check out the submodules:

```bash
git submodule update --init
```

Make sure the OpenAPI generator submodule is in the right branch"

```bash
cd openapi-generator
git checkout bungie-sdk
cd ..
```

Build the OpenAPI generator:

```bash
docker-compose run openapi-generator mvn package -Dmaven.test.skip=true
```

Then build the SDK for PHP like this:

```bash
./generate-php.sh
```

## Adding support for other languages.

SDKs for other languages could theoretically be built by creating an `openapi-config.foo.json` and `generate-php.sh` for
the language that you wish to build for.

It hasn't been tested with other languages though.
