#!/bin/bash
javac -d com.varun.appmigration -mp mlib:lib $(find com.varun.appmigration -name "*.java")
