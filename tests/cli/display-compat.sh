#!/bin/bash

# SPDX-FileCopyrightText: 2021 Henrik Sandklef
#
# SPDX-License-Identifier: GPL-3.0-or-later

FLICT="flict display-compatibility "

source $(dirname ${BASH_SOURCE[0]}/)/common-funs
if [ $? -ne 0 ];
then
    echo "Failed reading common-funs... bailing out";
    exit 1;
fi

begin_test

FLICT_CMD="$FLICT "

compare_exec     "$FLICT_CMD MIT"                          \
                 '{"compatibilities": [{"license": "MIT", "licenses": []}]}' \
                 0 "MIT only"
