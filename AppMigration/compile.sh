#!/bin/bash
javac -d com.varun.testapp -mp lib  $(find com.varun.testapp -name "*.java")
