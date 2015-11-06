#!/bin/bash
chmod 777 ApkHackTool.sh
apktool d $1
unzip -d tmp $1
cp tmp/classes.dex classes.dex
rm -rf tmp/
dex2jar-0.0.9.15/d2j-dex2jar.sh --force classes.dex
