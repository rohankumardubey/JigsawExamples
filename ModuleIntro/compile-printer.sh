#!/bin/bash
rm -rf mods
mkdir mods
javac -d mods/com.varun.printer $(find com.varun.printer -name "*.java")
