vcs \
-R \
-full64 \
../tb.v \
../../dc/huffman_syn.v \
-kdb -lca \
-l POST.log \
-debug_access+all\
-v /users/m1053011/Desktop/verilog_sim/ic_contest/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v \
+define+SDF+tb3

verdi -dbdir simv.daidir -ssf huffman.fsdb&
