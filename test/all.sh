#!/bin/bash

source $(dirname ${BASH_SOURCE[0]}/)/cli/common-funs
if [ $? -ne 0 ];
then
    echo "Failed reading cli/common-funs... bailing out";
    exit 1;
fi


PY_SCRIPTS="test/compat_matrix.py  test/license.py  test/project-license.py  test/project.py"
SH_SCRIPTS="test/cli/license-expr.sh"
LOG_FILE=$(dirname ${BASH_SOURCE[0]}/)/all.log

for ps in $PY_SCRIPTS
do
    inform_n "$ps"
    ./$ps >> $LOG_FILE 2>&1
    exit_on_error $? "Failed running $ps"
    echo "OK"
done

for bs in $SH_SCRIPTS
do
    echo
    echo $bs
    ./$bs
done



