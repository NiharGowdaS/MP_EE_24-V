// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Feb 17 20:50:42 2024
// Host        : DESKTOP-QOEA825 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_memory_sim_netlist.v
// Design      : blk_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_memory,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
`pragma protect data_block
yqdHAaTyiE7HwExJ7aHhAer8w7E1+hV5BmvHgoB3g96H9fZ8ZGTqR2DcDauiKCYyo8v9gB7soebY
NEPPmy39TMgEglS4aZQ3x0WXNWsfQhyWxKkrkcrJJnod9BhybDeNRevXYuJ6x4R5WjhZXiy/f8B8
nL9HcgSYGs/zphnZkU99OqReCXeSpzYYb/ohHib0H2W2f5LRcR6zGaXUlw60fy/zR6ko9qSiHLWR
RnAhO9BHqUFFwEExWPHh+jUEwXVLFQ4Oli6L6oS+0V4OIS3LZG/9prLURoeCgpXBaEuT7N6+0hVP
WyWQB34QOA0mr2BRhTCVgzhp1cjm9IzxS/j8qFUaez5LD8QGO/0Xto9+GImPNHW57I03aFk0+cFx
bpy6IE6vSRkvClj1RcZ2zQ7UadifXFA1osCtbPkfwi8CO+mObIqp085YeSVdRjj3o8g6GdwZA/t4
2HpTkf9cvUEL1a4eW22yr5cTZBiQl6Y2SYs3tWQ5YMVnNo7uXd8+tCDBJ9qtl05FnwC3khqjQxFT
jzfEMT4C/KgQdLSWEnityvuhRfPnbNuFXtHAwt3cITRi1Z/Cm2i0kYm8XxX6gBFLDXgQ5zNrUtKW
esPsRd4PC2a5DHbzp+vUW+d7R+5cj4LzcdGnzuiVRbbaoYDk4QBPi/5n2nzW8z9AH7jyddnb3XyS
F0DyjONgNO/tvpdYkUZXp3HXq70KcDuhtumhlcep2jMmFm50fstMjLgre1BbOgdBzgFKqPWKqpIK
oYHk8pqXMveIonXh05ZqK3F+fD3dao/x54Bf4BmVWYhggKxG3DrcvYUjGMkLeMP83ACs3xftq2WK
/VKo2pQ4rEQDihDTh+UKkyEWF5Ds+fQf35bfN+TlTkFXsTmn1E06fR6ME2za06ikSP9hQuutwqU4
GXPf11xutTobDfngukv9biek3gTxujv+84EZcwERgWS/L7ofG8gWYQAutpRzI+N+4QHgcgIREPiu
Xc9crH7rvF3srpSxYwQmrGWBlLdNiq28Nc98QCd75rHIk6FCcAeJkQsn+10k9khuEpXFvBcH/vHo
UrdHlJ/qrWBM3wPjsE6GNuzz6lJ1pW8ARfGNudaN+Hx0jNunCd+4YCKkXTKzFLWLHsFY/IZkI4/d
W/BDqmnhMvVYdKyefQ/RRCeCyIqKDRewUdSO/Fvg7NIFct7diypX9Ef3kULMKGgy6lOHKJPJTv9B
rBFouwvW+l61kTlDHCVf+nNtZ01qND6Dwx+RlG/9aumB/DsKfueXQ3emnYN4VyqNDuQzefclFbgy
T5Th4TD/L7uJMhVEtI7wuYX+MHuaeupD1qvLViz9BKlwJI8zc0QqS0+AZYVz9ws3DDxMGCm0tw+g
JzYkt0J6mYt6TYl0c9FrrmJyLaDiiXT+OMyp6hznx/nr8THihl4poPdQmju/gWE1w3qttg/0MA1D
K0MrAUrXOQyRjm3dmdADZBEDP0/K8CZfNZsp0MQSftmIpt0tJbuoiezqM+A4vkLcRM4qEk7BiNTd
078MDtJSWLnQow8yqn69djvKSDQRfHx05/ydFUwxyte4sJcQN5XxCkOcOTo4LWaiToz7WXygiiIM
hONwIcH5ROowZiYSrkFkvF4mtKM91ZI2KTrdwmnwk/B/FaBnDyfy1H3SehfbtcGYiJjHGNKGcNGM
BeMlaEZTqslf7kuonkMkZ/OdMfOC3ya44Zh4gYmn18hl3WQ2zQ3WqE6C10+8Tq64SqbdAic3a4XE
DdTyHYM4LhlVDPTzq2qsgpxZJ9OzbsriublbhhkU7oMHeWafwp5dqRWUTcfWxcE+xyPqUgO/1Zii
ai3MDS/cazo7GOT3D5VrDg8lPODi820YdVZBY5yWWprrf1Jb8xcaa5hQkuwKQMU4oHXoAT8bjH8Y
lvZYyPhQz78RM6OfiaOA6OvssIJ/lPaNBOZA4EiQjv1xTAx6FWG97nZKx8vTNlzl2tdt1sKx/1A2
dFUKmDJDus55Qqm9qMOclmzzxQ2d1ABPNDwnmb9VlDDl0NZQkw4Mhbm46pT69YNywM7zn+xHAtpf
vMNSuonj4hT6x5yNRN/7/cnFjmClIurDVGkYchNctn/v4EkhsG6AajnQ9giyQnqdaLXVlkzWTNFo
TZthok438SsHrl+DS7cEToRm55yzlbBpqgfEdXE7UTba+57aijOWPt0/cGz74HZ/w4Z7iFzXlSY+
RCT3J8WA5/kRAjEkWpevP0hVXacQ0gTPy96FeEegBXMWJ5nJ2n/ds72HBz5J80lSVJyqL53WyYVn
9UM63VBw5mGrZ21IdCEKLuVJF6CQQwzQ21/1GAtsbaiMqMbGb1XKN0TxZCy2sSFaCCBhizcbDY4s
fnc/APuIl/lyb9VdCAoqSObODD7o76OnT937TfeNJFOAeJrQvU2y/wt6VHmtcppvvH1KyRYA5ER7
wRSNum3JfTCRcpXiMjvimhhXSAx+/u8xdHy7Y3rXcBnRkv/FBh70ADRcqHYmHu2yvzjugeDTdrz+
Y/YaQrjFaB8wCzEwWocm60UmUZ9GrFrVPhrpRWOD/pWfz2Wfy9fSYvGxNMaOgpqKJ2BVJRpJx6i9
xKpfc4PKq6XmN7O6zK49cQqxC53wX/6JMEYaSCeNboyLlk3d2VbQv9J/sf/CqCOfHfudFJx8io7o
gj8LeU0TdTEc14kjfKR1L+dhGJJ8NgG8a44AA1Zp6Wne9IIpc81LVnVTg6srb/LoUF/CLhckkYl7
t7Esnn7ADtgZcU6p7IoyRv7yJ+UYqRxnVRvF2dHVwASH6teq42YVGPi05pTWBT1IV2xcl7hs6Duk
WuF6k/4jakz/RLSMCdd7EitwqHi/LsYjfajWgDaTrGhuW6vUoQQWisr4fje2p1OQkPj1bTG7IWqe
oiXk8UWG1YMAjou2qo0+7b+DTWdgCvGf6C7jFvdrJWngMuDCzh+bFaxESHtCeY1OhFd1byOVUW7C
63ath5ZTByzD+Nn38/rHZ6/CHt1H5thiJsEL75501wpr73RP63Yg4WYRqCBEtvpXaJ98OvhMZYEx
ssHDwAr16CyymPF0CU2ugAElHy0bhweuN+kZn7X0diMjo6dq4pS4mt1AAyMyEO3cX/6ADCOB9Aaa
CFGD1e+UktqO4Ck+lHPXThcXsLj+khtkmB7IXjrQp1BoVEFOxVCc106kYFd7JpNqMC7C8QPduCa7
NBsvKlPTYSViNxbiWhRSXLlrFBJUkjl4Sj95g/qWX2nwiYSa9RaC/b8q1zln5cffSD24cQJ3ONRw
KGflhZKTbW+0nc2RSTjH5eaArKdYhPjxOTodRlRa0raJjdx6MOFJmnGBglpQF87PWqRHFYZQTi+e
bJXDEtOPExqYMJBDN3HOWMJhGtVLJGjKAzwgfTrlsvpJTkElrsXz512/X3siddjQjjTX75pMmssV
ioms9EoB+E7qK5KqSJHQKWT82WTn6Hf8yj42oMw+F/oi2A+aWY43oIm8ETd2xXamRrv9M0Di4dq+
HJjStDszwd6mZFOsrotAmHI5uaN5/WwXbvn9sfQWZ2pIhbJaHn6XIPn/GRI5KP/xDmVaavlO9ulU
j/hGcdPOMWd15nv61ImcjCit/4Y4X4rEFDzi2RIsjF+qLlQa3eeHj1mqSKmZfde+trLL1LpZnpCj
hQhFJnGdOuz4LOs9XOQsBto2EojSFuQM91agMztJh+GFIKWP/awmEANYG4HLPtENWR/GjsyhrGWM
A4sscAf+NNR9X/Hz9Zll0NxWAtwBpJbA7ZRzJ8S4u4bpKPXXU6rpeoaULajIhrM+zO55g9jE7Pc1
ubsRev7NipeG0E0DgwETVMCK03gFLF1p+EnBndB7jPnVLIg6RVpmKGIZ9oNGi2wHDb2ktU455IRB
+gwA0VmXnJx5+cWB6zTS5+v5jDhGri9dx/XZpBnqGfwgW41WhkSyCD7UJOH4CsW8fXn8Gqh+5+uu
uH7OTHcMG1NIsIDUXMjV+/+iiMvYTJNsR/kYzwoG8SdsbSsfYDMugeuPYVIbUg0sA+RPNqXo8iTF
QXTZn8Lc/38k5iAi5bCrwXyytviS6KaDTIBKscIxi038fNm8V4UL152Bj0KTASnv6HETu07hv5aZ
GJjxIPojgrZr9/jGwSez/k3jQqdyd3n4emO3MiG9KNufN5shJBhV527Kz3l6pD23hk+NRLW2OuzU
TMAuhXviSXEqfjmNt+xb129auOU3WNd4NyzhSvRDYmKy2mZW8ZsiHU+DVty2dJ/kNTDwoxpzghSY
AQW/tUP1QU3M52TDOztxxsxnFJ/PdQ0ZcQBRJEDKevmAhka7YdbUUqWd5PYChX8VLBErZp98bpSg
JBdJnxNaYb1aWP52Fa7aNukn1YbbSuguR9Y1LGlGtGOpgBy0wxg2sjXojgDYmx8mzL7YnCTkdcRh
Fuet1uwmquQutgAHv8TAGcOJ1laWgGsTc4QoC2UqOg+7fHYVRIdm8ycwTMkP/gaU5vG3wZ/lpELt
93YNa6H9GH54xhpSrAvPVxlMZAS4H/KPYGxQXkDDgqW5AFKHgnFdHhBS0/Vwlb8E1d/iQCCJDGhw
gKhBqx7CAj4p3yIxR7xTd0P+vk5QZ5uhXO7LKNyVFxpYn7sSnbWfBmb3rogzpPchZJHOlQwIvd+w
9+58G8msAGvHlRTEYgyQ9P2zrs7oOmoQQEGNPgMc0rPDMTsbF/ZHwCyR2+c1DS9LegvxIkNYyctt
otpy6/UFA68VAKYrsD6LaY8UWnX5sIhc105P2WiIdITysVufl8WH/k9F2cigGGD9PtJI7XJKqnBt
ErJOT+cjawQHZJW8EjuIGgGTsk3bSFABJrT1yRk/pqLjftds0hSFpDlog0ZoKLAPawWanOHoKeMD
tdcQErYH7aJW/vDfvtOOJXihNrN7F3j9J6TJ0E2BXwLJKUOVNh9VykclZWriT2Nk8g3VYu/hdXNX
CtIH5U/zOMonfqPSAJUoktLOalktm3YJImYLNIwpnGM78/rsb76aZwWSSBY4kX4XVd6jAzpdU21o
jtllYvyk8KL+N0syUX+RWErdnITd570K0LM2pNF8BtZNo3iLPIBNwXWfImlkCGO+J7q2lCqeqhWv
wRAL6cG5ZziLnGSY9y8oBc5zvc65bfXxF0uAXKIfK7CGa60ifVZX5XCGu9NPBufw8dn15BWJiUGy
9gznV8IZI6oDfr87qJ3RgPUfPYR/8Dj1n0/yIoE3676NYYxPHMwT1/Rr3sVH7bmC4vy4vOexz6mH
5GCw/Jk9k1OdUDBW5fgyXXj6oyjggmtzqXKLKK8LtblZ3HPrY4l6H4ON+qQb59Yufb08aPEA+Gy5
OWyZaa6r6ihcgTKQybD6xoKJmGU+syY2qeVatcO6wMlj7WdGg/4Z5RYrlz54IMFXL6M2CB48fIQi
Sov+GGcCxijjzeS+qFuEyzn+B6mE8OHa3kk79sgdQQgvVRby1l+Y9cfAeme4QDLv1kywkMvYo9nG
YBvROV6SArFSLf5gKqt4hpXPTZcrvvRfswlRRNFVgaa7ZmWYEN+0xf+cmbqUj1l0IugMq1VhMwQe
qScvCZBPNengWSc/GtPuM0XgOMAdSAkL54lYhLLRZJO7HGwv57jQwXq+JXBlFxcQG+UDLlTl60iO
0pJbfcIrowR+rZCduxOprRY8VFZgwvOCt0j+0DUbrYRzG1I8v4l86558gbeyfQQj+5RHQ//8NSIA
sUdkbNBuM9FNGHplAj6Oml8eOfsaIisuE2O//+Y0zKihsb4Tjg+KhxhRRYK/otgLkx2aETNgat1p
FOsFl4sxis3U9HovQOzUzz4Cuq6Z+KDz/LZyMtwVDIU/dhtcvx3bb/eXz87fpJIPy1XCJwWb1j4F
xOKH6uTZ2VaC0fStZWwnjPsCGBzvvldaCM3H0agiSiyFlBT/fh5rnUTDb+T+Sz7TwbfNqTnm93Kv
jULejq7PxVI8HkzH1OWrXo5/NcjMKat4Ng9h5Ing0vJIlcDLU5gsVL24LG3eNTunHlr/rskqjhnc
Q9hr4DG6B12MVhn5Muwzhx/ry6Ls7cbqAjgzk9yG91mSKSo/q/gllEKy+mZOQML40cpdrO83IAkG
cDgRRmW+xhMndeFVp3HKBeHSiypnagOyFVHdZc8G4gf5MVaUxspYecb0rgI8Ulq32uPAUgAVXjQf
EtDZaQGY1isJGJnqds51C1F6ME6/bbrXDrL3b9sV1L+uW8mT/KvqqRupWkl9uS8GdBCAaNN5HyTy
pjTFh7XZ0A5kmgFaheeTWrBQMRvA3uV8XNQ83wSjG3dAUDs6OImvfFlHgj37zAzHSjpwGjp4XC71
Tu+kB3O+iQ3JEK+z+h3ze6c4n+oy6EmJ/YjIwCi9A94LUeZXfhFogXXBqzkk3h7gCJqH0IIV5kRa
oPFXBPRgwCM3wQZ1s2Z3jtWZ6aJvNbNVP8NxJmavTcm+SKIpKhYDRizxuuMHz2exH+0e7jBksUUs
D5/uA2C/vHltN7uR/ZErMdJ6WjLO1AkDf5KdJAlyFOVwvys8pV1TvCOZ7C63rc1fp4EMUHLckody
6sJFoyiDgcaZYqUreD7zS0kvFQQCXDVd7GxFctUdaqKEX/OsbY427BEI65KHMG1m+SMSQOCKwAf0
AKznf8WjSGSzWT/KZ0hMnZN3BBN00veugYWxupaKLoRgVZZ1IGsrDIiLbYkuIiqOcEnSXh8eliNF
6ETFwQa0rmBKKAVMJZyHNQiXsVv1pPOD33eYx2cYmHdQuAZ9utwcyVjljOkgmqxhI3ThaA34uM0s
zLDSoPZ0V7H20rMKVePemRpAqRsWz9+vZlP/VPRvGdkW6Vo3DwIOZoCh+VO+1M7CW0eSVJAj5fvE
Er7GjrdwiLW0oPmxK2LtQBV5fREQ5plalTMyJOlInKKjezqeExrmmq2wsVvhJ5edGJ2qPEwIH6aR
j0NxoasNOHESMI6frbyFmW7Ux1r/9+xPalr16GXEgzM4xdiMJl8KeiLOGrxMJXLOiqXKUGaT6T0+
o4ZN8KG0vdg0qhtvBxPy/pNmhkGrzZQjwbA+mJkkGjz2Iw/cSIVFn+nEtw9n6vE1VLgiFBAr98vh
lcsdA5arnIiI3/A9uUjmI37O003gHqLCQi050SwqfIS3se6TcEg8qwwzU/UyO6IrIjsRb3w5ZmCk
udKDhtOstjs/sXcVs/RfFu48ujzYhhezbjbOcWmSbp0s0swGRI0AmFtkNCIPpsYCKi2fOYJKcylz
g0GkrPqH58ncwILDAn7N/uejlWOiL6+GKuZvjcl87AuuE9DOj8IpZF4bfDY5H3cVaXrDqmIWlNbp
510Gm9wl99pSlEGGzs2+hK8TcsKgCMrWs+HN8buEhHp0+0fRZko00DFfW+f1TUcfMRmChBi7rqDx
CHo4Jl2XeO7ZpfdHJn0C0wkQ5MRUGGeIS1hww1TKtR2PLjOSLZVaZqK3muu/5zmwQFChCzOym3Jp
uUvoN4Nn12WUlli+IeeuZwH4CjhgcGpmbdTXRxIMEURuks1dQ9zFFbcBaShrpn4avOyPgu4TVTu3
Gv/QBU4bl1HuTjv3sOJxOGozhMblqYU5uUyHHk5PzS8H12779FpBhWJJ8hD75VPPiorWQI37o+Qe
9QuXYFr5he1UCpxEXGZ3fl2MmtcQzEvXAqrRKWBRZVNeDPBg2/31dodefvjn8eAtqaJLBwSFMyit
Tbv02vQCDYDuKoBzNEC9GcIhdFIS38ROMCsayvoUICgvyLvxAPFB7pPKnsIHoh+hyEc4FxwXwujk
IFP/rQs2gM4sHz1fAMGe8M4SJTQErRnEI6dfjpXK7bSpn4XiEYwRvo891DixTfmksoGPKoenk/YR
vIMLRJtFvvMStr3X0nQ+DUB5IZ8ZVdtV9iV3a5Cpg+9CW0OLbgcJWhkcOxU92/rbYzJh0BDueaKY
Yuavki4nOlVoktssFP5etVhqjir66aOx9fpUwj3MMOXeOBSWAE6Mk7rTjDygD4DTinv7U7eZ6zqA
+Y/J6hmg+htFoMyKi8I4MxWydT95IA7JggYm90NX3i+XJMLM143D39WBwPRGSQOb1YfrW0pRwJ3F
OK/KKGk5XTdFOUgYW+/v9Y2WC8vObt5y3LZQFLbhcXB7DqdvL4xLAjb+PrCSb6424ksVwpHuHgVQ
LSG3io8d2xLKFev6rBhREc/nSTxG1vD9S9mzCp1X2CHD5/s5+AaTZWI3JkoaLhgFrjZzV39+2bSn
nL5/NyceM4oeYt1HnY6nrgAe7dSsj2pcuUOJZk6sSQTF16jlVqaqegyZNFrkxGrIEKsNAmAuQjWB
/WV6qPk+Xe3BgvRATWm1TwAUtMwv2PEZJgkFu2pgrIkpVNi72Yahrq7hXUa250krtKD6KgSQETdT
h6ZUzUB2HhRUFYLkUVfYQDYHwpYkQwCtB2opbEKFKWh8zitsWZ6d1bDl6oPMcWbDpy6d0IEYzNFl
d8YxyBmmzwDg7Ni8EPYyGkVhxQnsZROxSEq/tXgTBYRJkvYcRI3tRQngaUfCo2EOWvM37aLaSarz
Z/CBKr8GA1IiVh/bMc3cSejZLesDhosilEUNN6XAAW9U13NFbfh6Aqm/yVnQYbLk592QO2/dN6Za
NwxwkFAvbpA7O2XjQE2RlAj673d2/5JwKYY4LDiyeNi1/yaznOZdiGX5OiOcz/5+CG0uvH5/pl3N
erLj+LOlm9ECUE68Pzzy72jOyiCbxQ8xV1NKYSH563cJTL9fABPgsyj5/01l6kDO2XfdtdTFUikm
Ch5lsy0rjiC3uGtleULoYiKdEMVdeRtRPukrq1qKKFQnEpscUM+Csdbry2AjQJQnZEbqxNwldScF
12TlEIrfyf0SDuqbco1aq82DV8a726csQ8wWQ3xgF2QfwyLRWa3FKFg/VhWAfb1LfeIG6tmhzAb8
KAfIoBtggFvahyiaq5CmELn2bB/0kkGTOf0S/Yd+lDz0r8rQca92aQ0el6gD6L2ZENz9yxwJk1/E
nW8wgh7p3M5wT7dfAANuYGpHOqpA+VlznwZfChDMplIcLivZc/VvhvLZnsAtuxHidY2GLYi/MZFP
wYiw2IpX5AnJwXbPNf2Kg1OWueps3wNuqISRYPvw409Uzot6Zo50eoe+f5eXRuSK/XgGUke8ycdi
bDZeggtbOrl9shcjyQKBciqmqVvRitRHZ2TL6hYefdhWxLCnTlmtW3zJqH8gome78t9hQFQTqAP1
n5bu3HVzgpWwSry64aaLgar3CuIgWtigxyRpIdEiMdZsmbKuuKYQ4TfMjbk984C1XVFuqNqMSg/Y
TU0IAynxGTBG+hYyDuEX/ypXcEPeIGM2iAtmPEPnEK/cgiovNg6+d6/h1aHL5ill1iEsGNPHg8Ke
Jhn0J9QvG8RDNKz5xPfV/k885yNNsCfjRBQ4uPYAmkzx0SQOI3h1XBexHrqFYUptGSlRZDcYtunI
6ouhWSPtJdCYcm4JJ5eqQQTUnndZaYPrB1XvK/Kqa1CQx1X4Oq1SBdXgbz4nZ8c1va7NLiQAr8sw
OihUJiA6QZeTF6VgqhBhWCNrDTC3sM1pYuXjVfH0mPQR1eH9559dKEcNvoQxO3/z1ssUXAG9ho4I
/gRljhCDFF/C4me+ggo+XgPlQ7lNsL8WZl4oVql7QdQ8yu/ucbm6aSEe1qcoDpofoSPQMXLtLLU7
Y27+2+X/TcxWM8zYhnn32nSqGdiDgsEn+SPzEOHZTG40fl66SWsaZ055sBQRo9dXIYmn7rPe2FtS
e5ZtfhpVx44ZnImMWFo+6fC8oUKQ5qZKbbzwoDfklsUUNvn9qk0AcaXhD5X8LhKHzaAyZObyaZXv
/K4kenFcestjSbqhbNHr4KU0UDUUFY0czY+9XxQg9ThjbyoN/CyeV07fgGulxUTyCvjOgQ9UXJ4l
4FtkZ/8rnxGBrEMdUlK2mf6Tm2Wlxc2o0simWi73qK6oWYL9hCZ9XFQ+aYNzlcv0kqJvn/Pqb724
uZdgNCipJkIDgNtehhk8kuTcvejBFAg+9bn00h+AwGsmcoL1Go6WcysV7MDAV/uIBBU28Xb1ljmK
hiYJCBG2d7hkmi8gPtmGi1b3Y7zhBDhVa1RVNc2oflKI3t+tufJWtoHqbkOP2D1PtzSEGBYVpHLT
53Y5JzVgN1dd6y5ldVqZlRjdpQxNhKW9Shi3sdQr6NlcPuXJjFzNTjtq2EptKa4UgsK/2nZqGESh
mPMHMmELeTf3fddsGyimkGuVhMlR6wSMBytTR22UCKXBoax6cc/7CWG1HB7zOdtK4mdqX9d2WAXT
K+tpVaa/80cziLlhXzqg+nch2l35HpYAPB5CZQRl54llssBD3FF2sJcgS5EtlbKk6QHOx0pF3/aO
bZzlZT75RYnz0VcQ6uMlWj0ObJ8/ggcbrqmIvNvsYRqeAjhpt/zo65sVn8kWPuwXB6He3wMKByDp
/EI/EEdx4hsEHlXPEHrpO7PfdNfR3hslYW15Dr+8oToqACwFUVw2EtKdU0wYpCiXqy7BkZrEmd1l
FAgerG5+ct0IsaE5g1PB3+l/l5X2XcJfjRMhRrqt7EIRHYgsnmroJfqCb7llr/1jtRyLHmkLdBX6
emsfvALZNAqa7d7YfPkfiaGqaFEfgz+bGwfvMRUJkxq3zgRyizsh55EIcupwDgSrc0sBQZK+TqUU
tXSugXH5Tv9kWiiJigj9/0V32nl2O23M6AVGe47F4pzfxUOHuN4jqD6fpiIwI1+lfkr/cjh0cC7g
Vogn4wo6pe6EPcD09eDAX+ZludX41Z5EalNrpAR/mqDtEcmXzR/COR3AV5YzsuSoRIyLez84xHuj
Cxe4QpXV8ZQNs6xSgNwt7rfzgPmkxsOaOfjHQ7K/YXAkVVzToAnFhs5PwX5PAmOYB9bS7/0qif53
0dJ8yIVQn9cMQSHlkmIzVfEOXyKP8d4Qi1QdB6FZJZZk2UV1/9PzRJzVeGaukxHo02YL+Ftn3XIY
piRRK/CRjMqvqOgCJySVUb87ARqAAA8U17tg9D9uynhxSjhBjl+5c/n7q9mqbkuTiFxs5YRPPuV0
CZLAmNNn1+AR4Ef1YCRCdBCJyY27lmQZkItnhC7OnCgbATe0LU7xalfdlR4ukWFFopS2Bjz3Fr83
3azvX8yrea6sH+oLB5A0dZmN3jB38hehqnoEzoNRHaKyctLRfT/U5WAIPPXKwKYFqaAnGPgae75J
btKZXOB2XcMfk4SqEYUVrzc73Geg9Mi7s3vA+Aq3YTKdMsAKtkBxQ4DMVaI0ZwKxykIRpZ3WLYAC
gcekFfrT0Ds5vp9fQM55yIJpwmGDaQ6BRXbPHPkqULbQhbgKr6Sx7C939vzUaQYcs+YQDl+WvGK6
8i1GAa2hArkul4aXRFF7Y0fdo84HzfWpRySwM7OQtKOBMCnnovTXI3VkvrIgFJsKxO4ZPcZMXtqY
E9n6VMHAD6T4cW1f1GcHsHENTzFMdRVGzz2l/0HV/E++R/Hr9lVrvYgqjjO2sU8+6jFUPf+ZLsKH
BE6k9KXTOWc8UdFjUUa0y9zDuQ/0x9CgmCDfgmq05rQoAyifqisd6zje9/aGuGYZCJN+UN13T30H
oDlv2zFp49donSlKhbfPub16wa2aJAR9qE8YlRCqPcY6ZBy/szGanb5X1rQjFMD+OzA8k589OUmw
2Xlxk4YT2/2T5AEQtSFunAZQR5Z5nONydyUWv5Sg35NCo8vydrxTo8KDyDCROIeni9LGx1USmDBp
hZ1ShaOcsI826t0TFJirifdoGTfsMUdfJu9BkjcSiRnf1610Jt5JB2JA2UmaJNtwUjTictjHYEBD
tRtXHyHPqB8DMtaZQf8sS0OTqiVv/LpDATOkpddmMuLXEMt1pAd2eWEFzEykBJuWtP/WdjtX/982
tLWeIvkx2N6EXjjyQhv68IKQfgx3xdQDdlRtQlspqpphGcL2XDO+9NWN9s4kqtnCJx6jOtJWZTg4
NragP+s5WuulcUxyI3YxzlOn91+XKXrG9om/bDjXaEPVzL+sSH+c34W7gbpKGPBTN7wZiafSOTup
WCy5BEdMUhPDmoKa9nLxAOyTorQSAPIk95mjB0m50w81WYUDBJSyyvWBv7wn2iZbhbSKLGmQlrUA
PP3WtAZTHUcO+RPekwaw3c58s+9j1xyAqDPyp7zf6ZRnCVnxoy53AnGP/0oeNW8q/K/BAI943NQH
Uo3WeSxnJ2w9AIHUhq8DTC1Dfqyevtv+socfHqe/tfaX/UbDbi8fgyzkgoFzveD0IseZYLMLovmx
iRn7+Vsl276dwqM3jif6LzZDpve6phJ5FtFg7oAh3gdcVjINzKySQ8nvAjnZKig3BHcs/lDcmcSm
Zb8749k06hbOolwQ2uE/ndVbEygNpcrIObFNtUlcB7dBRKvivvR2Zy3u5ycBfZTMtvtHWmK92xx9
jo8E6POIy9g5dytKwVKvyp7ns89Vu2MIGLwXk99nLYFJXh6juh54aLqQzwmn453DareVorwHkPaK
wgXylxln0yKVaVHjUt/pVrl8R34jKbcP1NkNlpkHNz4pwlFuCutqp8SOHKzTyo2SAlDhNS2Wk0t7
dcXm9K1R2gkReeQHez/5Am8ZrqygK+ZDs+zZB6vuFcNwDdJ4GB0gyta7cbjsIxPhrSDw88CP1VTQ
ELZVPIvouebEf2mgt/rA3J/3eYzmZDgr14sS/Kxd2Ld7q3ElM/BD7yw9O+XFVHINMarYuqKASeI3
CoXIxukCbApxHulRLfU2Xu6pErHR4DAUkkOY/4RdsGO4wWdlfQCS1a7cRTna5RHL0LCS4pccDFxZ
IXws0IAbhGv/liEqLl5S0VD+V89PXLTnpa62gM64T607yTa9TINPZ7Wn3ndyrg4rFaMSs1ivMOA1
UFWG45gI/e0zfAR9+8qGvygkH02OOxPtVLKCKsWiuZRwtql8o/j9z9NyKaH74Mxy8VBz40+LImMd
a0wEJCyrmWflg+xIVzlXfPwhKO/u3eT6qkKL2PevbTD4p/qaYwZYTCqt3QS276pLb+q9jghDuBdW
AM+BneOrB8Z/SI3EhzGFxR1fkhURPug0ljZlAeZ8Ssgm1gg9LrsAu16wBZlRdPzCmP1fAcEu18xw
50JaHEwOSG5yAt9xXy5tMQAUZJ1Hey/3cJo8FwP8fm+lz/qVVF+QfBilpEz4CTQxSPe/lhnLeZBC
zNnWD1eQ39GCUtvQEsRn7JAuJvaFY19Io9foT6aP5zlPT64WyAwdpAkWTl5m1jN6/SfeANHUhQtq
oR8Cvzw0IGawnlrYjs7O7T0h9Ppzmy4d13/fwgYlZJxTzZb00cO1cyENVPzEF4dNSgYz19uV7x4b
wEKq1Kc0VFFxIcSJ688R5t4LtwmHUOuG3nynamLPmSk/XuxUYZi8+mK0ESdSTpSoxUoxTcLqZwKu
QLwlBJTSyCjsIQsnlw3a+VNcFdMYtECSKmh2yc+da3CHqq+P7tqG6LtRLliiizoW9g3ui+eRqR7B
0EOfTYkQFLFquvDT1dxOljaMTf9Ym3ofiNJGR7zyVuuQFDJ85xkXeyveHbiq+79xO2bASpSoLh1V
102EkaL+qgAr/9m8QqaPMtuV3VhrYXM6QfntGVD1anzUACnUNksWeCx09ivwGYmVqkQf8PoKK1rm
Mz8ZLgxv/2RLYR+2nwpDoSnL9hU/G8K0Acylj226X5oJpq0PeuJq9iNCFSsa6dQng1XgemEnJork
mtZ/dAI/DqfV49tGd9AFCFyaRkgRvDgNC3GjYcnpMzFryttocGZj0nYNEDmW+JG9MRZ1P9m4FChz
LYoAsASpap2E/Ybn/IPMQxrP4Fo5wvApgimTNZ+CA5Y1Ze7lOfS3zZiH1ufU8iaj9XigDBhIyiO8
wsy4ncDLuNKs8i+nRPOymEq03vMbe/kJa1YaX5poiHxiX4DdCwb1cTXsgYGFlfJLilwAWXKzmq3c
XvoRJupC+3VSI42kzugAk9sffsLRUrEtC6E/og5tJ0kzmdsNp1s+jzyRIwuTKbcvd8ETk6c3HkfD
GFN+3YyCq9cjAVysazvEvc7UyVrOLMiozBFzFIs/omWMx6bH0e7vGT0JEjJuhs3TR0ibr1+zYXWx
mgO63fprpVJRpokZSmlIbpUG2dcu/E2AjiU9DXBuXWni9muYMdoCgRyzki46avrgn3F64NtsM0Iq
AMZw7GMouWWY/fwQWwg3apTmrVlPLDC/iZUAWZ3Yui7LP3h7Svdw2h7vwjCgp1r2WsxdU58SsMsX
fdcS1yUaiCARll9di5nERRV+2PHBNCa7QvoLItOYneqd/RcaPMe5LXdPik4JfRF6WnPICUAq1Abb
WzfRpTFoWnMqIxutVoTTeekb6+K6DhcGpMM8KDgPZ2wKazBz0squ62NVDH4W7wKAqzXNTNQildQ8
/1Q9fWOPNksN4s91BZsKQoF1GbxHQAEDG/XNsJSLqJzx/TjmGShTjoq071TEgxz5B7jtoqG60nYD
kpuUWI+sMYvIHOaXwU/jRC4uPovAyAidxB++mJbVvd1gBgCS8gDhCqdXUuBakyfyuJBgG02Q0qGf
jBO11KhpWtXOTTt2RM9SoUTudJiRPMp0jRwsTn5XnVe9Lnr2t0ENfUCrcPfdKS22h6D1DEScBRwD
9cRZ2mSCbrPI8G+mtXtSbPNTHa6voFdwVKcEEs/vFuppfaf05SV3rMXnxDbCiXXlWsmKzaf9Lecj
0olxy02UUAJb4VUbLdt1sxV8jl5YfsLbyY6sXIm2q7BdmuQoqh77xKyDJQ3yIYTQ0TtVORn8Fwf/
re+IUNPqeubwUmnAP+kiCCyiRGAA6N2dkM3GpiDI7X43dKtVGY2Ec2p1WoeyyMXQG+D1mCydrd5z
+zsF5PSTJ6jwT/ZVKS0gLVI/kvypxvFpwgXWhhD0MvRHvpDhjgsUEbd2G1ICSsYvb5RkhTNNrxPJ
fnFAOz/DNKEJcFFUA38I291T025XY950L/Hq9QbU8rniMuIeurfdToixYjy1hmZzqlUThGIt4SqI
1k0PDpMs2yO9xdKRjFz+KzXr0AYqvSQZvVgrdQ5jWBqijw4lv10lq1P3+Ebe4SqyNjagmxZmwh68
gPVHnN/nxLCgytynmKAIk8mCkAv8gamxftA0W2yqVbdKzP4ITytatzum7hKGGZYAVoYS9BRFE+Wc
/PeNWPjLdg8zwguTSpgBeXWVVZ7+ztmGC/iHoL3b51sIMTTi3GyeK7d1JQ15EH1uSSlsQ/zIOPpp
PNRehol8iXDu7Msv2QKA/ZEKcoeBfyAZ0EiDkY/GAFDYHjHsj4Asujps6Ig+td8AJT2mE8HVUoeo
vgXPgem7wg6X94fj8vKigXQtrs3Z9TUnbac2NHCnLPKUMWQ3UXKc7MRfehyeiq3bJ/mqzHKDKgpq
dyEKDvaF7vFVmw9IIMuHy/emVdn/JV3NMyUVBD758CUw317QTLXIg524o8C9zig3DbU607Vr+RaM
3CP8xPhEIBKvBHUBSnNgpXqvwOQ6Y8xiPqtW17wg2u7wIwWNjy01J1MEPXIBGPippbDtWxYX/9li
4Xs+3fpAvNv2mYreu+JwslPdxSO6nqzvLMKygWP9cHAbZVBWkSPPZcsavhUPZSAoyd0UyOYk4sxZ
Q0/3j3lsRYIGr9LecuiCc1f+P8PpH6qnda+H265i2fm3Rr2APJWySzhaGfbwaj1Rlgwjul4HheFp
53u4KYZHiH5JjPl5BZlriNWaF5DOZ1HUDOAVCI0lPW900ZCt5/Ri5RTeh5T/NT0wx6gt8Il/engp
q9nNfCzGa0++zgbCsi6ReQmjTGq08Acmu7+pAmwjIYsonfuelHHUQbgAiV1hxrKPsEmzcoN0LkZP
ILp8wLMYSLLk44zBw3M3rLmxOWlE4Cljp4y0i8r+PWsfhko2GWKDsGOppJTSGVpe9N7I/AcGwIcl
zaK6l9GUwP2zKmjzJxSKYc2zcusqJpmisEWuDPLIvnSNwhr7qErahpaVRfaPT+olF+nE/85rUs6l
cnzqbn9ihBengDR3vK5XMq5NGUZ2+nHFQUg6u6DLTI5WoG5aqrnnFceTjC2N+Cn3eW3KgmHHsf5l
EX98NZnl995B1/j347CkkceB7Tbg4nXBH2PGjhGvDkynazmeNC5xFVjhTty0JTLY+S3khTktSvzK
ZQQa2gvYEP1B/LZtyiX/O5MiR0B8YJH/lnrsOsGdRHfGrWq9gMRxr6ozYL1EP4fLa7NF4DwFj7su
4obqaGq3JwLrkO1ilep+T1VzliIms45lhC5STzQlbDqil+GuJcIegKTiGrDOkqVmSeIzE/Da6uQl
WFE+Oq48EfMR/ATAoQFETm58J1RwzOaBfIDcYvMdTzWtxbTCHmpAn7HJw80mBz8oBDgW0DyBV1xa
W0P3NBEoQXQYAhrSjzXMr0Mt3JZali2+cMAGJB08xJqQhY79sS1tsRlP4X/YDT0BlDB6RMJFLSY7
Gg9S0xCsQ187B3wT+KHnBnQ8BJiCWwKkiFBLoKf0BGdrKZKnBoq3rjNdnTedCoODYA6Skt+PyQRV
e74TZ4VNvReG7AXQRVB8wS3sau3/ug4GbjqksYdhmOCndDzwGu94q9NKgf9qccyJk6c0LmIw4rnt
B/YBT3MSOllBlFTdXOMrsuOhEa5LhC6LoF0xP6HkBGZ1KcvT/R6mveNYztYkbrqMAY2lM22Jxj22
bAxyABYnaYlbJN7SN1RziAUXviZeVcBvSLo6EalMLS34GbfoEDF4ZA/6JOWyDldluEQonbyvrUSv
KMnp3I9wbCL4caDycrfdNyt5/9Hsk9LYETyb4+Xo7mFv+9jBEuPGxqRRWNRqCl+TQwfbkMH1fQAW
lTBN0MPwrnK5IqVG1dNnyV7GjPObygOXdTUJwWJVPm7YEYfiBUhHAUapEL4A5GIpUm9GwPko5tjL
mnsg0FdpdxoHQoWO7uBKOrt6H9BMJGrfD26H5OmdcukJGir9/HMOtbPwmR+pfw13FgWA4lxguihe
D4Rxm8A5EwsNS0l1A+BvInn80u+VhqALm81K3l82ikrrjTz4s/lHyz6liPlfu/QPQ9mVtSyHNkYt
lvwMqDmOknqIKAsTjZavsitwkhSQnLnzRsHJG3VajvJqqBRP3MgIkEfVVvcyzuXg3SJewiSG96JW
tXeYN364b84rQlgIMfXlgSdSIEnhpEXiKCijr1JyrbKzwOhP5lPWndzhHrnFW1adxIuSXHB5cM9P
VWjzY2tNsjIddZuTyKOUPbwA/2s3zGCVs/IDkMOg2+z8hWV/sn/pIQDqLOiIcoRBqwkxlQytvyUM
iex7HvVqM4aaO4jW8e7TjdAMTRCAIRHsomyMFmp5xahDSCl+SlDI2G/yJdEm1XDht80qq5mUYT4K
x+gT9ecS8LBUsSLd+4gTKbA4bPgvm/h2JG0gHzRssQ280INe4XebxWsKii4uBQ7a5vjl6BWqRJw3
k/wM8wFqauJRVi42U6/TJVhf+UsKHTK7KNDqY2Y7dfei98vUNK/6Ma88px+XAR+0fV2BD+SsKGp7
yf0tFfP4FU2XI1JBiUFGow6v8hAGJttsGbj75+fwPDyjc80aVsHDz7ZyB33seeec8zDNgdpZX40e
stGY/oNPSLFKvcvLjQj/S6ZAL70jf9bMKmOD4ZTAFaOofGgDFRFunctbl2YnGeaoyqVVsfqPlx4V
jSEN0HiY84A7PiDV6bN5oC3E/tbIc8CigZIv5jl+d6LVB2IMoOYKpep+mQeh3MSnNs//8sA4sCSs
xUS7S/rXSrXOuUew+3eJUnVULCumLFoG/oPsDZrX77iKTxNzOSICDJGgrWNvdFfcogP4j2BEag2p
fkRY2ZaKYbpdN0PXvFJg9q/zXeeylMc7DG7gsU8FA6B7SY4cI+MQDmtmMEp3gE2Rfa2W1k3Pta2y
xpSdvkOlbe67lJEPCFGDFkpaO8lKVqcpTLNvQWcpcqOdGGk1TcjXlY6a+m3cvHEJcDTKrwwQChrX
xBmMacaXyB4NQHcLiWmcSzGvZUi3qbty6ew6hEE0to6mugZ6dfsXaYJbuVkFsOa7kBL6FxHXk7ML
ZS048cykFIhXBnP3eBkrsftQnXOUXpiFDxbtQ1mVeUAKj9bdTJIAo1V6pH8BrcTtDMwSUAc2dHPw
AGwnfUtm4ru2DCw0MxvAYWkENUAf9isX8tQuLGz/y3qKToqDo2XBvZesOL5xi77TGe3qf/kIgVkx
MLJa4yPiGUrE4Kjb2bu4UjRKVJcr+2oBeYPZtC7enAuok9mbIUaVPPhCsrBr0EAIQnW/yu9CRwLV
i1H3h85FLO6EjOTVrCpk0H+V5/s7sIaQl8RJRPI0bcxF5inVwYiQvxbdIGdKHdNQ7CtVVJ4pvPy0
eKHQUVrPO1+yN8HY5Q31eQUKWkABDaFdoc+z3bUtSBSXXym2pX6p76edQfeycM3Mw073ridBr2D6
ct6hQqTko0SpWHNO+O5FGGJYfvMWnWxmEXZH2qoAYu1FrXUI5lOExpoaEJIzEzgAV2uo0UDQGpoV
UupBkA0rGfu2+Ql/nlskWzB7f5F43gS2y9p+OFdlRint9hpBNpUIabrhplENY7d7P7dbLtyWNyK4
zeW0U4q6kXHBbqejBxdtd0SheGEqGzKicByqZri8PPD5gsy10Z3UubwBfvZR6Xtr+5sViNjzeJ1F
eNsLluYAHbRwm88xDSp4zw1pX23GZ4+EmY3oHCGQXivvCC9fVl8XukS586pYGeeiqtch/6ad18F6
2a4bTPayNfsz66/BmSxBoSkanmTPCE+SbB4IAwGqusExG5GOdehICidcZUGt0XnkN+RPBp+4Yw/L
d06zRaRRPXaRU6wlBsCbEyOAZSNi0mD7u41Aoo+HVBsplYu2HSXIAP6jtwGUXuaauj57OugGd/n+
aq1TtnCoSeF4LfKrBj5nZuQhIzW4wmdskbUggsc2uE8TFv0cTUtEP1pnAqBMf37Q3+IDnDgFzHTY
Gc/6navOzRjdWibYHegflfu1D97yTdiE3u35WGHrjjmBvzD1Z8vO/xyynncVhI1SAiRNFhAM1KJr
IhRkPdKQbvwGr8CITB6mwksLvDFAe0T6CsvFeDtl5HZhOjCY9xw1w2DkHI6/Q7h6VQLPgHCFzUbM
WARyBLDg9Ql988XcqfGoa67Vx4gGOPzELNSef6dThCfek34JUATVtuNhdNbFTygbdS+3N2x1ASZJ
cXPvsv3VVCVwXSC3ev6eluHZP6kgEwKuecAozEjfc1EJiIAY71pIPWU6zHHwH//Wf39BvXMWelGN
B6YYYIEUo1LkIC8OnExIj42Y/EJ1f/j6MV9looOFCRqmgSA/Myx70iQLDg4lfYRgo+PkI2B5jrFO
VkZ1YwRSWXDWWOTnl9i7yMs3jNmNsT3RoDtg/s9uMhrfnseSFTYJOG0bvEJ1NBPlwmEY0sMlAjlv
aTyF0PDZHloKlWe8NBd2TXOjVxhnK/DU9iFITOCNjP8+Eog6g6SPBpbBf8ozKlCvNbFMc0JWJONJ
SLkLJT5uC1B0jyPPE1f5duCda3zsd8gGmX7eRY0LE6rT58A6eBwOYxURwflu+MoQRDXr+F9vwddw
5+W3FnS35XEGeTH1+1oLSVwA7pLpuCxdWnlDwDT1Rm3/Di3nIdhVEqgbQMppJa3kosw7fACmL45k
X4Tc7PaOL9Dp/srWjgM+LmcN75vZ7LdZx2ucWDsLBO0ikQhyd9JNXYPQFJPyUR+WlWcJ2n+ZkEp/
Y2foZ/aFf2rKT6Lim6IfPU+iAsHrg3M61htEHR2b2P27aQu1OhbYRXB2OvZETd1dI5tMYY58iJlU
Dw4VDsDX76xxMRTM8ag02Wt3rRGB8kmIqRps/wN/lS0P4GEQJg2UI8GRKHF0mnCyXTbi90LX3TPI
UOq+tP9KvTpGhV+Zz+PKD7DzRgrgBni+BZdr86iPtYGp2em+diTxD0FSEy+uha3TB5cOp5yP76FI
LFmMImx4q9g5F8W5RK5CwxHZHplrRq+t6HMs9rDrwPJfWJbSfKUNuINemi/A+0/mrBYvoQ9mNj77
yHVg5wmEWiuFn6w7ViARSZfNDj/GIYuivf1pUwPIJWKyvrTGpOJsFs/DkSoukUpiykXx/ggUaZHw
No/8rLZvAVUCZReN+QVjw/iPcxcCovc/cBz8fQeccAEpPEdbvaGzcNR5Nw3fWyrHg1bUPbxxhu46
cyicH+JF2rld2mZXwoboHgrauiPIzozZsj4KYHaii+4b6ZRiV488+iUKjfXNtE+zZteSDWfbm34J
o+h4ZndRX8sx2gYEnA4vLzPVZdUSrfG8KbQOeCIb19otYRPIFbB6NN9By9Lg/aAnpAfrU6JqADd2
xHHzlgMLQKET0lz2qb0Q98zF2ikkzKmQIAjSEAn5G5fNEVwzXy7Pv4xbsMFEcMCyUkTzPTU7GdfF
8/A2K6Jsf7i7mGiHFwE4aHvjR97xkdY3jFjw9c6nA/yxAsmkP/4zc5zZKknmmMkert1QjGfX5mpO
xVulHaWJ1zA2aetibdcMGGXco5waE9VPC22m3NzGQ1oBJvt75IyDDY3zNnZuKNoMtfBYgRhiYV8K
+G7MHIagnoH1DTRJK3pH8tjoilWO7hWHweA50doPoDDhCxwyZcQf8f2gtgyHXkVu9z2eaBFY6x94
xqQ4fKP4eQDTidQzCeTSLFaRlj+/fU+HQf6VNEY6EUasVmV5yrQkYdrC5DJ+ixZwMPZNDqwxeBhT
9PyRoOyscq56icQ1elW+jvY62GSKeW4pQG9rYVGDVIQZt7iiMvmSaVat3KqTGpzkYKv+he+b5MKP
EtMJo2izfVbhUxI7aao8P9T16Dy4NlmYXU7RIeBuRm+64i/42UdLjLLxf63fY4p9ichXNH+OP/V7
8JHRD/Q35jv4E+WXdj9/51yr6epNiO/MPiZqiYxHMZl3kLROk6IYWHi+Wew1THa0t42tlHSn+O7S
RnsJS9klYs0x0Kd7fALkn1IOREcn1mxWVJOdLZy+sr5w8qWN68b1BSU72kjdOd5CoXhs164RQMoO
k7pLfB3WCa2THYjx34EJl5CbP0jJK/8eiYJzFG88uqKdcOYlcYRGzMH/3OG2aOlMDqFI3a1+uT7s
mzIFGstrPXw9JqGUTgzu4pvksbLBvm9U3ymptZLO4AlboFpxrcg1agsA1AbKpG1OL1dhIqVSyXAK
tN3ph0F4A44kMtrFKQM4wNHA6cPcnOSZaGHivu8MmDMkZLIEJHusjfr0GbgW2TVrx7s0iTp9eQWJ
c6bZ8Pcx11DlTpPHcaxNf3dkOu56rzi9tx7cBONTZd29UxbLTaXwG0A6Ucr7REaRV00a4cCNAKtR
eHvRtpx0qVlndRd/k3/6Qx6bqOeTpzHEqnv3expwWa+M824DbCej0Y4SlC+fmulNiIBG1HNDMdJQ
oAluwWk9CBgDQvSH2N6jLcbjcpnZHuCRX6Sa7ZnxgeZ4LtAVj56uR4nQ8TIIrTpUEM+NgXoPd5Z8
CfkAB+idKIuCNzJiDb98zv8Hs/6T1bo6bmlLhOQC8IzzzlHepztEUJyA/kwrwT1S3nAeHsHCfOo2
3/mNTSQkkXiV+rxf0UtF97Lbehg/nsmnxRRjXpE5l3V8tNOQlr/w3eIfcElJr57FXSMjjxZoWg4T
R9Efed/ZefDeobcGNpZVpdq2xYyYRDi8rrNNXFu3P9k6RHVGhdSJ8993TqcJIM3s6o0LMA9Mv8jA
cfS7qYth4UKTQLTHSlvp1Cs5u4Y1gTJws0wMIkOSZnv+U6zUykQywadtyCmu8JQw54uzXFVoQb02
Enx4NoQCmyK/3yCJrOBB6P093SAvhnXB1paS/glQ22wY0Qo83qe2O3Ob4zUZK0uypsCI5Rh25M3f
lTlGqFbBiVgST8fAaII+3v48InZUzH5Lz7D+zHsPvf7l9FWYfp/wZQ9nhxVOvulhKlGBg4cDnls0
CFFGu7v15CvH6i+ZnEtLjItomsuhhxeqqRZS2kE4VN4Y+jjDUme1zsO8Gck4ojBUqBUVJ7oIsn9I
+FPj9IISF5DGejTWySCPoRlac31Cjd/hWuBcI1xlwwGABTMOyHxnHaU8E+6nreetBDHfVkMkQ8R1
WSakmax1tF1kmN5IHKWMyB5CYn+PXmGPUq9/my1pz6Z86667eMp3BgX7yI+Vou9FDjJFwVly5mN/
iZ2+syfiUt6jna4/NyfILNdLF1Dm6LxeIJeqO3TMgu65SQcPMd2SbON1VDfv7xrn8m1jowwzTj/7
Npj6hlUt+spbFKLLoepp3e1rk+2OEO60IZxdesLV7l7VLXyltEtpdRsSx/m/K2L3/LBJHFFVhUUX
jiQLXs3+lCiO4ml7LFKUAk1WBv7O3ZEv5Wz7y7I64Rfu/ypGxFVzHlVdpwxvM18zw5R3lAiWzg1l
SS2Srd5ogWDp+7wJfHYUqakIpo84vSGBdNZhNxQ6zRnK+WrWRtYZ4euT0Ngje3M8P4pLjRj5huE+
BNTOYVtfzBhdUT9FPS19mRgGkKO4H+PpyZrXZx2GgBqQGEPn1qRZ0Z3Jqy+mIFO+D9f54E73nYAH
t7lPxeUrJ/0hKrDQ9aClbGEAzDlpc5V04pzq8b94o002Q7no18WpSeZbRNxHwb9cBD0fvNeAMzt1
LlMUy1HF8QPZmSxnttB2bK/xZ+LN38zh1mcFWjs9OfFY30tTc3y/+ctn2RKFhl8Xrisbqzd5qPnv
Kjxh9H1HhE5xSRdudOASNU7JOHuM1kWtcXFW45ujuUxC3TiA6S6jyuCXLzkQOkf/ddY5SU82jvu7
JL/j21onwIXM/17Npvb/2HtAjoXm8FfnBrEgixAJ8WPGX4cdy3QU/Rn3ojzKyyT8zFZ1AKM6LlYi
i8H/li1GDgM/imrIKEHlEqNrhitkY2s5dJtPDqwqfZmY1XqZ3iil6s5bNbUgUbxbPush7GGUVpis
GVMcGWgHSNqd8BWtrm7Zi5my9Q6E21xw9Ti64hpwLvvChRKuCZtJkT+59NDIWRcLb8rk/FHCW+fI
0yIIETYywu7J60/IPSWGqH0g5IaPemhnSIZmxUbRvh3vtMWr6s8rbPboEReXFLn2NrnMw3YA9SaK
KMp65Ji5877mzjcXg1IkMLkQQX1w5RAostaHEvN/6aNtCwm6Hvc1zP7Yw65qAc7AC0Ox+pEGMetb
p0I3rhYQWIrrUlwF4A01/1e30dow51Zv/Hus11dHn+AxCnRX9UJjfJ8oHcHoxblJtnLj0aAxsOEe
CtEiTjk6XVjRKQEit+aldqxWgdVif54N8hquS4FsBxHqUwwUmu3Hep4Id4ybEFAmtfUc/4bjNYL0
YZica2fIKyjzOuVD2ZBQ/dsFFi2VKI1PxJqKKd97sYf/CZeRVbj0UxXpIArexBnsGv59t0t52EH4
NRY3HsHbQ8EV10GqGxxl3YO3wwkia1N5j/px0toWD66mGGR8PSMTbRDnZCxougeDF+H08WItJPYE
lHXrWXsnHrNzBNtWDJj9T0UbBTKgiDupCduGtNJGvNrjhufD2wAgMGhEmxRBccsHM+G3iDrLiQJ/
5QT6ae0MLtsQbfanfqrYCJBO8oNFs8usHr7lB0Bvj0vU/JUyoAwKkb5sv59gUIpJ7X1uXiBdwI7M
YnwYNjqy7Jv5TLCrItfbAwDapygOTcec+5ZBz+cZ8EYmB2+xgR6ci5Il8cg95umwCeaBpHmm/+uJ
vRic7MgI8aXL1+uTpqVLBX7JrSWwy1Gi6uqHO5a3ZJgdeekxq0EuS3QO/B8FSZbTP5XEI2OvdNWK
VA2EOi1OhAIaHYfHjM16py7tXdnAhgRfsOGCIPzY+uC5Y2QbgNQdmIKjeCa1UNUGTvnaOy+x+heZ
npLrK06bWkQ0AgXyPma6CnJKCKYz17hGSSsDh+1DFC/4LFGsI7rzILOuIKhEOZ5sbKcgCtzw+m/X
u8Y96SZdrRj+c3le8ufB7AEIl0wQbYHw1o4hpc4MFU4w9SfXEqX5gMBbM3/JlpyQabDnJpgagghe
XYtbsVNCoYdwB0ANEXeIQyO75SJTHZjafzsMEZ6qkXtia8WZeujNvbXK6h1JoTPwuV5Oie7tHyt2
GStFQR5c3G/10cp4MK0DQtuHzKvORc5hs82kiPsM2cAGda31FbFRW0rIXDr2JxlK2Aj5j74Xe6cY
wU+fnrBJQCc3YsnD4E9j2TEqfzveSmCIVGR8kGB2s9yYNS3c63dHcJOU7lmKu2NE0lnUVCryEPqw
eyLdrUByd/y86X2RTltUBFhKa+vbj86pH7j4ngF6tdnWznHG+16cSgfjL5yK7zM6G6KIFRAmH26p
VXY1qPT6whNdIFQ1ZYxuSV9bvSu5LNVcq9f0svWtGn8qm2rqGor731fMaAE4ckvPEbSdZRX50OMp
xrHnnQO8jExfIIRMj2fHaLIJ+UNX0o9+9uWTFkk2esW2r+H0MRReVaeSR10WQf5oqTl3IZPhnsao
LFRWXa4Fa2OI0pnjXD7tldxPi2SnoG8hjS1z2TUZ2kf3kZDsOzpT4pRpSHS2J2ZMDmEeYLfdfV81
5sv3UN3aLCVV4fm19UgWAzFWaWUaCMzH88Xlf7j27WMFdBi1ogwWN8LFEC9aD+dpZkMsiNukIXwz
pbYorKZIvN9RsPaW28pRGeaHqWyu5SjTii8lrtK1NymXRa9UfKTMkWVXTB1UQ9A5uqf380NJQxev
X3wpyVBiBo4NthroSQIu8ZiJaCaEIPAO026fbGL/8jXQV03Lc4R9d5sE/1b6In00r9nxuA/hU71W
x4NIYu9JeADgy0B519ltHwDygWjtfVMWjfXNHwgiiNGMV9qwZ+4rLL8jmhWUFgBAulC6JRwXwDV/
LWPWp/PiRNoN+zYtKbKOXlds5ckobPG4rbCCWkDoMVHDWVZ6Ges3kbSErxQGi0J77cVUA7v8eML3
216OZ017hf/DiUMsjm5FQHvq9qBSwUXDSr//4lFW9hj96rWweTrJFmWlLoGEcuH2TxOl7b4UGgZd
8w7H+5niLYvKNnwjsbBJuA0BwkHTM2dhjCdQ5Lgc37YlmkCaSj4KKWF1zfjC/uSb5vSMZTaEngUh
rhoCibVNyRQO9jc3GE+FUGDl/Cc7VOcrxcXMn/CCSiUurk0Fd5EV3zk7caQhB4HvAjLoondAM3rN
QtFI1zuhHUE0Q6/PwOpwJk0tn87CHtPt2pQafmwYOar2XNeOfdQ3opFYXXQ/1DnKHRQG0FqYPWbk
mbwlvMH67bY0Faf6G69AzRTuVm2fPWQ+tJ96esHbOyaSftEYOKBmVUkrL92yvlEK9JmTBY2OB3Do
Smv72XsHP9OalQwjQE6N4oWfjroirQOKpgN9oY25k6JQT0qkSOQ8EAtj49UombXMfZWGSPQOD8nW
T5xeAm11sDckEfTgAht4PWiN6h/optjq4x8Gkyzk48Led7ImOpwvVuw9MRMP9EqddbLnQPx8Cthl
y7+WK3DoC56VknMEalPmetQ+5OA1w2ZnLVPDqySUvGgdVkw80rUD7xb+PiG05r/20OnLjD1i33rC
kzZkhlqUB8gCYLt3lHM4D9mRFRc/TeCWFBfCPWI9s1JLfv51qCQR9awAxw1Tmn8kPQ3meV8nG+28
NDRNrovK8RwJZLtWxvyImZc3Nf5nSU5WyTn82QAjB3fHzXWsiz+IGbbYwOXkZjwKSfIzdwaZnfy6
lYMLgtBwWF35x3tRlJUsYxblxmLRqpOzLjwNPsv21na/OSTGm+JrDQVNcP4UAStDLuwG3Y4NVTR+
RyzdPZzBjFHECJzaFzPF+EAKmjSHnsjJ1FCye8hiItCt+U5Betewv2Sy5pU3AMBWhkRCd3EFH8ud
L1Gf0FJfW0i7zuql6ma1NLLbs67sjXjCqbmF23a90u7+apG9aW+2BH+Ofv1inYdATh1vx1utXdeR
X0XZMoH11SWjsSBZ0NWIwbwCbc9+733llD2frIU9eb2UQs0QQeiETf0MPodT+36ru6mz5q2j1/yW
D1IK0zm6vUA9p4M5o0Gb/jLW/LjstTB2iWwDqTdIT6Hq3O47lmZ9m0uZRUU9t0a49WmY
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
