wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/b03015/MFA/test_top_module.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top_module"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 70.606379
wvSetCursor -win $_nWave1 26.885994
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/RAM"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/MAIN/RAM/ram0\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 8 31 1536 801
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvExpandBus -win $_nWave1 {("G1" 1)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 29
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top_module"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/RAM"
wvSetPosition -win $_nWave1 {("G1" 71)}
wvSetPosition -win $_nWave1 {("G1" 71)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/MAIN/RAM/ram0\[63:0\]} \
{/test_top_module/MAIN/RAM/ram0\[63\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[62\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[61\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[60\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[59\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[58\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[57\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[56\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[55\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[54\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[53\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[52\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[51\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[50\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[49\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[48\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[47\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[46\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[45\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[44\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[43\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[42\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[41\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[40\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[39\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[38\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[37\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[36\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[35\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[34\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[33\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[32\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[31\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[30\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[29\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[28\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[27\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[26\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[25\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[24\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[23\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[22\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[21\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[20\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[19\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[18\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[17\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[16\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[15\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[14\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[13\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[12\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[11\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[10\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[9\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[8\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[7\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[6\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[5\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[4\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[3\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[2\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[1\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[0\]\[7:0\]} \
{/test_top_module/MAIN/RAM/CLK} \
{/test_top_module/MAIN/RAM/Q\[7:0\]} \
{/test_top_module/MAIN/RAM/rd_addr\[5:0\]} \
{/test_top_module/MAIN/RAM/wr_addr\[5:0\]} \
{/test_top_module/MAIN/RAM/wr_data\[7:0\]} \
{/test_top_module/MAIN/RAM/wr_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 66 67 68 69 70 71 )} 
wvSetPosition -win $_nWave1 {("G1" 71)}
wvSetPosition -win $_nWave1 {("G1" 71)}
wvSetPosition -win $_nWave1 {("G1" 71)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/MAIN/RAM/ram0\[63:0\]} \
{/test_top_module/MAIN/RAM/ram0\[63\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[62\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[61\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[60\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[59\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[58\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[57\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[56\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[55\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[54\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[53\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[52\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[51\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[50\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[49\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[48\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[47\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[46\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[45\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[44\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[43\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[42\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[41\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[40\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[39\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[38\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[37\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[36\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[35\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[34\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[33\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[32\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[31\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[30\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[29\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[28\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[27\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[26\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[25\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[24\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[23\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[22\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[21\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[20\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[19\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[18\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[17\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[16\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[15\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[14\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[13\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[12\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[11\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[10\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[9\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[8\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[7\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[6\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[5\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[4\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[3\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[2\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[1\]\[7:0\]} \
{/test_top_module/MAIN/RAM/ram0\[0\]\[7:0\]} \
{/test_top_module/MAIN/RAM/CLK} \
{/test_top_module/MAIN/RAM/Q\[7:0\]} \
{/test_top_module/MAIN/RAM/rd_addr\[5:0\]} \
{/test_top_module/MAIN/RAM/wr_addr\[5:0\]} \
{/test_top_module/MAIN/RAM/wr_data\[7:0\]} \
{/test_top_module/MAIN/RAM/wr_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 66 67 68 69 70 71 )} 
wvSetPosition -win $_nWave1 {("G1" 71)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvExit
