// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Feb 17 20:50:43 2024
// Host        : DESKTOP-QOEA825 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim D:/RV32IM/RV32IM.runs/blk_memory_synth_1/blk_memory_sim_netlist.v
// Design      : blk_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_memory,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module blk_memory
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.361527 mW" *) 
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
  (* C_INIT_FILE = "blk_memory.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_memory_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19424)
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
