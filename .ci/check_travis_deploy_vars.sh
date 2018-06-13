#!/bin/bash

set -ex

if [[ $TRAVIS_BRANCH == master && $TRAVIS_EVENT_TYPE == push && 
      ! "$GITHUB_TOKEN" ]]; then
  false
fi
