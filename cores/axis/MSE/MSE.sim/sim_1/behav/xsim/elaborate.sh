#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Aug 09 11:34:21 EDT 2021
# SW Build 2729669 on Thu Dec  5 04:48:12 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 7210dbde3b0142fc8c8713d7292619c3 --incr --debug all --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot MSE_tb_behav xil_defaultlib.MSE_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 7210dbde3b0142fc8c8713d7292619c3 --incr --debug all --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot MSE_tb_behav xil_defaultlib.MSE_tb xil_defaultlib.glbl -log elaborate.log

