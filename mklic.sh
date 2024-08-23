#!/bin/bash
CWD=`pwd`
LICENSE=svgo-license.txt
echo "# SVGO License\n" > $LICENSE
npx license-checker --json | grep 'licenseFile' | sed 's/.*licenseFile": "\(.*\)".*/\1/' | while read -r license_file; do
    NAME=`echo ${license_file} | sed 's#'${CWD}'##g'`
    echo "----------------------------------------------------------------------------------------------------" >> $LICENSE
    echo "$NAME" >> $LICENSE
    echo "----------------------------------------------------------------------------------------------------" >> $LICENSE
    echo "" >> $LICENSE
    cat $license_file >> $LICENSE
    echo "\n" >> $LICENSE
done
