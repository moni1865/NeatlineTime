#! /usr/bin/env bash

if [ -z $PLUGIN_DIR ]; then
  PLUGIN_DIR=`pwd`
fi

if [ -z $OMEKA_DIR ]; then
  export OMEKA_DIR=`pwd`/omeka
  echo "omeka_dir set"
fi

echo "Plugin Directory: $PLUGIN_DIR"
echo "Omeka Directory: $OMEKA_DIR"

ls "$OMEKA_DIR/application/tests/"

cd tests/ && ../vendor/bin/phpunit --configuration $PLUGIN_DIR/tests/phpunit_travis.xml --coverage-text --verbose
