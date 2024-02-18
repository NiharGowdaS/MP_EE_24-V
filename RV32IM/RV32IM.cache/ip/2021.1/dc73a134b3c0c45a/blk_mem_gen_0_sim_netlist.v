// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Feb 17 20:23:30 2024
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
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19552)
`pragma protect data_block
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
9g==
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
