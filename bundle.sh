#!/bin/sh

libname='ufront-client'
rm -f "${libname}.zip"
zip -r "${libname}.zip" haxelib.json extraParams.hxml LICENSE.txt README.md
echo "Saved as ${libname}.zip"
