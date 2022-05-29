#!/bin/bash

# get our environmental variables
source ../vars

# initialize gdb 
gdb \
        ${KERNEL} \     # debug our kernel image
        -x ./bpkt.py \  # create the breakpoint for the executable 
        -ex continue    # continue execution so we can connect to it