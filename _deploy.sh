#!/usr/bin/env bash
set -xe

find _site -type f -exec curl --ftp-ssl -u $FTP_USERNAME:$FTP_PASSWORD --ftp-create-dirs -T {} ftp://icfbudapest.org/{} \; -o -quit
