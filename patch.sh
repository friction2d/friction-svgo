#!/bin/sh
set -e -x
LIB="node_modules/svgo/lib"

sed -i 's#let dir = cwd#let dir = "/snapshot/node_modules/svgo/lib"#;' ${LIB}/svgo-node.js
cp -a svgo.config.mjs  ${LIB}/

