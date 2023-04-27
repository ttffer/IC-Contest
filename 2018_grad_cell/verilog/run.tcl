vcs \
-R \
-full64 \
../tb.v \
../huffman.v \
-kdb -lca \
-debug_access+all\
-l huffman.log 

verdi -dbdir simv.daidir -ssf huffman.fsdb&


vcs \
-R \
-full64 \
-sverilog \
../tb.sv \
../JAM.v \
../all_sort_ver2.v \
../order_output.v \
../cost_min.v \
-kdb -lca \
+vcs+fsdbon \
-l JAM.log \
+define+P1+VCS
#+define+SDF \
#-v /cad/CBDK/CBDK_IC_Contest_v2.1/Verilog/tsmc13_neg.v \
#+maxdelays
verdi -dbdir simv.daidir -ssf huffman.fsdb&




ncverilog \
../tb.sv \
../JAM.v \
../all_sort_ver2.v \
../order_output.v \
../cost_min.v \
+access+r \
+define+P1+NCV

nWave -ssf JAM.vcd&

#Gate-level sim
ncverilog \
../tb.sv \
../../dc/JAM_syn.v \
+define+SDF+P2+NCV \
+access+r \
-v /users/m1053011/Desktop/verilog_sim/ic_contest/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v \
+maxdelays


vcs ../testbench.v \
../all_sort_ver2.v \
../order_output.v \
-R -full64 -kdb -lca +v2k -l rtl_sim_axi_top.log -debug_access+all\
-xprop=tmerge -report=xprop \
+define+DEBUG_LIST+RTL_SIM

verdi -dbdir simv.daidir -ssf all_sort.fsdb&


# vcs ../order_output_tb.v \
# ../order_output.v \
# -R -full64 -kdb -lca +v2k -l rtl_sim_axi_top.log -debug_access+all\
# -xprop=tmerge -report=xprop \
# +define+RTL_SIM

# verdi -dbdir simv.daidir -ssf order_output.fsdb&


# ncverilog ../testbench.v ../all_sort.v +define+DUMP_VCD +access+r 
# nWave -ssf all_sort.vcd&


# ncverilog ../dic_tb.v ../dictionary.v +define+DUMP_VCD +access+r 
# nWave -ssf dic.vcd&

# vcs ../dic_tb.v \
# ../dictionary.v \
# -R -full64 -kdb -lca +v2k -l dic.log -debug_access+all\
# -xprop=tmerge -report=xprop \
# +define+RTL_SIM

# verdi -dbdir simv.daidir -ssf dic.fsdb&