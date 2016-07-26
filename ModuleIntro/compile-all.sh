#!/bin/bash
rm -rf mods
mkdir mods
javac -d mods -modulesourcepath . $(find . -name "*.java")
