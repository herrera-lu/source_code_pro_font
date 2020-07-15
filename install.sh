#!/bin/bash

# https://askubuntu.com/questions/193072/how-to-use-the-adobe-source-code-pro-font

FONT_NAME="SourceCodePro"
URL="https://github.com/adobe-fonts/source-code-pro/archive/variable-fonts.zip"

mkdir /tmp/adodefont
cd /tmp/adodefont
wget ${URL} -O ${FONT_NAME}.zip
unzip -o -j ${FONT_NAME}.zip
mkdir -p ~/.fonts
cp *.otf ~/.fonts
fc-cache -f -v
