verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
simSetSimulator "-vcssv" -exec "simv" -args "-lca -a huffman.log"
debImport "-dbdir" "simv.daidir"
debLoadSimResult \
           /users/m1053011/Desktop/verilog_sim/ic_contest/2018_grad_cell/verilog/run_sim/huffman.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 15 16 17 18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 15 16 17 18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave2 {("G1" 26)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 )} 
wvSelectSignal -win $_nWave2 {( "G1" 26 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 104260.929648 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 126491.080402 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 25)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvSetPosition -win $_nWave2 {("G1" 7)}
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 105555.150754 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 106544.849246 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 107534.547739 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 108524.246231 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 109437.814070 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 107382.286432 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 108448.115578 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 109475.879397 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 110579.773869 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 111341.080402 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 112292.713568 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 110351.381910 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 111455.276382 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 112787.562814 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 112330.778894 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 110503.643216 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 111569.472362 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 112483.040201 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 108649.861809 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G2" 0)}
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 113590.741206 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 111476.212312 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 112648.624372 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 110513.159548 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 111455.276382 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 112523.008794 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 113548.869347 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 13 14 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 12 13 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 12 13 14 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 12 13 14 15 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 94462.914573 113556.482412
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_huffman" -line 75 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_huffman" -line 75 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_huffman" -line 75 -pos 1 -win $_nTrace1
srcAction -pos 74 3 3 -win $_nTrace1 -name "u_huffman" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSetOptions -annotate on -win $_nTrace1
schSetOptions -win $_nSchema1 -annotate on
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {80 97 1 1 6 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {76 98 2 1 2 1}
srcSetRadix -win $_nTrace1 -format Dec
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {77 77 1 10 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 77 -file \
           /users/m1053011/Desktop/verilog_sim/ic_contest/2018_grad_cell/verilog/huffman.v
srcSelect -win $_nTrace1 -range {77 77 1 10 1 1}
srcTBSetBrkPnt -win $_nTrace1 -disable -index 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {77 77 1 10 1 1}
srcTBSetBrkPnt -win $_nTrace1 -delete -index 0
srcDeselectAll -win $_nTrace1
verdiQtPrefEnv -show
verdiQtPrefEnv -find "n"
verdiQtPrefEnv -find "no"
verdiQtPrefEnv -find "not"
verdiQtPrefEnv -find "nota"
verdiQtPrefEnv -find "notat"
verdiQtPrefEnv -find "notati"
verdiQtPrefEnv -find "notatio"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -find "notation"
verdiQtPrefEnv -setCurPg "Source Code"
verdiQtPrefEnv -setCurPg "Source Code.Verilog/VHDL"
verdiQtPrefEnv -setCurPg "Source Code.View Options"
verdiQtPrefEnv -setCurPg "Source Code.Code Folding"
srcSetPreference -stmtFolding on -portListFolding on
verdiQtPrefEnv -apply
verdiQtPrefEnv -ok
srcToggleFolder -win $_nTrace1 -collect -line 77 -level 4
srcToggleFolder -win $_nTrace1 -expand -line 77 -level 4
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 106720.374562 111038.015531
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 110528.143356 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetPosition -win $_nWave2 {("G1" 18)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 26 )} 
wvSelectSignal -win $_nWave2 {( "G1" 26 27 28 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 26 27 28 29 )} 
wvSetRadix -win $_nWave2 -format UDec
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 106461.105528 114850.703518
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 106171.809045 112536.331658
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSetPosition -win $_nWave2 {("G1" 25)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSetRadix -win $_nWave2 -format UDec
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 105460.656928 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 103174.883716 109563.476933
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSelectSignal -win $_nWave2 {( "G1" 24 )} 
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSetSearchMode -win $_nWave2 -value "0" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSearchPrev -win $_nWave2
wvSetSearchMode -win $_nWave2 -value "0" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 99002.726859 103853.021378
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 103467.919616 -snap {("G1" 25)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetCursor -win $_nWave2 103504.479625 -snap {("G1" 7)}
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 20 21 22 23 24 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 20 21 22 23 24 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 26 )} 
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 26 )} 
wvSetPosition -win $_nWave2 {("G1" 26)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 26 )} 
wvZoom -win $_nWave2 102544.648325 107478.423500
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 104999.139492 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 104490.886271 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 105519.789134 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 103456.571893 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 26 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 104561.231187 -snap {("G1" 23)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 104449.019746 -snap {("G1" 25)}
wvSetCursor -win $_nWave2 105433.986836 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 104523.827373 -snap {("G1" 25)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 27 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 21 22 23 24 25 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 33 )} 
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 29 30 31 32 )} 
wvSelectSignal -win $_nWave2 {( "G1" 29 30 31 32 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 21 22 23 24 25 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 21 22 23 24 25 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 105369.153559 -snap {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 20 21 22 23 24 25 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 109408.765422 -snap {("G1" 22)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSetPosition -win $_nWave2 {("G1" 32)}
wvGetSignalOpen -win $_nWave2
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 13 14 15 16 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 13 14 15 16 17 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 32 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 33 34 35 36 )} 
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 33 34 35 36 )} 
wvSetPosition -win $_nWave2 {("G1" 36)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 33 34 35 36 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 33 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetCursor -win $_nWave2 110493.476014 -snap {("G1" 30)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 109496.040987 -snap {("G1" 11)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 40)}
wvSetCursor -win $_nWave2 109932.418811 -snap {("G1" 30)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSetPosition -win $_nWave2 {("G1" 29)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSetPosition -win $_nWave2 {("G1" 29)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 36)}
srcTraceConnectivity "tb.u_huffman.c2_cnt\[1:4\]" -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 36)}
srcTraceConnectivity "tb.u_huffman.c2_cnt\[1:4\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {231 245 1 1 5 1}
srcSetRadix -win $_nTrace1 -format Dec
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 109957.354687 -snap {("G1" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 40)}
wvSetCursor -win $_nWave2 110505.943953 -snap {("G1" 30)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 111528.314856 -snap {("G1" 18)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {232 233 2 1 1 1}
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetRadix -win $_nWave2 -format Bin
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {253 254 1 1 7 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c2_com_result" -line 230 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 40)}
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_com_result\[1:3\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_com_result\[1:3\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 41)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G1" 29)}
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_com_result\[1:3\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_com_result\[1:3\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {188 188 1 2 1 1}
srcDeselectAll -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 29)}
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c1_com_result\[1:4\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_com_result\[1:3\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c1_com_result\[1:4\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_com_result\[1:3\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSelectSignal -win $_nWave2 {( "G1" 31 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -win $_nTrace1 -range {187 189 1 1 6 1}
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
srcSelect -win $_nTrace1 -range {182 182 1 18 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 182 -file \
           /users/m1053011/Desktop/verilog_sim/ic_contest/2018_grad_cell/verilog/huffman.v
srcSelect -win $_nTrace1 -range {181 181 1 24 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 181 -file \
           /users/m1053011/Desktop/verilog_sim/ic_contest/2018_grad_cell/verilog/huffman.v
srcSelect -win $_nTrace1 -range {182 182 1 18 1 1}
srcTBSetBrkPnt -win $_nTrace1 -disable -index 1
srcSelect -win $_nTrace1 -range {181 181 1 24 1 1}
srcTBSetBrkPnt -win $_nTrace1 -disable -index 2
srcSelect -win $_nTrace1 -range {182 182 1 18 1 1}
srcTBSetBrkPnt -win $_nTrace1 -delete -index 1
srcSelect -win $_nTrace1 -range {181 181 1 24 1 1}
srcTBSetBrkPnt -win $_nTrace1 -delete -index 2
srcDeselectAll -win $_nTrace1
debReload
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 32 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "G1" 31 )} 
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {188 189 1 1 7 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c1_com_result" -line 178 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c1_group_idx" -line 212 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c1_group_idx" -line 170 -pos 1 -win $_nTrace1
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "c1_group_idx" -previous
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "c1_group_idx" -previous
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "c1_group_idx" -previous
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "c1_group_idx" -previous
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "c1_group_idx" -previous
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c1_group_idx" -line 188 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {169 169 5 8 1 1}
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 25 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvSetPosition -win $_nWave2 {("G1" 27)}
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 28 29 30 31 )} 
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 28 29 30 31 )} 
wvSetPosition -win $_nWave2 {("G1" 31)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 28 29 30 31 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollUp -win $_nWave2 3
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c1_group_idx" -line 188 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c1_com_result" -line 178 -pos 1 -win $_nTrace1
srcSetRadix -win $_nTrace1 -format Bin
srcDeselectAll -win $_nTrace1
srcSelect -signal "c1_group_idx" -line 212 -pos 1 -win $_nTrace1
srcSetRadix -win $_nTrace1 -format Bin
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {212 213 2 1 1 1} -backward
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 31 )} 
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 32 )} 
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c2_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/c2_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 32 )} 
wvSetPosition -win $_nWave2 {("G1" 32)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 31 )} 
wvSelectSignal -win $_nWave2 {( "G1" 32 )} 
wvSetPosition -win $_nWave2 {("G1" 33)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 29 30 31 32 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 29 30 31 32 33 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 29 30 31 32 33 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 29 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c2_group_cnt" -line 227 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c2_com_result\[2\]" -line 226 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 42 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 42 43 )} 
wvSelectSignal -win $_nWave2 {( "G1" 42 43 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 44 )} 
wvSelectSignal -win $_nWave2 {( "G1" 44 45 46 47 )} 
wvSelectSignal -win $_nWave2 {( "G1" 44 45 46 47 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 37 )} 
wvSetPosition -win $_nWave2 {("G1" 37)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 37)}
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 39 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSetPosition -win $_nWave2 {("G1" 35)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 3045.226131
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 16618.671246 -snap {("G1" 37)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 110248.280808 -snap {("G1" 32)}
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcTraceConnectivity "tb.u_huffman.init_done" -win $_nTrace1
uniFindSearchString -win nWave_2 -pattern "init_done" -next
uniFindSearchString -win nWave_2 -pattern "init_done" -next
uniFindSearchString -win nWave_2 -pattern "init_done" -next
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "init_done" -line 77 -pos 1 -win $_nTrace1
srcAction -pos 76 5 5 -win $_nTrace1 -name "init_done" -ctrlKey off
debReload
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 108771.604640 111930.658621
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSelectSignal -win $_nWave2 {( "G1" 36 37 38 39 40 41 42 43 )} 
wvSelectSignal -win $_nWave2 {( "G1" 36 37 38 39 )} 
wvSelectSignal -win $_nWave2 {( "G1" 36 37 38 39 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
wvSelectSignal -win $_nWave2 {( "G1" 40 41 42 43 )} 
wvSelectSignal -win $_nWave2 {( "G1" 40 41 42 43 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcTraceConnectivity "tb.u_huffman.c2_gp_member\[1:4\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c2_gp_member\[4\]" -line 236 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c2_com_result" -line 230 -pos 1 -win $_nTrace1
srcSetRadix -win $_nTrace1 -format Bin
srcDeselectAll -win $_nTrace1
srcSelect -signal "c2_group_idx" -line 246 -pos 1 -win $_nTrace1
srcSetRadix -win $_nTrace1 -format Bin
srcDeselectAll -win $_nTrace1
srcSelect -signal "c2_group_cnt" -line 249 -pos 1 -win $_nTrace1
srcSetRadix -win $_nTrace1 -format Dec
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 35)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSetPosition -win $_nWave2 {("G1" 36)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSetPosition -win $_nWave2 {("G1" 39)}
wvSetPosition -win $_nWave2 {("G1" 40)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 40)}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSelectSignal -win $_nWave2 {( "G1" 42 )} 
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
wvSetCursor -win $_nWave2 112505.152706 -snap {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 47 )} 
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "M1" -line 384 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {383 391 2 1 1 1}
srcSetRadix -win $_nTrace1 -format Bin
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "A1_code_len" -line 384 -pos 1 -win $_nTrace1
srcSelect -signal "A2_code_len" -line 385 -pos 1 -win $_nTrace1
srcSelect -signal "A3_code_len" -line 386 -pos 1 -win $_nTrace1
srcSelect -signal "A4_code_len" -line 387 -pos 1 -win $_nTrace1
srcSelect -signal "A5_code_len" -line 388 -pos 1 -win $_nTrace1
srcSelect -signal "A6_code_len" -line 389 -pos 1 -win $_nTrace1
srcSetRadix -win $_nTrace1 -format Dec
srcDeselectAll -win $_nTrace1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 110018.249023 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G3" 0)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/len\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/len\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave2 {("G3" 2)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
schCreateWindow -delim "." -win $_nSchema1 -scope "tb.u_huffman"
verdiSetActWin -win $_nSchema_3
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schZoomIn -win $_nSchema3 -pos 68076 10245
schZoomIn -win $_nSchema3 -pos 68076 10245
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always5:177:220:Combo"
schDeselectAll -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 112427 19118
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always1:117:122:Reg"
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always1:117:122:Reg"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {117 122 1 3 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nSchema_3
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiSetActWin -win $_nSchema_3
verdiDockWidgetRestore -dock windowDock_nSchema_3
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 57)}
wvSetPosition -win $_nWave2 {("G3" 1)}
schDeselectAll -win $_nSchema3
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always3:139:145:RegCombo"
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiSetActWin -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiSetActWin -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos 95611 8151
schZoomIn -win $_nSchema3 -pos 95611 8151
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiSetActWin -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
schDeselectAll -win $_nSchema3
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp8:172:172:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {172 172 1 14 1 1}
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp9:173:173:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {173 173 1 14 1 1}
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always8:299:312:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {299 312 1 3 1 1}
schDeselectAll -win $_nSchema3
schZoom {115483} {4023} {123276} {26053} -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 121435 14819
schSelect -win $_nSchema3 -signal "c1_gp_member\[1:5\]\[6:1\]"
schSelect -win $_nSchema3 -signal "c1_gp_member\[1:5\]\[6:1\]"
schFocusConnection -win $_nSchema3
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schZoomOut -win $_nSchema3 -pos 120399 15981
schZoomOut -win $_nSchema3 -pos 120400 15981
schZoomOut -win $_nSchema3 -pos 120400 15980
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp26:325:325:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {325 325 1 22 1 1}
schSelect -win $_nSchema3 -signal "c1_gp_member\[1:5\]\[6:1\]"
schFocusConnection -win $_nSchema3
schSelect -win $_nSchema3 -signal "c1_gp_member\[1:5\]\[6:1\]"
schFocusConnection -win $_nSchema3
schSelect -win $_nSchema3 -signal "c3_cnt\[1\]"
schFocusConnection -win $_nSchema3
schSelect -win $_nSchema3 -signal "c3_cnt\[1\]"
schFocusConnection -win $_nSchema3
schDeselectAll -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 120104 19475
schZoomIn -win $_nSchema3 -pos 120104 19475
schZoomIn -win $_nSchema3 -pos 120103 19475
schZoomOut -win $_nSchema3 -pos 120103 19545
schZoomOut -win $_nSchema3 -pos 122768 20918
schZoomOut -win $_nSchema3 -pos 122767 20946
schZoomOut -win $_nSchema3 -pos 123114 19374
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always9:383:397:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {383 397 1 3 1 1}
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp26:325:325:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {325 325 1 22 1 1}
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp26:325:325:Combo"
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always8:299:312:Combo"
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp20:297:297:Combo"
schZoomOut -win $_nSchema3 -pos 109148 25142
schZoomOut -win $_nSchema3 -pos 109202 25143
schZoomOut -win $_nSchema3 -pos 109202 25143
schZoomOut -win $_nSchema3 -pos 109202 25143
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always10:400:410:RegCombo"
schSelect -win $_nSchema3 -instpin "huffman\(@1\):Always10:400:410:RegCombo" \
          "CH_init_done"
schFocusConnection -win $_nSchema3
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always10:400:410:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {400 410 1 3 1 1}
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always11:411:414:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {411 414 1 3 1 1}
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always11:411:414:RegCombo"
schSelect -win $_nSchema3 -signal "CNT2\[7:0\]"
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always0:54:114:RegCombo"
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always0:54:114:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {54 114 1 3 1 1}
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp0:124:129:Combo"
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp0:124:129:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {124 129 1 11 1 1}
schZoom {20209} {-8384} {23280} {-355} -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 19937 -5321
schZoomOut -win $_nSchema3 -pos 19936 -5321
schSelect -win $_nSchema3 -inst "huffman\(@1\):SigOp0:124:129:Combo"
schZoomOut -win $_nSchema3 -pos 21458 -3705
schZoomOut -win $_nSchema3 -pos 21478 -3725
schZoomOut -win $_nSchema3 -pos 21477 -3726
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always1:117:122:Reg"
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always1:117:122:Reg"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {117 122 1 3 1 1}
schZoomOut -win $_nSchema3 -pos 21828 -2928
schZoomOut -win $_nSchema3 -pos 21948 -3407
schZoomOut -win $_nSchema3 -pos 21948 -3407
schZoomOut -win $_nSchema3 -pos 21947 -3408
schZoomOut -win $_nSchema3 -pos 21947 -3408
schZoomOut -win $_nSchema3 -pos 21947 -3798
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always4:148:151:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {148 151 1 3 1 1}
schSelect -win $_nSchema3 -inst "huffman\(@1\):Always3:139:145:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {139 145 1 3 1 1}
verdiSetActWin -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiDockWidgetHide -dock widgetDock_MTB_SOURCE_TAB_1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectGroup -win $_nWave2 {G3}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/A1_code_len\[2:0\]} \
{/tb/u_huffman/A2_code_len\[2:0\]} \
{/tb/u_huffman/A3_code_len\[2:0\]} \
{/tb/u_huffman/A4_code_len\[2:0\]} \
{/tb/u_huffman/A5_code_len\[2:0\]} \
{/tb/u_huffman/A6_code_len\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/index_table\[1\]\[6:1\]} \
{/tb/u_huffman/index_table\[2\]\[6:1\]} \
{/tb/u_huffman/index_table\[3\]\[6:1\]} \
{/tb/u_huffman/index_table\[4\]\[6:1\]} \
{/tb/u_huffman/index_table\[5\]\[6:1\]} \
{/tb/u_huffman/index_table\[6\]\[6:1\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/A1_code_len\[2:0\]} \
{/tb/u_huffman/A2_code_len\[2:0\]} \
{/tb/u_huffman/A3_code_len\[2:0\]} \
{/tb/u_huffman/A4_code_len\[2:0\]} \
{/tb/u_huffman/A5_code_len\[2:0\]} \
{/tb/u_huffman/A6_code_len\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 109517.424932 -snap {("G3" 3)}
wvSetCursor -win $_nWave2 110517.282952 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
schCloseWindow -win $_nSchema3
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 33 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetCursor -win $_nWave2 105298.270247 -snap {("G1" 15)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSetCursor -win $_nWave2 103993.285245 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 104776.276246 -snap {("G1" 7)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 104450.029996 106733.753749
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 105537.517498 -snap {("G1" 4)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 104553.855963 -snap {("G1" 19)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 102153.395062 113034.101509
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 109323.981514 114070.297907
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 31 32 33 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 31 32 33 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
wvSelectSignal -win $_nWave2 {( "G1" 34 35 36 37 38 )} 
wvSelectSignal -win $_nWave2 {( "G1" 34 35 36 37 38 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 39 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 46 )} 
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G3" 0)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/huffman_code_A1\[7:0\]} \
{/tb/u_huffman/huffman_code_A2\[7:0\]} \
{/tb/u_huffman/huffman_code_A3\[7:0\]} \
{/tb/u_huffman/huffman_code_A4\[7:0\]} \
{/tb/u_huffman/huffman_code_A5\[7:0\]} \
{/tb/u_huffman/huffman_code_A6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSetPosition -win $_nWave2 {("G3" 7)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvExpandBus -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 112033.547492 -snap {("G1" 48)}
verdiDockWidgetDisplay -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
uniFindSearchString -widget MTB_SOURCE_TAB_1 -pattern "code_len" -next
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSetPosition -win $_nWave2 {("G1" 35)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSetPosition -win $_nWave2 {("G1" 35)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSetPosition -win $_nWave2 {("G1" 35)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSetCursor -win $_nWave2 111500.764549 -snap {("G1" 41)}
wvSetCursor -win $_nWave2 113499.035651 -snap {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSetPosition -win $_nWave2 {("G1" 35)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSetCursor -win $_nWave2 110812.618209 -snap {("G1" 42)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvSetCursor -win $_nWave2 113472.568484 -snap {("G2" 1)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSetRadix -win $_nWave2 -format Bin
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {324 324 7 9 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSetRadix -win $_nWave2 -format Bin
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "239" "116" "1440" "712"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetCursor -win $_nWave2 112959.519848 -snap {("G1" 42)}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvFitSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvFitSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 13)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 112566.572940 -snap {("G1" 12)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 112508.048932 -snap {("G1" 7)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G1" 40)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 41)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetPosition -win $_nWave2 {("G1" 41)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvExpandBus -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 47)}
wvSetPosition -win $_nWave2 {("G1" 46)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 52)}
wvSetPosition -win $_nWave2 {("G1" 52)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 47 48 49 50 51 52 )} 
wvSetPosition -win $_nWave2 {("G1" 52)}
wvSetPosition -win $_nWave2 {("G1" 52)}
wvSetPosition -win $_nWave2 {("G1" 52)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 47 48 49 50 51 52 )} 
wvSetPosition -win $_nWave2 {("G1" 52)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 47 48 49 50 51 52 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
wvSelectSignal -win $_nWave2 {( "G1" 34 35 36 37 38 )} 
wvSelectSignal -win $_nWave2 {( "G1" 34 35 36 37 38 )} 
wvSetRadix -win $_nWave2 -format Bin
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 110501.511529 -snap {("G1" 32)}
wvSetCursor -win $_nWave2 112691.981527 -snap {("G1" 39)}
wvSetCursor -win $_nWave2 112942.798703 -snap {("G1" 36)}
wvSetCursor -win $_nWave2 112867.553550 -snap {("G1" 38)}
wvSelectSignal -win $_nWave2 {( "G1" 33 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 111513.140803 -snap {("G1" 47)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schCreateWindow -delim "." -win $_nSchema1 -scope "tb.u_huffman"
verdiSetActWin -win $_nSchema_4
schSelect -win $_nSchema4 -inst "huffman\(@1\):Always10:397:411:RegCombo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {397 411 1 3 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_4
verdiSetActWin -win $_nSchema_4
schSelect -win $_nSchema4 -inst "huffman\(@1\):Always9:316:324:Combo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {316 324 1 3 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_4
verdiSetActWin -win $_nSchema_4
schSelect -win $_nSchema4 -inst "huffman\(@1\):Always11:414:424:RegCombo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {414 424 1 3 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
verdiDockWidgetHide -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nSchema_4
schCloseWindow -win $_nSchema4
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSelectSignal -win $_nWave2 {( "G1" 30 31 32 33 )} 
wvSelectSignal -win $_nWave2 {( "G1" 33 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 42 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 36 37 38 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetPosition -win $_nWave2 {("G1" 29)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 30 )} 
wvSetPosition -win $_nWave2 {("G1" 30)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 38 )} 
wvSelectSignal -win $_nWave2 {( "G1" 37 )} 
wvSetCursor -win $_nWave2 111500.000000
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 49 50 51 52 53 )} 
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
wvSelectSignal -win $_nWave2 {( "G1" 47 )} 
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvSelectSignal -win $_nWave2 {( "G1" 40 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 52)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 53)}
wvSetPosition -win $_nWave2 {("G1" 53)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 53 )} 
wvSetPosition -win $_nWave2 {("G1" 53)}
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSetPosition -win $_nWave2 {("G1" 54)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 54 )} 
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSetPosition -win $_nWave2 {("G1" 54)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/HC2\[7:0\]} -height 667 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 54 )} 
wvSetPosition -win $_nWave2 {("G1" 54)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 52 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 53 )} 
wvSetPosition -win $_nWave2 {("G1" 53)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 60)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G1" 59)}
wvSelectSignal -win $_nWave2 {( "G1" 60 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 47 )} 
verdiDockWidgetDisplay -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 115455.413976 -snap {("G1" 41)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 113486.791020 -snap {("G1" 53)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 113401.727065
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "huffman_code\[cnt_i\]" -line 383 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 7497.780023 -snap {("G1" 41)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c4_gp_member\[2\]\[1\]" -line 387 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 39 )} 
wvSelectSignal -win $_nWave2 {( "G1" 39 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 39 )} 
wvSetPosition -win $_nWave2 {("G1" 39)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 61)}
wvSetCursor -win $_nWave2 37063.579820
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 111485.218123 -snap {("G1" 49)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 113000.711278
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvGetSignalOpen -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 382 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G1" 62)}
wvAddSignal -win $_nWave2 "/tb/u_huffman/clk"
wvSetPosition -win $_nWave2 {("G1" 62)}
wvSetPosition -win $_nWave2 {("G1" 63)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 112526.783529 -snap {("G1" 62)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvSetCursor -win $_nWave2 112500.000000
verdiSetActWin -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
verdiDockWidgetHide -dock widgetDock_MTB_SOURCE_TAB_1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "72" "223" "1440" "712"
wvSetCursor -win $_nWave2 112500.000000
wvSetCursor -win $_nWave2 117891.192328
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G1" 54)}
wvScrollDown -win $_nWave2 4
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 55)}
wvSetPosition -win $_nWave2 {("G1" 55)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/HC2\[7:0\]} -height 228 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 55 )} 
wvSetPosition -win $_nWave2 {("G1" 55)}
wvSetPosition -win $_nWave2 {("G1" 55)}
wvSetPosition -win $_nWave2 {("G1" 55)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/HC2\[7:0\]} -height 228 \
{/tb/u_huffman/HC2\[7\]} \
{/tb/u_huffman/HC2\[6\]} \
{/tb/u_huffman/HC2\[5\]} \
{/tb/u_huffman/HC2\[4\]} \
{/tb/u_huffman/HC2\[3\]} \
{/tb/u_huffman/HC2\[2\]} \
{/tb/u_huffman/HC2\[1\]} \
{/tb/u_huffman/HC2\[0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/cnt_o\[1:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb/u_huffman/M1\[7:0\]} \
{/tb/u_huffman/M2\[7:0\]} \
{/tb/u_huffman/M3\[7:0\]} \
{/tb/u_huffman/M4\[7:0\]} \
{/tb/u_huffman/M5\[7:0\]} \
{/tb/u_huffman/M6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 55 )} 
wvSetPosition -win $_nWave2 {("G1" 55)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 74564.529473
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvSetPosition -win $_nWave2 {("G1" 65)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 65)}
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvExpandBus -win $_nWave2
wvScrollUp -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 73)}
wvSetPosition -win $_nWave2 {("G1" 72)}
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 25
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvScrollDown -win $_nWave2 14
wvSelectSignal -win $_nWave2 {( "G1" 65 66 67 68 69 70 71 72 73 74 75 76 )} {( \
           "G2" 1 2 )} {( "G3" 1 2 3 4 5 6 7 8 9 10 11 12 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 64)}
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 65)}
wvSetPosition -win $_nWave2 {("G1" 65)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvSetPosition -win $_nWave2 {("G1" 65)}
wvSetPosition -win $_nWave2 {("G1" 65)}
wvSetPosition -win $_nWave2 {("G1" 65)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvSetPosition -win $_nWave2 {("G1" 65)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvSelectSignal -win $_nWave2 {( "G1" 65 )} 
wvExpandBus -win $_nWave2
verdiDockWidgetDisplay -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvSetCursor -win $_nWave2 117483.647558 -snap {("G1" 44)}
wvSelectSignal -win $_nWave2 {( "G1" 44 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvScrollDown -win $_nWave2 3
wvGetSignalOpen -win $_nWave2
wvGetSignalSetSignalFilter -win $_nWave2 "*valid"
wvSetPosition -win $_nWave2 {("G1" 71)}
wvSetPosition -win $_nWave2 {("G1" 71)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G1" 71)}
wvSetPosition -win $_nWave2 {("G1" 72)}
wvSetPosition -win $_nWave2 {("G1" 72)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 72 )} 
wvSetPosition -win $_nWave2 {("G1" 72)}
wvSetPosition -win $_nWave2 {("G1" 72)}
wvSetPosition -win $_nWave2 {("G1" 72)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G1" 72 )} 
wvSetPosition -win $_nWave2 {("G1" 72)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetSignalFilter -win $_nWave2 "*cnt"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/finish_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/receive_done_flag} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/switch} \
{/tb/u_huffman/sym_cnt\[1:6\]} \
{/tb/u_huffman/sym_cnt\[1\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[2\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[3\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[4\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[5\]\[6:0\]} \
{/tb/u_huffman/sym_cnt\[6\]\[6:0\]} \
{/tb/u_huffman/data_cnt\[6:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/c1_com_result\[4:1\]} \
{/tb/u_huffman/c1_group_idx\[4:0\]} \
{/tb/u_huffman/c2_com_result\[3:1\]} \
{/tb/u_huffman/c2_group_idx\[4:0\]} \
{/tb/u_huffman/c3_com_result\[2:1\]} \
{/tb/u_huffman/c3_group_idx\[2:0\]} \
{/tb/u_huffman/c4_com_result} \
{/tb/u_huffman/init_done} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/c1_cnt\[1:5\]} \
{/tb/u_huffman/c2_cnt\[1:4\]} \
{/tb/u_huffman/c3_cnt\[1:3\]} \
{/tb/u_huffman/c4_cnt\[1:2\]} \
{/tb/u_huffman/index_table\[1:6\]} \
{/tb/u_huffman/c1_gp_member\[1:5\]} \
{/tb/u_huffman/c2_gp_member\[1:4\]} \
{/tb/u_huffman/c3_gp_member\[1:3\]} \
{/tb/u_huffman/c4_gp_member\[1:2\]} \
{/tb/u_huffman/c4_gp_member\[1\]\[6:1\]} \
{/tb/u_huffman/c4_gp_member\[2\]\[6:1\]} \
{/tb/u_huffman/huffman_code\[1:6\]} \
{/tb/u_huffman/huffman_code\[1\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[2\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[3\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[4\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[5\]\[7:0\]} \
{/tb/u_huffman/huffman_code\[6\]\[7:0\]} \
{/tb/u_huffman/HC1\[7:0\]} \
{/tb/u_huffman/HC2\[7:0\]} \
{/tb/u_huffman/HC3\[7:0\]} \
{/tb/u_huffman/HC4\[7:0\]} \
{/tb/u_huffman/HC5\[7:0\]} \
{/tb/u_huffman/HC6\[7:0\]} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1:6\]} \
{/tb/u_huffman/hc_cnt\[1\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[2\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[3\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[4\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[5\]\[2:0\]} \
{/tb/u_huffman/hc_cnt\[6\]\[2:0\]} \
{/tb/u_huffman/group_valid} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_len\[1:6\]} \
{/tb/u_huffman/code_len\[1\]\[2:0\]} \
{/tb/u_huffman/code_len\[2\]\[2:0\]} \
{/tb/u_huffman/code_len\[3\]\[2:0\]} \
{/tb/u_huffman/code_len\[4\]\[2:0\]} \
{/tb/u_huffman/code_len\[5\]\[2:0\]} \
{/tb/u_huffman/code_len\[6\]\[2:0\]} \
{/tb/u_huffman/code_valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/tb/u_huffman/finish_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvGetSignalClose -win $_nWave2
debExit
