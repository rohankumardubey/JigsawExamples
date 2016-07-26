#!/bin/bash
javac -modulepath mods -d mods/com.varun.helloworld $(find com.varun.helloworld -name "*.java")
