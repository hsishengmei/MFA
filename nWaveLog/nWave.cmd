wvConvertFile -win $_nWave1 -o "/home/b03015/MFA/test_top_module.vcd.fsdb" \
           "/home/b03015/MFA/test_top_module.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/b03015/MFA/test_top_module.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top_module"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/MAIN/CGR/addr_x\[7:0\]} \
{/test_top_module/MAIN/CGR/addr_y\[7:0\]} \
{/test_top_module/MAIN/CGR/symbol\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/MAIN/CGR/addr_x\[7:0\]} \
{/test_top_module/MAIN/CGR/addr_y\[7:0\]} \
{/test_top_module/MAIN/CGR/symbol\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1536 801
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top_module"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/CGR"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/RAM"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/SQG"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN"
wvExit
