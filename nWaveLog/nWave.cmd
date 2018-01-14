wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/b03015/MFA/test_top_module.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top_module"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/SQG"
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN"
wvGetSignalSetScope -win $_nWave1 "/test_top_module"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/BC_mode} \
{/test_top_module/CLK} \
{/test_top_module/RST} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/SQG"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/BC_mode} \
{/test_top_module/CLK} \
{/test_top_module/RST} \
{/test_top_module/MAIN/SQG/count_rd_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/counter_r\[6:0\]} \
{/test_top_module/MAIN/SQG/counter_w\[6:0\]} \
{/test_top_module/MAIN/SQG/wen_sqg} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvZoom -win $_nWave1 81236.903320 82093.931559
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 79992.399515 80660.729079
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top_module/MAIN/SQG"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/BC_mode} \
{/test_top_module/CLK} \
{/test_top_module/RST} \
{/test_top_module/MAIN/SQG/count_rd_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/counter_r\[6:0\]} \
{/test_top_module/MAIN/SQG/counter_w\[6:0\]} \
{/test_top_module/MAIN/SQG/wen_sqg} \
{/test_top_module/MAIN/SQG/count_rd_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/BC_mode} \
{/test_top_module/CLK} \
{/test_top_module/RST} \
{/test_top_module/MAIN/SQG/count_rd_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/counter_r\[6:0\]} \
{/test_top_module/MAIN/SQG/counter_w\[6:0\]} \
{/test_top_module/MAIN/SQG/wen_sqg} \
{/test_top_module/MAIN/SQG/count_rd_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/BC_mode} \
{/test_top_module/CLK} \
{/test_top_module/RST} \
{/test_top_module/MAIN/SQG/count_rd_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/counter_r\[6:0\]} \
{/test_top_module/MAIN/SQG/counter_w\[6:0\]} \
{/test_top_module/MAIN/SQG/wen_sqg} \
{/test_top_module/MAIN/SQG/count_rd_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y\[2:0\]} \
{/test_top_module/MAIN/BC_rd_addr\[6:0\]} \
{/test_top_module/MAIN/BC_wr_addr\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top_module/BC_mode} \
{/test_top_module/CLK} \
{/test_top_module/RST} \
{/test_top_module/MAIN/SQG/count_rd_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x_r\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y_r\[2:0\]} \
{/test_top_module/MAIN/SQG/counter_r\[6:0\]} \
{/test_top_module/MAIN/SQG/counter_w\[6:0\]} \
{/test_top_module/MAIN/SQG/wen_sqg} \
{/test_top_module/MAIN/SQG/count_rd_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_rd_y\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_x\[2:0\]} \
{/test_top_module/MAIN/SQG/count_wr_y\[2:0\]} \
{/test_top_module/MAIN/BC_rd_addr\[6:0\]} \
{/test_top_module/MAIN/BC_wr_addr\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvExpandBus -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvExpandBus -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 80972.575619 -snap {("G1" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 81787.142211 -snap {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvCollapseBus -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
