#!/usr/bin/env bash

if [ $1 = "--list" ] || [ $1 = "-l" ]; then
    ls /usr/bin/php*
    exit 0
fi

if [ $1 = "-h" ] || [ $1 = "--help" ]; then
    echo "chphp -h|--help: Display this help."
    echo "chphp -l|--list: Display installed php versions."
    echo "chphp php*.*: Change tho the given php version."
    exit 0
fi

update-alternatives --set php /usr/bin/$1
exit 0