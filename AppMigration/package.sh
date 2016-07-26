#!/bin/bash
rm -rf mlib
mkdir mlib
jar --create --file mlib/testapp.jar --main-class=com.varun.testapp.Run  -C com.varun.testapp .
