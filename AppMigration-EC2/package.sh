#!/bin/bash
rm -rf mlib
mkdir mlib
jar --create --file mlib/ec2app.jar --main-class=com.varun.appmigration.App  -C com.varun.appmigration .
