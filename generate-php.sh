#!/usr/bin/env bash

docker-compose run openapi-generator generate \
      --generator-name  "php" \
      --config          "/local/openapi-config.php.json" \
      --input-spec      "https://raw.githubusercontent.com/Bungie-net/api/master/openapi.json" \
      --output          "/local/bungie-sdk-php" \
      -DapiTests=false \
      -DmodelTests=false

docker-compose run openapi-generator generate \
      --generator-name  "php" \
      --config          "/local/openapi-config-d1.php.json" \
      --input-spec      "https://raw.githubusercontent.com/DestinyDevs/BungieNetPlatform/master/wiki-builder-v2/data/openapi-d1.json" \
      --output          "/local/bungie-d1-sdk-php" \
      -DapiTests=false \
      -DmodelTests=false
