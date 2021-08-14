#!/bin/bash

cp -r /usr/src/cache/node_modules/. /usr/src/app/node_modules/
exec ng serve --host 0.0.0.0 --poll 1000