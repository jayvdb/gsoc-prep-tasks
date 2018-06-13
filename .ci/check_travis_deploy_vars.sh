#!/bin/bash

set -ex

if [[ $TRAVIS_BRANCH == master && $TRAVIS_EVENT_TYPE == push && 
      ! "$GITHUB_TOKEN" ]]; then
  echo "Please set GITHUB_TOKEN in your Travis CI environment settings"
  false
fi
