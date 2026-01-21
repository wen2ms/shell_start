#!/bin/zsh

touch global_variables_export.sh
GLOBAL_VAR="global"
export GLOBAL_VAR
echo 'echo In global_variables_export.sh, GLOBAl_VAR=${GLOBAL_VAR}' >>global_variables_export.sh
zsh global_variables_export.sh
rm global_variables_export.sh
