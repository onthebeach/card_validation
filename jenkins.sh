#!/bin/bash

source /etc/profile.d/chruby.sh

bundle install

bundle exec rspec spec
RSPEC_STATUS=$?
if [ $RSPEC_STATUS -ne 0 ]; then
    echo "BUILD_FAILED"
    exit 1
fi

echo "BUILD_SUCCESS"
exit 0
