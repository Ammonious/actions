#!/usr/bin/env bash

set -euo pipefail
set -x

TARGET="COMPILE_TARGET"
PKG_NAME="${PKG_NAME:-$CRATE_NAME}"
CRATE_NAME="${CRATE_NAME:-$PKG_NAME}"
TYPE="${TYPE:-bin}"
TAG="master"

env

source /lib.sh
source /releaser.sh

type=$(build-type)

$type-compile
$type-deploy
package
