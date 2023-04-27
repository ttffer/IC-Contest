#!/bin/csh -f

cd /users/m1053011/Desktop/verilog_sim/ic_contest/2018_grad_cell/verilog/run_sim

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/usr/cad/synopsys/vcs/2021.09/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

