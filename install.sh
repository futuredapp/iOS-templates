#!/bin/bash

TEMPLATE_HOME=~/Library/Developer/Xcode/Templates/Custom

mkdir -p $TEMPLATE_HOME

cp -fR ./MVVM-C\ Scene.xctemplate $TEMPLATE_HOME
cp -fR ./MVVM-C\ Modal\ Scene.xctemplate $TEMPLATE_HOME
cp -fR ./MVVM-C\ Push\ Scene.xctemplate $TEMPLATE_HOME
cp -fR ./Cell.xctemplate $TEMPLATE_HOME
