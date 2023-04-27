verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec "simv" -args "-lca -a huffman.log"
debImport "-dbdir" "simv.daidir"
debLoadSimResult \
           /users/m1053011/Desktop/verilog_sim/ic_contest/2018_grad_cell/verilog/pre_ver/run/huffman.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "500" "182" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
verdiSetActWin -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/C1_index\[0:4\]} \
{/tb/u_huffman/C2_index\[0:3\]} \
{/tb/u_huffman/C3_index\[0:2\]} \
{/tb/u_huffman/C4_index\[0:1\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/C1_index\[0:4\]} \
{/tb/u_huffman/C2_index\[0:3\]} \
{/tb/u_huffman/C3_index\[0:2\]} \
{/tb/u_huffman/C4_index\[0:1\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvGetSignalClose -win $_nWave2
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
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/C1_index\[0:4\]} \
{/tb/u_huffman/C2_index\[0:3\]} \
{/tb/u_huffman/C3_index\[0:2\]} \
{/tb/u_huffman/C4_index\[0:1\]} \
{/tb/u_huffman/clk} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/C1_index\[0:4\]} \
{/tb/u_huffman/C2_index\[0:3\]} \
{/tb/u_huffman/C3_index\[0:2\]} \
{/tb/u_huffman/C4_index\[0:1\]} \
{/tb/u_huffman/clk} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave2 "/tb/u_huffman"
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/C1_index\[0:4\]} \
{/tb/u_huffman/C2_index\[0:3\]} \
{/tb/u_huffman/C3_index\[0:2\]} \
{/tb/u_huffman/C4_index\[0:1\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/C1_group\[0:4\]} \
{/tb/u_huffman/C1_posibility\[0:4\]} \
{/tb/u_huffman/C2_group\[0:3\]} \
{/tb/u_huffman/C2_posibility\[0:3\]} \
{/tb/u_huffman/C3_group\[0:2\]} \
{/tb/u_huffman/C3_posibility\[0:2\]} \
{/tb/u_huffman/C4_posibility\[0:1\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/u_huffman/C1_index\[0:4\]} \
{/tb/u_huffman/C2_index\[0:3\]} \
{/tb/u_huffman/C3_index\[0:2\]} \
{/tb/u_huffman/C4_index\[0:1\]} \
{/tb/u_huffman/clk} \
{/tb/u_huffman/C1_group\[0:4\]} \
{/tb/u_huffman/C1_posibility\[0:4\]} \
{/tb/u_huffman/C2_group\[0:3\]} \
{/tb/u_huffman/C2_posibility\[0:3\]} \
{/tb/u_huffman/C3_group\[0:2\]} \
{/tb/u_huffman/C3_posibility\[0:2\]} \
{/tb/u_huffman/C4_posibility\[0:1\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_huffman" -line 75 -pos 1 -win $_nTrace1
srcAction -pos 74 3 4 -win $_nTrace1 -name "u_huffman" -ctrlKey off
srcDeselectAll -win $_nTrace1
debExit
