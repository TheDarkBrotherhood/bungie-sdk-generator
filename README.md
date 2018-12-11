# Generator for Bungie SDKs

This is a meta-project that facilitates generating SDKs for the Bungie API using OpenAPI Generator. Currently only PHP
is implemented, but in theory support for many other languages can be easily added.

It currently uses a fork of OpenAPI Generator that includes some specific fixes for the Bungie API.  

## Requirements

  - Docker (https://docs.docker.com/install/)

## Generating the API

Check out the submodules:

```git submodule update --init```

Build the OpenAPI generator:

```docker-compose run openapi-generator mvn package -Dmaven.test.skip=true```

Then build the SDK for PHP like this:

```OPENAPI_GENERATOR=php docker-compose run openapi-generator```

## Adding support for other languages.

SDKs for other languages could theoretically be built by configuring `docker-compose.yml` and creating an
openapi-config.foo.json for the language you wish to generate for.

It hasn't been tested with other languages though.
