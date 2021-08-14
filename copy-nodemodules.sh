#!/usr/bin/env bash

# docker cp dev:/usr/src/app/package-lock.json . && \
docker cp dev:/usr/src/app/node_modules - > node_modules.tar && \
    tar -xf node_modules.tar --directory octopod && \
    rm -f temp_node_modules.tar