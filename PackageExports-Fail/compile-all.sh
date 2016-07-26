#!/bin/bash
javac -d mods -modulesourcepath . $(find . -name "*.java")
