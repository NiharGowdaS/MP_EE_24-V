// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Feb 17 21:50:12 2024
// Host        : DESKTOP-QOEA825 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20064)
`pragma protect data_block
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
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
