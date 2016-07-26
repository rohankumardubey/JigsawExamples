#!/bin/bash
rm -rf myimage
jlink --modulepath $JDKMODS:mods --addmods com.varun.helloworld --output myimage
myimage/bin/java -listmods
myimage/bin/java -m com.varun.helloworld/com.varun.helloworld.Main