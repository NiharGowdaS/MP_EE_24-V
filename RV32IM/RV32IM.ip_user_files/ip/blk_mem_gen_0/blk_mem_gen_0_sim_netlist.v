// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Feb 17 21:50:13 2024
// Host        : DESKTOP-QOEA825 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim D:/RV32IM/RV32IM.runs/blk_mem_gen_0_synth_1/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.25796 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "48" *) 
  (* C_READ_DEPTH_B = "48" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "48" *) 
  (* C_WRITE_DEPTH_B = "48" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20032)
`pragma protect data_block
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
UX9xHaIlnU5uVBH0J3Zeu3/eLWmrY89Sbw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
