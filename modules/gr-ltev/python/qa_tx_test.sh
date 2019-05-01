#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/otto/Documents/ltev/modules/gr-ltev/python
export PATH=/home/otto/Documents/ltev/modules/gr-ltev/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export PYTHONPATH=/home/otto/Documents/ltev/modules/gr-ltev/swig:$PYTHONPATH
/usr/bin/python2 /home/otto/Documents/ltev/modules/gr-ltev/python/qa_tx.py 
