#!/bin/bash

TEMPLATE_HOME=~/Library/Developer/Xcode/Templates/Custom

mkdir -p $TEMPLATE_HOME

find . -type d -iname "*.xctemplate" -print0 | while IFS= read -r -d $'\0' filename; do
    cp -fR "$filename" $TEMPLATE_HOME
done
