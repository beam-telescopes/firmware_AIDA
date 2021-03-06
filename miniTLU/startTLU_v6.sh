#!/bin/bash

echo "=========================="
CURRENT_DIR=${0%/*}
echo "CURRENT DIRECTORY: " $CURRENT_DIR

echo "============"
echo "SETTING PATHS"
#export PYTHONPATH=$CURRENT_DIR/../../../../PyChips_1_5_0_pre2A/src
export PYTHONPATH=$CURRENT_DIR/../../../../Python_Scripts/PyChips_1_5_0_pre2A/src:$PYTHONPATH
echo "PYTHON PATH= " $PYTHONPATH
export LD_LIBRARY_PATH=/opt/cactus/lib:$LD_LIBRARY_PATH
echo "LD_LIBRARY_PATH= " $LD_LIBRARY_PATH
export PATH=/usr/bin/:/opt/cactus/bin:$PATH
echo "PATH= " $PATH

cd $CURRENT_DIR

echo "============"
echo "STARTING PYTHON SCRIPT"
#python $CURRENT_DIR/startTLU_v8.py $@

python startTLU_v8.py $@
#python testTLU_script.py
