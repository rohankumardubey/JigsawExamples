#!/bin/bash

set -eu

OUTPUT_DIR="mlib"

rm -rf $OUTPUT_DIR
mkdir $OUTPUT_DIR

jar --create --file $OUTPUT_DIR/printer.jar -C mods/com.varun.printer .
jar --create --file $OUTPUT_DIR/helloworld.jar --main-class=com.varun.helloworld.Main  -C mods/com.varun.helloworld .
java -mp $OUTPUT_DIR -m com.varun.helloworld/com.varun.helloworld.Main


#jar --file mlib/printer.jar –p
#jar --file mlib/helloworld.jar –p
