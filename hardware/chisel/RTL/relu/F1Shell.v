module DCRF1(
  input         clock,
  input         reset,
  input  [15:0] io_host_addr,
  input  [31:0] io_host_wdata,
  input         io_host_wr,
  input         io_host_rd,
  output        io_host_ack,
  output [31:0] io_host_rdata,
  output        io_dcr_launch,
  input         io_dcr_finish,
  input         io_dcr_ecnt_0_valid,
  input  [31:0] io_dcr_ecnt_0_bits,
  output [31:0] io_dcr_vals_0,
  output [63:0] io_dcr_ptrs_0,
  output [63:0] io_dcr_ptrs_1,
  output [63:0] io_dcr_ptrs_2,
  output [63:0] io_dcr_ptrs_3,
  output [63:0] io_dcr_ptrs_4
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] waddr; // @[DCRF1.scala 65:22]
  reg [1:0] wstate; // @[DCRF1.scala 68:23]
  reg [1:0] rstate; // @[DCRF1.scala 72:23]
  reg [31:0] rdata; // @[DCRF1.scala 73:22]
  reg [31:0] reg_0; // @[DCRF1.scala 79:37]
  reg [31:0] reg_1; // @[DCRF1.scala 79:37]
  reg [31:0] reg_2; // @[DCRF1.scala 79:37]
  reg [31:0] reg_3; // @[DCRF1.scala 79:37]
  reg [31:0] reg_4; // @[DCRF1.scala 79:37]
  reg [31:0] reg_5; // @[DCRF1.scala 79:37]
  reg [31:0] reg_6; // @[DCRF1.scala 79:37]
  reg [31:0] reg_7; // @[DCRF1.scala 79:37]
  reg [31:0] reg_8; // @[DCRF1.scala 79:37]
  reg [31:0] reg_9; // @[DCRF1.scala 79:37]
  reg [31:0] reg_10; // @[DCRF1.scala 79:37]
  reg [31:0] reg_11; // @[DCRF1.scala 79:37]
  reg [31:0] reg_12; // @[DCRF1.scala 79:37]
  wire  isWriteData = wstate == 2'h1; // @[DCRF1.scala 89:28]
  wire  _T = 2'h0 == wstate; // @[Conditional.scala 37:30]
  wire  _T_1 = 2'h1 == wstate; // @[Conditional.scala 37:30]
  wire  _T_2 = 2'h2 == wstate; // @[Conditional.scala 37:30]
  wire  _GEN_5 = _T_1 ? 1'h0 : _T_2; // @[Conditional.scala 39:67]
  wire  _GEN_8 = _T ? 1'h0 : _GEN_5; // @[Conditional.scala 40:58]
  wire  _T_3 = 2'h0 == rstate; // @[Conditional.scala 37:30]
  wire  _T_4 = 2'h1 == rstate; // @[Conditional.scala 37:30]
  wire  _T_5 = 2'h2 == rstate; // @[Conditional.scala 37:30]
  wire  _GEN_11 = _T_5 | _GEN_8; // @[Conditional.scala 39:67]
  wire  _GEN_13 = _T_4 ? _GEN_8 : _GEN_11; // @[Conditional.scala 39:67]
  wire  _T_6 = 16'h500 == waddr; // @[DCRF1.scala 125:38]
  wire  _T_7 = io_host_wr & _T_6; // @[DCRF1.scala 125:25]
  wire  _T_8 = _T_7 & isWriteData; // @[DCRF1.scala 125:48]
  wire  _T_9 = 16'h504 == waddr; // @[DCRF1.scala 132:45]
  wire  _T_10 = io_host_wr & _T_9; // @[DCRF1.scala 132:27]
  wire  _T_11 = 16'h508 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_12 = io_host_wr & _T_11; // @[DCRF1.scala 138:21]
  wire  _T_13 = _T_12 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_15 = ~reset; // @[DCRF1.scala 139:13]
  wire  _T_16 = 16'h50c == waddr; // @[DCRF1.scala 138:39]
  wire  _T_17 = io_host_wr & _T_16; // @[DCRF1.scala 138:21]
  wire  _T_18 = _T_17 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_21 = 16'h510 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_22 = io_host_wr & _T_21; // @[DCRF1.scala 138:21]
  wire  _T_23 = _T_22 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_26 = 16'h514 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_27 = io_host_wr & _T_26; // @[DCRF1.scala 138:21]
  wire  _T_28 = _T_27 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_31 = 16'h518 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_32 = io_host_wr & _T_31; // @[DCRF1.scala 138:21]
  wire  _T_33 = _T_32 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_36 = 16'h51c == waddr; // @[DCRF1.scala 138:39]
  wire  _T_37 = io_host_wr & _T_36; // @[DCRF1.scala 138:21]
  wire  _T_38 = _T_37 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_41 = 16'h520 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_42 = io_host_wr & _T_41; // @[DCRF1.scala 138:21]
  wire  _T_43 = _T_42 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_46 = 16'h524 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_47 = io_host_wr & _T_46; // @[DCRF1.scala 138:21]
  wire  _T_48 = _T_47 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_51 = 16'h528 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_52 = io_host_wr & _T_51; // @[DCRF1.scala 138:21]
  wire  _T_53 = _T_52 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_56 = 16'h52c == waddr; // @[DCRF1.scala 138:39]
  wire  _T_57 = io_host_wr & _T_56; // @[DCRF1.scala 138:21]
  wire  _T_58 = _T_57 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_61 = 16'h530 == waddr; // @[DCRF1.scala 138:39]
  wire  _T_62 = io_host_wr & _T_61; // @[DCRF1.scala 138:21]
  wire  _T_63 = _T_62 & isWriteData; // @[DCRF1.scala 138:49]
  wire  _T_66 = 16'h500 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_68 = 16'h504 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_70 = 16'h508 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_72 = 16'h50c == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_74 = 16'h510 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_76 = 16'h514 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_78 = 16'h518 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_80 = 16'h51c == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_82 = 16'h520 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_84 = 16'h524 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_86 = 16'h528 == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_88 = 16'h52c == io_host_addr; // @[Mux.scala 80:60]
  wire  _T_90 = 16'h530 == io_host_addr; // @[Mux.scala 80:60]
  assign io_host_ack = _T_3 ? _GEN_8 : _GEN_13; // @[DCRF1.scala 86:15 DCRF1.scala 104:19 DCRF1.scala 119:19]
  assign io_host_rdata = rdata; // @[DCRF1.scala 87:17]
  assign io_dcr_launch = reg_0[0]; // @[DCRF1.scala 148:17]
  assign io_dcr_vals_0 = reg_2; // @[DCRF1.scala 151:20]
  assign io_dcr_ptrs_0 = {reg_4,reg_3}; // @[DCRF1.scala 160:22]
  assign io_dcr_ptrs_1 = {reg_6,reg_5}; // @[DCRF1.scala 160:22]
  assign io_dcr_ptrs_2 = {reg_8,reg_7}; // @[DCRF1.scala 160:22]
  assign io_dcr_ptrs_3 = {reg_10,reg_9}; // @[DCRF1.scala 160:22]
  assign io_dcr_ptrs_4 = {reg_12,reg_11}; // @[DCRF1.scala 160:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  waddr = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  wstate = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  rstate = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  rdata = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  reg_0 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  reg_1 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reg_3 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  reg_6 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  reg_7 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  reg_8 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  reg_9 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  reg_10 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  reg_11 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  reg_12 = _RAND_16[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      waddr <= 16'hffff;
    end else if (_T) begin
      if (io_host_wr) begin
        waddr <= io_host_addr;
      end
    end
    if (reset) begin
      wstate <= 2'h0;
    end else if (_T) begin
      if (io_host_wr) begin
        wstate <= 2'h1;
      end
    end else if (_T_1) begin
      wstate <= 2'h2;
    end else if (_T_2) begin
      wstate <= 2'h0;
    end
    if (reset) begin
      rstate <= 2'h0;
    end else if (_T_3) begin
      if (io_host_rd) begin
        rstate <= 2'h1;
      end
    end else if (_T_4) begin
      rstate <= 2'h2;
    end else if (_T_5) begin
      rstate <= 2'h0;
    end
    if (reset) begin
      rdata <= 32'h0;
    end else if (io_host_rd) begin
      if (_T_90) begin
        rdata <= reg_12;
      end else if (_T_88) begin
        rdata <= reg_11;
      end else if (_T_86) begin
        rdata <= reg_10;
      end else if (_T_84) begin
        rdata <= reg_9;
      end else if (_T_82) begin
        rdata <= reg_8;
      end else if (_T_80) begin
        rdata <= reg_7;
      end else if (_T_78) begin
        rdata <= reg_6;
      end else if (_T_76) begin
        rdata <= reg_5;
      end else if (_T_74) begin
        rdata <= reg_4;
      end else if (_T_72) begin
        rdata <= reg_3;
      end else if (_T_70) begin
        rdata <= reg_2;
      end else if (_T_68) begin
        rdata <= reg_1;
      end else if (_T_66) begin
        rdata <= reg_0;
      end else begin
        rdata <= 32'h0;
      end
    end
    if (reset) begin
      reg_0 <= 32'h0;
    end else if (io_dcr_finish) begin
      reg_0 <= 32'h2;
    end else if (_T_8) begin
      reg_0 <= io_host_wdata;
    end
    if (reset) begin
      reg_1 <= 32'h0;
    end else if (io_dcr_ecnt_0_valid) begin
      reg_1 <= io_dcr_ecnt_0_bits;
    end else if (_T_10) begin
      reg_1 <= io_host_wdata;
    end
    if (reset) begin
      reg_2 <= 32'h0;
    end else if (_T_13) begin
      reg_2 <= io_host_wdata;
    end
    if (reset) begin
      reg_3 <= 32'h0;
    end else if (_T_18) begin
      reg_3 <= io_host_wdata;
    end
    if (reset) begin
      reg_4 <= 32'h0;
    end else if (_T_23) begin
      reg_4 <= io_host_wdata;
    end
    if (reset) begin
      reg_5 <= 32'h0;
    end else if (_T_28) begin
      reg_5 <= io_host_wdata;
    end
    if (reset) begin
      reg_6 <= 32'h0;
    end else if (_T_33) begin
      reg_6 <= io_host_wdata;
    end
    if (reset) begin
      reg_7 <= 32'h0;
    end else if (_T_38) begin
      reg_7 <= io_host_wdata;
    end
    if (reset) begin
      reg_8 <= 32'h0;
    end else if (_T_43) begin
      reg_8 <= io_host_wdata;
    end
    if (reset) begin
      reg_9 <= 32'h0;
    end else if (_T_48) begin
      reg_9 <= io_host_wdata;
    end
    if (reset) begin
      reg_10 <= 32'h0;
    end else if (_T_53) begin
      reg_10 <= io_host_wdata;
    end
    if (reset) begin
      reg_11 <= 32'h0;
    end else if (_T_58) begin
      reg_11 <= io_host_wdata;
    end
    if (reset) begin
      reg_12 <= 32'h0;
    end else if (_T_63) begin
      reg_12 <= io_host_wdata;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_13 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_18 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_23 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_28 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_33 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_43 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_48 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_53 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_58 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_63 & _T_15) begin
          $fwrite(32'h80000002,"Write add: %d : %d\n",waddr,io_host_wdata); // @[DCRF1.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Arbiter(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [63:0] io_in_0_bits_addr,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_addr
);
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 134:14]
  assign io_out_valid = io_in_0_valid; // @[Arbiter.scala 135:16]
  assign io_out_bits_addr = io_in_0_bits_addr; // @[Arbiter.scala 124:15]
endmodule
module Arbiter_1(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [63:0] io_in_0_bits_addr,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [63:0] io_in_1_bits_addr,
  input  [7:0]  io_in_1_bits_len,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [63:0] io_in_2_bits_addr,
  input  [7:0]  io_in_2_bits_len,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [63:0] io_in_3_bits_addr,
  input  [7:0]  io_in_3_bits_len,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_addr,
  output [7:0]  io_out_bits_len,
  output [1:0]  io_chosen
);
  wire [1:0] _GEN_0 = io_in_2_valid ? 2'h2 : 2'h3; // @[Arbiter.scala 126:27]
  wire [7:0] _GEN_1 = io_in_2_valid ? io_in_2_bits_len : io_in_3_bits_len; // @[Arbiter.scala 126:27]
  wire [63:0] _GEN_2 = io_in_2_valid ? io_in_2_bits_addr : io_in_3_bits_addr; // @[Arbiter.scala 126:27]
  wire [1:0] _GEN_3 = io_in_1_valid ? 2'h1 : _GEN_0; // @[Arbiter.scala 126:27]
  wire [7:0] _GEN_4 = io_in_1_valid ? io_in_1_bits_len : _GEN_1; // @[Arbiter.scala 126:27]
  wire [63:0] _GEN_5 = io_in_1_valid ? io_in_1_bits_addr : _GEN_2; // @[Arbiter.scala 126:27]
  wire  _T = io_in_0_valid | io_in_1_valid; // @[Arbiter.scala 31:68]
  wire  _T_1 = _T | io_in_2_valid; // @[Arbiter.scala 31:68]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 31:78]
  wire  grant_2 = ~_T; // @[Arbiter.scala 31:78]
  wire  grant_3 = ~_T_1; // @[Arbiter.scala 31:78]
  wire  _T_6 = ~grant_3; // @[Arbiter.scala 135:19]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 134:14]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 134:14]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 134:14]
  assign io_in_3_ready = grant_3 & io_out_ready; // @[Arbiter.scala 134:14]
  assign io_out_valid = _T_6 | io_in_3_valid; // @[Arbiter.scala 135:16]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : _GEN_5; // @[Arbiter.scala 124:15 Arbiter.scala 128:19 Arbiter.scala 128:19 Arbiter.scala 128:19]
  assign io_out_bits_len = io_in_0_valid ? 8'h0 : _GEN_4; // @[Arbiter.scala 124:15 Arbiter.scala 128:19 Arbiter.scala 128:19 Arbiter.scala 128:19]
  assign io_chosen = io_in_0_valid ? 2'h0 : _GEN_3; // @[Arbiter.scala 123:13 Arbiter.scala 127:17 Arbiter.scala 127:17 Arbiter.scala 127:17]
endmodule
module DME(
  input          clock,
  input          reset,
  input          io_mem_aw_ready,
  output         io_mem_aw_valid,
  output [63:0]  io_mem_aw_bits_addr,
  output [7:0]   io_mem_aw_bits_len,
  input          io_mem_w_ready,
  output         io_mem_w_valid,
  output [511:0] io_mem_w_bits_data,
  output         io_mem_w_bits_last,
  output         io_mem_b_ready,
  input          io_mem_b_valid,
  input          io_mem_ar_ready,
  output         io_mem_ar_valid,
  output [63:0]  io_mem_ar_bits_addr,
  output         io_mem_r_ready,
  input          io_mem_r_valid,
  input  [511:0] io_mem_r_bits_data,
  input          io_mem_r_bits_last,
  output         io_dme_rd_0_cmd_ready,
  input          io_dme_rd_0_cmd_valid,
  input  [63:0]  io_dme_rd_0_cmd_bits_addr,
  input          io_dme_rd_0_data_ready,
  output         io_dme_rd_0_data_valid,
  output [511:0] io_dme_rd_0_data_bits,
  output         io_dme_wr_0_cmd_ready,
  input          io_dme_wr_0_cmd_valid,
  input  [63:0]  io_dme_wr_0_cmd_bits_addr,
  output         io_dme_wr_0_data_ready,
  input          io_dme_wr_0_data_valid,
  input  [511:0] io_dme_wr_0_data_bits,
  output         io_dme_wr_0_ack,
  output         io_dme_wr_1_cmd_ready,
  input          io_dme_wr_1_cmd_valid,
  input  [63:0]  io_dme_wr_1_cmd_bits_addr,
  input  [7:0]   io_dme_wr_1_cmd_bits_len,
  output         io_dme_wr_1_data_ready,
  input          io_dme_wr_1_data_valid,
  input  [511:0] io_dme_wr_1_data_bits,
  output         io_dme_wr_1_ack,
  output         io_dme_wr_2_cmd_ready,
  input          io_dme_wr_2_cmd_valid,
  input  [63:0]  io_dme_wr_2_cmd_bits_addr,
  input  [7:0]   io_dme_wr_2_cmd_bits_len,
  output         io_dme_wr_2_data_ready,
  input          io_dme_wr_2_data_valid,
  input  [511:0] io_dme_wr_2_data_bits,
  output         io_dme_wr_2_ack,
  output         io_dme_wr_3_cmd_ready,
  input          io_dme_wr_3_cmd_valid,
  input  [63:0]  io_dme_wr_3_cmd_bits_addr,
  input  [7:0]   io_dme_wr_3_cmd_bits_len,
  output         io_dme_wr_3_data_ready,
  input          io_dme_wr_3_data_valid,
  input  [511:0] io_dme_wr_3_data_bits,
  output         io_dme_wr_3_ack
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  rd_arb_io_in_0_ready; // @[DME.scala 130:22]
  wire  rd_arb_io_in_0_valid; // @[DME.scala 130:22]
  wire [63:0] rd_arb_io_in_0_bits_addr; // @[DME.scala 130:22]
  wire  rd_arb_io_out_ready; // @[DME.scala 130:22]
  wire  rd_arb_io_out_valid; // @[DME.scala 130:22]
  wire [63:0] rd_arb_io_out_bits_addr; // @[DME.scala 130:22]
  wire  wr_arb_io_in_0_ready; // @[DME.scala 160:22]
  wire  wr_arb_io_in_0_valid; // @[DME.scala 160:22]
  wire [63:0] wr_arb_io_in_0_bits_addr; // @[DME.scala 160:22]
  wire  wr_arb_io_in_1_ready; // @[DME.scala 160:22]
  wire  wr_arb_io_in_1_valid; // @[DME.scala 160:22]
  wire [63:0] wr_arb_io_in_1_bits_addr; // @[DME.scala 160:22]
  wire [7:0] wr_arb_io_in_1_bits_len; // @[DME.scala 160:22]
  wire  wr_arb_io_in_2_ready; // @[DME.scala 160:22]
  wire  wr_arb_io_in_2_valid; // @[DME.scala 160:22]
  wire [63:0] wr_arb_io_in_2_bits_addr; // @[DME.scala 160:22]
  wire [7:0] wr_arb_io_in_2_bits_len; // @[DME.scala 160:22]
  wire  wr_arb_io_in_3_ready; // @[DME.scala 160:22]
  wire  wr_arb_io_in_3_valid; // @[DME.scala 160:22]
  wire [63:0] wr_arb_io_in_3_bits_addr; // @[DME.scala 160:22]
  wire [7:0] wr_arb_io_in_3_bits_len; // @[DME.scala 160:22]
  wire  wr_arb_io_out_ready; // @[DME.scala 160:22]
  wire  wr_arb_io_out_valid; // @[DME.scala 160:22]
  wire [63:0] wr_arb_io_out_bits_addr; // @[DME.scala 160:22]
  wire [7:0] wr_arb_io_out_bits_len; // @[DME.scala 160:22]
  wire [1:0] wr_arb_io_chosen; // @[DME.scala 160:22]
  wire  _T = rd_arb_io_out_ready & rd_arb_io_out_valid; // @[Decoupled.scala 40:37]
  reg [1:0] rstate; // @[DME.scala 138:23]
  wire  _T_1 = 2'h0 == rstate; // @[Conditional.scala 37:30]
  wire  _T_2 = 2'h1 == rstate; // @[Conditional.scala 37:30]
  wire  _T_3 = 2'h2 == rstate; // @[Conditional.scala 37:30]
  wire  _T_4 = io_mem_r_ready & io_mem_r_valid; // @[Decoupled.scala 40:37]
  wire  _T_5 = _T_4 & io_mem_r_bits_last; // @[DME.scala 152:28]
  wire  _T_6 = wr_arb_io_out_ready & wr_arb_io_out_valid; // @[Decoupled.scala 40:37]
  reg [1:0] wr_arb_chosen; // @[Reg.scala 15:16]
  reg [1:0] wstate; // @[DME.scala 168:23]
  reg [7:0] wr_cnt; // @[DME.scala 171:23]
  wire  _T_7 = wstate == 2'h0; // @[DME.scala 174:15]
  wire  _T_8 = io_mem_w_ready & io_mem_w_valid; // @[Decoupled.scala 40:37]
  wire [7:0] _T_10 = wr_cnt + 8'h1; // @[DME.scala 177:22]
  wire  _T_11 = 2'h0 == wstate; // @[Conditional.scala 37:30]
  wire  _T_12 = 2'h1 == wstate; // @[Conditional.scala 37:30]
  wire  _T_13 = 2'h2 == wstate; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_23 = 2'h1 == wr_arb_chosen ? io_dme_wr_1_cmd_bits_len : 8'h0; // @[DME.scala 193:45]
  wire  _GEN_25 = 2'h1 == wr_arb_chosen ? io_dme_wr_1_data_valid : io_dme_wr_0_data_valid; // @[DME.scala 193:45]
  wire [511:0] _GEN_26 = 2'h1 == wr_arb_chosen ? io_dme_wr_1_data_bits : io_dme_wr_0_data_bits; // @[DME.scala 193:45]
  wire [7:0] _GEN_31 = 2'h2 == wr_arb_chosen ? io_dme_wr_2_cmd_bits_len : _GEN_23; // @[DME.scala 193:45]
  wire  _GEN_33 = 2'h2 == wr_arb_chosen ? io_dme_wr_2_data_valid : _GEN_25; // @[DME.scala 193:45]
  wire [511:0] _GEN_34 = 2'h2 == wr_arb_chosen ? io_dme_wr_2_data_bits : _GEN_26; // @[DME.scala 193:45]
  wire [7:0] _GEN_39 = 2'h3 == wr_arb_chosen ? io_dme_wr_3_cmd_bits_len : _GEN_31; // @[DME.scala 193:45]
  wire  _GEN_41 = 2'h3 == wr_arb_chosen ? io_dme_wr_3_data_valid : _GEN_33; // @[DME.scala 193:45]
  wire  _T_14 = _GEN_41 & io_mem_w_ready; // @[DME.scala 193:45]
  wire  _T_15 = wr_cnt == _GEN_39; // @[DME.scala 193:73]
  wire  _T_16 = _T_14 & _T_15; // @[DME.scala 193:63]
  wire  _T_17 = 2'h3 == wstate; // @[Conditional.scala 37:30]
  reg [63:0] rd_addr; // @[Reg.scala 27:20]
  reg [7:0] wr_len; // @[Reg.scala 27:20]
  reg [63:0] wr_addr; // @[Reg.scala 27:20]
  wire  _T_26 = wr_arb_chosen == 2'h0; // @[DME.scala 221:40]
  wire  _T_27 = io_mem_b_ready & io_mem_b_valid; // @[Decoupled.scala 40:37]
  wire  _T_30 = wstate == 2'h2; // @[DME.scala 222:67]
  wire  _T_31 = _T_26 & _T_30; // @[DME.scala 222:56]
  wire  _T_33 = wr_arb_chosen == 2'h1; // @[DME.scala 221:40]
  wire  _T_38 = _T_33 & _T_30; // @[DME.scala 222:56]
  wire  _T_40 = wr_arb_chosen == 2'h2; // @[DME.scala 221:40]
  wire  _T_45 = _T_40 & _T_30; // @[DME.scala 222:56]
  wire  _T_47 = wr_arb_chosen == 2'h3; // @[DME.scala 221:40]
  wire  _T_52 = _T_47 & _T_30; // @[DME.scala 222:56]
  wire  _T_60 = rstate == 2'h2; // @[DME.scala 240:28]
  Arbiter rd_arb ( // @[DME.scala 130:22]
    .io_in_0_ready(rd_arb_io_in_0_ready),
    .io_in_0_valid(rd_arb_io_in_0_valid),
    .io_in_0_bits_addr(rd_arb_io_in_0_bits_addr),
    .io_out_ready(rd_arb_io_out_ready),
    .io_out_valid(rd_arb_io_out_valid),
    .io_out_bits_addr(rd_arb_io_out_bits_addr)
  );
  Arbiter_1 wr_arb ( // @[DME.scala 160:22]
    .io_in_0_ready(wr_arb_io_in_0_ready),
    .io_in_0_valid(wr_arb_io_in_0_valid),
    .io_in_0_bits_addr(wr_arb_io_in_0_bits_addr),
    .io_in_1_ready(wr_arb_io_in_1_ready),
    .io_in_1_valid(wr_arb_io_in_1_valid),
    .io_in_1_bits_addr(wr_arb_io_in_1_bits_addr),
    .io_in_1_bits_len(wr_arb_io_in_1_bits_len),
    .io_in_2_ready(wr_arb_io_in_2_ready),
    .io_in_2_valid(wr_arb_io_in_2_valid),
    .io_in_2_bits_addr(wr_arb_io_in_2_bits_addr),
    .io_in_2_bits_len(wr_arb_io_in_2_bits_len),
    .io_in_3_ready(wr_arb_io_in_3_ready),
    .io_in_3_valid(wr_arb_io_in_3_valid),
    .io_in_3_bits_addr(wr_arb_io_in_3_bits_addr),
    .io_in_3_bits_len(wr_arb_io_in_3_bits_len),
    .io_out_ready(wr_arb_io_out_ready),
    .io_out_valid(wr_arb_io_out_valid),
    .io_out_bits_addr(wr_arb_io_out_bits_addr),
    .io_out_bits_len(wr_arb_io_out_bits_len),
    .io_chosen(wr_arb_io_chosen)
  );
  assign io_mem_aw_valid = wstate == 2'h1; // @[DME.scala 226:19]
  assign io_mem_aw_bits_addr = wr_addr; // @[DME.scala 227:23]
  assign io_mem_aw_bits_len = wr_len; // @[DME.scala 228:22]
  assign io_mem_w_valid = _T_30 & _GEN_41; // @[DME.scala 230:18]
  assign io_mem_w_bits_data = 2'h3 == wr_arb_chosen ? io_dme_wr_3_data_bits : _GEN_34; // @[DME.scala 231:22]
  assign io_mem_w_bits_last = wr_cnt == _GEN_39; // @[DME.scala 232:22]
  assign io_mem_b_ready = wstate == 2'h3; // @[DME.scala 234:18]
  assign io_mem_ar_valid = rstate == 2'h1; // @[DME.scala 236:19]
  assign io_mem_ar_bits_addr = rd_addr; // @[DME.scala 237:23]
  assign io_mem_r_ready = _T_60 & io_dme_rd_0_data_ready; // @[DME.scala 240:18]
  assign io_dme_rd_0_cmd_ready = rd_arb_io_in_0_ready; // @[DME.scala 134:21]
  assign io_dme_rd_0_data_valid = io_mem_r_valid; // @[DME.scala 215:29]
  assign io_dme_rd_0_data_bits = io_mem_r_bits_data; // @[DME.scala 216:28]
  assign io_dme_wr_0_cmd_ready = wr_arb_io_in_0_ready; // @[DME.scala 164:21]
  assign io_dme_wr_0_data_ready = _T_31 & io_mem_w_ready; // @[DME.scala 222:29]
  assign io_dme_wr_0_ack = _T_26 & _T_27; // @[DME.scala 221:22]
  assign io_dme_wr_1_cmd_ready = wr_arb_io_in_1_ready; // @[DME.scala 164:21]
  assign io_dme_wr_1_data_ready = _T_38 & io_mem_w_ready; // @[DME.scala 222:29]
  assign io_dme_wr_1_ack = _T_33 & _T_27; // @[DME.scala 221:22]
  assign io_dme_wr_2_cmd_ready = wr_arb_io_in_2_ready; // @[DME.scala 164:21]
  assign io_dme_wr_2_data_ready = _T_45 & io_mem_w_ready; // @[DME.scala 222:29]
  assign io_dme_wr_2_ack = _T_40 & _T_27; // @[DME.scala 221:22]
  assign io_dme_wr_3_cmd_ready = wr_arb_io_in_3_ready; // @[DME.scala 164:21]
  assign io_dme_wr_3_data_ready = _T_52 & io_mem_w_ready; // @[DME.scala 222:29]
  assign io_dme_wr_3_ack = _T_47 & _T_27; // @[DME.scala 221:22]
  assign rd_arb_io_in_0_valid = io_dme_rd_0_cmd_valid; // @[DME.scala 134:21]
  assign rd_arb_io_in_0_bits_addr = io_dme_rd_0_cmd_bits_addr; // @[DME.scala 134:21]
  assign rd_arb_io_out_ready = rstate == 2'h0; // @[DME.scala 210:23]
  assign wr_arb_io_in_0_valid = io_dme_wr_0_cmd_valid; // @[DME.scala 164:21]
  assign wr_arb_io_in_0_bits_addr = io_dme_wr_0_cmd_bits_addr; // @[DME.scala 164:21]
  assign wr_arb_io_in_1_valid = io_dme_wr_1_cmd_valid; // @[DME.scala 164:21]
  assign wr_arb_io_in_1_bits_addr = io_dme_wr_1_cmd_bits_addr; // @[DME.scala 164:21]
  assign wr_arb_io_in_1_bits_len = io_dme_wr_1_cmd_bits_len; // @[DME.scala 164:21]
  assign wr_arb_io_in_2_valid = io_dme_wr_2_cmd_valid; // @[DME.scala 164:21]
  assign wr_arb_io_in_2_bits_addr = io_dme_wr_2_cmd_bits_addr; // @[DME.scala 164:21]
  assign wr_arb_io_in_2_bits_len = io_dme_wr_2_cmd_bits_len; // @[DME.scala 164:21]
  assign wr_arb_io_in_3_valid = io_dme_wr_3_cmd_valid; // @[DME.scala 164:21]
  assign wr_arb_io_in_3_bits_addr = io_dme_wr_3_cmd_bits_addr; // @[DME.scala 164:21]
  assign wr_arb_io_in_3_bits_len = io_dme_wr_3_cmd_bits_len; // @[DME.scala 164:21]
  assign wr_arb_io_out_ready = wstate == 2'h0; // @[DME.scala 211:23]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rstate = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  wr_arb_chosen = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  wstate = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  wr_cnt = _RAND_3[7:0];
  _RAND_4 = {2{`RANDOM}};
  rd_addr = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  wr_len = _RAND_5[7:0];
  _RAND_6 = {2{`RANDOM}};
  wr_addr = _RAND_6[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      rstate <= 2'h0;
    end else if (_T_1) begin
      if (rd_arb_io_out_valid) begin
        rstate <= 2'h1;
      end
    end else if (_T_2) begin
      if (io_mem_ar_ready) begin
        rstate <= 2'h2;
      end
    end else if (_T_3) begin
      if (_T_5) begin
        rstate <= 2'h0;
      end
    end
    if (_T_6) begin
      wr_arb_chosen <= wr_arb_io_chosen;
    end
    if (reset) begin
      wstate <= 2'h0;
    end else if (_T_11) begin
      if (wr_arb_io_out_valid) begin
        wstate <= 2'h1;
      end
    end else if (_T_12) begin
      if (io_mem_aw_ready) begin
        wstate <= 2'h2;
      end
    end else if (_T_13) begin
      if (_T_16) begin
        wstate <= 2'h3;
      end
    end else if (_T_17) begin
      if (io_mem_b_valid) begin
        wstate <= 2'h0;
      end
    end
    if (reset) begin
      wr_cnt <= 8'h0;
    end else if (_T_7) begin
      wr_cnt <= 8'h0;
    end else if (_T_8) begin
      wr_cnt <= _T_10;
    end
    if (reset) begin
      rd_addr <= 64'h0;
    end else if (_T) begin
      rd_addr <= rd_arb_io_out_bits_addr;
    end
    if (reset) begin
      wr_len <= 8'h0;
    end else if (_T_6) begin
      wr_len <= wr_arb_io_out_bits_len;
    end
    if (reset) begin
      wr_addr <= 64'h0;
    end else if (_T_6) begin
      wr_addr <= wr_arb_io_out_bits_addr;
    end
  end
endmodule
module DMECache(
  input          clock,
  input          reset,
  input          io_cpu_flush,
  output         io_cpu_flush_done,
  output         io_cpu_req_ready,
  input          io_cpu_req_valid,
  input  [63:0]  io_cpu_req_bits_addr,
  input  [63:0]  io_cpu_req_bits_data,
  input  [7:0]   io_cpu_req_bits_mask,
  input  [7:0]   io_cpu_req_bits_tag,
  output         io_cpu_resp_valid,
  output [63:0]  io_cpu_resp_bits_data,
  output [7:0]   io_cpu_resp_bits_tag,
  input          io_mem_rd_cmd_ready,
  output         io_mem_rd_cmd_valid,
  output [63:0]  io_mem_rd_cmd_bits_addr,
  output         io_mem_rd_data_ready,
  input          io_mem_rd_data_valid,
  input  [511:0] io_mem_rd_data_bits,
  input          io_mem_wr_cmd_ready,
  output         io_mem_wr_cmd_valid,
  output [63:0]  io_mem_wr_cmd_bits_addr,
  input          io_mem_wr_data_ready,
  output         io_mem_wr_data_valid,
  output [511:0] io_mem_wr_data_bits,
  input          io_mem_wr_ack
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_257;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [255:0] _RAND_264;
  reg [255:0] _RAND_265;
  reg [63:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [63:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [63:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [511:0] _RAND_274;
  reg [511:0] _RAND_275;
`endif // RANDOMIZE_REG_INIT
  reg [49:0] metaMem_tag [0:255]; // @[AXICache.scala 720:28]
  wire [49:0] metaMem_tag_rmeta_data; // @[AXICache.scala 720:28]
  wire [7:0] metaMem_tag_rmeta_addr; // @[AXICache.scala 720:28]
  wire [49:0] metaMem_tag__T_411_data; // @[AXICache.scala 720:28]
  wire [7:0] metaMem_tag__T_411_addr; // @[AXICache.scala 720:28]
  wire [49:0] metaMem_tag__T_242_data; // @[AXICache.scala 720:28]
  wire [7:0] metaMem_tag__T_242_addr; // @[AXICache.scala 720:28]
  wire  metaMem_tag__T_242_mask; // @[AXICache.scala 720:28]
  wire  metaMem_tag__T_242_en; // @[AXICache.scala 720:28]
  reg  metaMem_tag_rmeta_en_pipe_0;
  reg [7:0] metaMem_tag_rmeta_addr_pipe_0;
  reg  metaMem_tag__T_411_en_pipe_0;
  reg [7:0] metaMem_tag__T_411_addr_pipe_0;
  reg [7:0] dataMem_0_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_0__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_0__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_0__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_0__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_0__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_0__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_0__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_0__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_0__T_8_addr_pipe_0;
  reg  dataMem_0_0__T_106_en_pipe_0;
  reg [7:0] dataMem_0_0__T_106_addr_pipe_0;
  reg [7:0] dataMem_0_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_1__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_1__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_1__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_1__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_1__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_1__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_1__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_1__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_1__T_8_addr_pipe_0;
  reg  dataMem_0_1__T_106_en_pipe_0;
  reg [7:0] dataMem_0_1__T_106_addr_pipe_0;
  reg [7:0] dataMem_0_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_2__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_2__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_2__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_2__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_2__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_2__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_2__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_2__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_2__T_8_addr_pipe_0;
  reg  dataMem_0_2__T_106_en_pipe_0;
  reg [7:0] dataMem_0_2__T_106_addr_pipe_0;
  reg [7:0] dataMem_0_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_3__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_3__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_3__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_3__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_3__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_3__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_3__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_3__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_3__T_8_addr_pipe_0;
  reg  dataMem_0_3__T_106_en_pipe_0;
  reg [7:0] dataMem_0_3__T_106_addr_pipe_0;
  reg [7:0] dataMem_0_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_4__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_4__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_4__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_4__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_4__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_4__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_4__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_4__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_4__T_8_addr_pipe_0;
  reg  dataMem_0_4__T_106_en_pipe_0;
  reg [7:0] dataMem_0_4__T_106_addr_pipe_0;
  reg [7:0] dataMem_0_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_5__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_5__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_5__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_5__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_5__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_5__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_5__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_5__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_5__T_8_addr_pipe_0;
  reg  dataMem_0_5__T_106_en_pipe_0;
  reg [7:0] dataMem_0_5__T_106_addr_pipe_0;
  reg [7:0] dataMem_0_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_6__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_6__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_6__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_6__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_6__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_6__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_6__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_6__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_6__T_8_addr_pipe_0;
  reg  dataMem_0_6__T_106_en_pipe_0;
  reg [7:0] dataMem_0_6__T_106_addr_pipe_0;
  reg [7:0] dataMem_0_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_7__T_8_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_7__T_8_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_7__T_106_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_7__T_106_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_7__T_261_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_0_7__T_261_addr; // @[AXICache.scala 721:45]
  wire  dataMem_0_7__T_261_mask; // @[AXICache.scala 721:45]
  wire  dataMem_0_7__T_261_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_0_7__T_8_addr_pipe_0;
  reg  dataMem_0_7__T_106_en_pipe_0;
  reg [7:0] dataMem_0_7__T_106_addr_pipe_0;
  reg [7:0] dataMem_1_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_0__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_0__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_0__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_0__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_0__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_0__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_0__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_0__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_0__T_18_addr_pipe_0;
  reg  dataMem_1_0__T_117_en_pipe_0;
  reg [7:0] dataMem_1_0__T_117_addr_pipe_0;
  reg [7:0] dataMem_1_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_1__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_1__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_1__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_1__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_1__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_1__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_1__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_1__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_1__T_18_addr_pipe_0;
  reg  dataMem_1_1__T_117_en_pipe_0;
  reg [7:0] dataMem_1_1__T_117_addr_pipe_0;
  reg [7:0] dataMem_1_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_2__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_2__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_2__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_2__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_2__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_2__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_2__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_2__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_2__T_18_addr_pipe_0;
  reg  dataMem_1_2__T_117_en_pipe_0;
  reg [7:0] dataMem_1_2__T_117_addr_pipe_0;
  reg [7:0] dataMem_1_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_3__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_3__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_3__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_3__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_3__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_3__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_3__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_3__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_3__T_18_addr_pipe_0;
  reg  dataMem_1_3__T_117_en_pipe_0;
  reg [7:0] dataMem_1_3__T_117_addr_pipe_0;
  reg [7:0] dataMem_1_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_4__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_4__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_4__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_4__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_4__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_4__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_4__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_4__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_4__T_18_addr_pipe_0;
  reg  dataMem_1_4__T_117_en_pipe_0;
  reg [7:0] dataMem_1_4__T_117_addr_pipe_0;
  reg [7:0] dataMem_1_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_5__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_5__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_5__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_5__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_5__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_5__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_5__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_5__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_5__T_18_addr_pipe_0;
  reg  dataMem_1_5__T_117_en_pipe_0;
  reg [7:0] dataMem_1_5__T_117_addr_pipe_0;
  reg [7:0] dataMem_1_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_6__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_6__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_6__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_6__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_6__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_6__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_6__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_6__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_6__T_18_addr_pipe_0;
  reg  dataMem_1_6__T_117_en_pipe_0;
  reg [7:0] dataMem_1_6__T_117_addr_pipe_0;
  reg [7:0] dataMem_1_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_7__T_18_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_7__T_18_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_7__T_117_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_7__T_117_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_7__T_280_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_1_7__T_280_addr; // @[AXICache.scala 721:45]
  wire  dataMem_1_7__T_280_mask; // @[AXICache.scala 721:45]
  wire  dataMem_1_7__T_280_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_1_7__T_18_addr_pipe_0;
  reg  dataMem_1_7__T_117_en_pipe_0;
  reg [7:0] dataMem_1_7__T_117_addr_pipe_0;
  reg [7:0] dataMem_2_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_0__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_0__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_0__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_0__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_0__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_0__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_0__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_0__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_0__T_28_addr_pipe_0;
  reg  dataMem_2_0__T_128_en_pipe_0;
  reg [7:0] dataMem_2_0__T_128_addr_pipe_0;
  reg [7:0] dataMem_2_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_1__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_1__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_1__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_1__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_1__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_1__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_1__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_1__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_1__T_28_addr_pipe_0;
  reg  dataMem_2_1__T_128_en_pipe_0;
  reg [7:0] dataMem_2_1__T_128_addr_pipe_0;
  reg [7:0] dataMem_2_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_2__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_2__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_2__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_2__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_2__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_2__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_2__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_2__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_2__T_28_addr_pipe_0;
  reg  dataMem_2_2__T_128_en_pipe_0;
  reg [7:0] dataMem_2_2__T_128_addr_pipe_0;
  reg [7:0] dataMem_2_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_3__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_3__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_3__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_3__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_3__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_3__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_3__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_3__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_3__T_28_addr_pipe_0;
  reg  dataMem_2_3__T_128_en_pipe_0;
  reg [7:0] dataMem_2_3__T_128_addr_pipe_0;
  reg [7:0] dataMem_2_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_4__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_4__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_4__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_4__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_4__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_4__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_4__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_4__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_4__T_28_addr_pipe_0;
  reg  dataMem_2_4__T_128_en_pipe_0;
  reg [7:0] dataMem_2_4__T_128_addr_pipe_0;
  reg [7:0] dataMem_2_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_5__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_5__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_5__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_5__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_5__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_5__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_5__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_5__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_5__T_28_addr_pipe_0;
  reg  dataMem_2_5__T_128_en_pipe_0;
  reg [7:0] dataMem_2_5__T_128_addr_pipe_0;
  reg [7:0] dataMem_2_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_6__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_6__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_6__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_6__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_6__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_6__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_6__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_6__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_6__T_28_addr_pipe_0;
  reg  dataMem_2_6__T_128_en_pipe_0;
  reg [7:0] dataMem_2_6__T_128_addr_pipe_0;
  reg [7:0] dataMem_2_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_7__T_28_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_7__T_28_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_7__T_128_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_7__T_128_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_7__T_299_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_2_7__T_299_addr; // @[AXICache.scala 721:45]
  wire  dataMem_2_7__T_299_mask; // @[AXICache.scala 721:45]
  wire  dataMem_2_7__T_299_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_2_7__T_28_addr_pipe_0;
  reg  dataMem_2_7__T_128_en_pipe_0;
  reg [7:0] dataMem_2_7__T_128_addr_pipe_0;
  reg [7:0] dataMem_3_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_0__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_0__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_0__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_0__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_0__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_0__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_0__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_0__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_0__T_38_addr_pipe_0;
  reg  dataMem_3_0__T_139_en_pipe_0;
  reg [7:0] dataMem_3_0__T_139_addr_pipe_0;
  reg [7:0] dataMem_3_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_1__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_1__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_1__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_1__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_1__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_1__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_1__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_1__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_1__T_38_addr_pipe_0;
  reg  dataMem_3_1__T_139_en_pipe_0;
  reg [7:0] dataMem_3_1__T_139_addr_pipe_0;
  reg [7:0] dataMem_3_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_2__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_2__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_2__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_2__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_2__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_2__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_2__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_2__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_2__T_38_addr_pipe_0;
  reg  dataMem_3_2__T_139_en_pipe_0;
  reg [7:0] dataMem_3_2__T_139_addr_pipe_0;
  reg [7:0] dataMem_3_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_3__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_3__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_3__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_3__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_3__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_3__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_3__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_3__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_3__T_38_addr_pipe_0;
  reg  dataMem_3_3__T_139_en_pipe_0;
  reg [7:0] dataMem_3_3__T_139_addr_pipe_0;
  reg [7:0] dataMem_3_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_4__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_4__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_4__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_4__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_4__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_4__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_4__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_4__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_4__T_38_addr_pipe_0;
  reg  dataMem_3_4__T_139_en_pipe_0;
  reg [7:0] dataMem_3_4__T_139_addr_pipe_0;
  reg [7:0] dataMem_3_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_5__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_5__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_5__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_5__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_5__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_5__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_5__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_5__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_5__T_38_addr_pipe_0;
  reg  dataMem_3_5__T_139_en_pipe_0;
  reg [7:0] dataMem_3_5__T_139_addr_pipe_0;
  reg [7:0] dataMem_3_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_6__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_6__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_6__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_6__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_6__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_6__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_6__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_6__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_6__T_38_addr_pipe_0;
  reg  dataMem_3_6__T_139_en_pipe_0;
  reg [7:0] dataMem_3_6__T_139_addr_pipe_0;
  reg [7:0] dataMem_3_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_7__T_38_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_7__T_38_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_7__T_139_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_7__T_139_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_7__T_318_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_3_7__T_318_addr; // @[AXICache.scala 721:45]
  wire  dataMem_3_7__T_318_mask; // @[AXICache.scala 721:45]
  wire  dataMem_3_7__T_318_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_3_7__T_38_addr_pipe_0;
  reg  dataMem_3_7__T_139_en_pipe_0;
  reg [7:0] dataMem_3_7__T_139_addr_pipe_0;
  reg [7:0] dataMem_4_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_0__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_0__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_0__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_0__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_0__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_0__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_0__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_0__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_0__T_48_addr_pipe_0;
  reg  dataMem_4_0__T_150_en_pipe_0;
  reg [7:0] dataMem_4_0__T_150_addr_pipe_0;
  reg [7:0] dataMem_4_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_1__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_1__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_1__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_1__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_1__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_1__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_1__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_1__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_1__T_48_addr_pipe_0;
  reg  dataMem_4_1__T_150_en_pipe_0;
  reg [7:0] dataMem_4_1__T_150_addr_pipe_0;
  reg [7:0] dataMem_4_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_2__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_2__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_2__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_2__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_2__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_2__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_2__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_2__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_2__T_48_addr_pipe_0;
  reg  dataMem_4_2__T_150_en_pipe_0;
  reg [7:0] dataMem_4_2__T_150_addr_pipe_0;
  reg [7:0] dataMem_4_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_3__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_3__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_3__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_3__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_3__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_3__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_3__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_3__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_3__T_48_addr_pipe_0;
  reg  dataMem_4_3__T_150_en_pipe_0;
  reg [7:0] dataMem_4_3__T_150_addr_pipe_0;
  reg [7:0] dataMem_4_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_4__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_4__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_4__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_4__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_4__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_4__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_4__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_4__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_4__T_48_addr_pipe_0;
  reg  dataMem_4_4__T_150_en_pipe_0;
  reg [7:0] dataMem_4_4__T_150_addr_pipe_0;
  reg [7:0] dataMem_4_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_5__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_5__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_5__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_5__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_5__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_5__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_5__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_5__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_5__T_48_addr_pipe_0;
  reg  dataMem_4_5__T_150_en_pipe_0;
  reg [7:0] dataMem_4_5__T_150_addr_pipe_0;
  reg [7:0] dataMem_4_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_6__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_6__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_6__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_6__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_6__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_6__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_6__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_6__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_6__T_48_addr_pipe_0;
  reg  dataMem_4_6__T_150_en_pipe_0;
  reg [7:0] dataMem_4_6__T_150_addr_pipe_0;
  reg [7:0] dataMem_4_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_7__T_48_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_7__T_48_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_7__T_150_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_7__T_150_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_7__T_337_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_4_7__T_337_addr; // @[AXICache.scala 721:45]
  wire  dataMem_4_7__T_337_mask; // @[AXICache.scala 721:45]
  wire  dataMem_4_7__T_337_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_4_7__T_48_addr_pipe_0;
  reg  dataMem_4_7__T_150_en_pipe_0;
  reg [7:0] dataMem_4_7__T_150_addr_pipe_0;
  reg [7:0] dataMem_5_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_0__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_0__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_0__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_0__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_0__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_0__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_0__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_0__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_0__T_58_addr_pipe_0;
  reg  dataMem_5_0__T_161_en_pipe_0;
  reg [7:0] dataMem_5_0__T_161_addr_pipe_0;
  reg [7:0] dataMem_5_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_1__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_1__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_1__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_1__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_1__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_1__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_1__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_1__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_1__T_58_addr_pipe_0;
  reg  dataMem_5_1__T_161_en_pipe_0;
  reg [7:0] dataMem_5_1__T_161_addr_pipe_0;
  reg [7:0] dataMem_5_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_2__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_2__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_2__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_2__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_2__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_2__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_2__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_2__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_2__T_58_addr_pipe_0;
  reg  dataMem_5_2__T_161_en_pipe_0;
  reg [7:0] dataMem_5_2__T_161_addr_pipe_0;
  reg [7:0] dataMem_5_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_3__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_3__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_3__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_3__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_3__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_3__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_3__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_3__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_3__T_58_addr_pipe_0;
  reg  dataMem_5_3__T_161_en_pipe_0;
  reg [7:0] dataMem_5_3__T_161_addr_pipe_0;
  reg [7:0] dataMem_5_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_4__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_4__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_4__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_4__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_4__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_4__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_4__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_4__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_4__T_58_addr_pipe_0;
  reg  dataMem_5_4__T_161_en_pipe_0;
  reg [7:0] dataMem_5_4__T_161_addr_pipe_0;
  reg [7:0] dataMem_5_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_5__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_5__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_5__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_5__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_5__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_5__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_5__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_5__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_5__T_58_addr_pipe_0;
  reg  dataMem_5_5__T_161_en_pipe_0;
  reg [7:0] dataMem_5_5__T_161_addr_pipe_0;
  reg [7:0] dataMem_5_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_6__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_6__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_6__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_6__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_6__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_6__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_6__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_6__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_6__T_58_addr_pipe_0;
  reg  dataMem_5_6__T_161_en_pipe_0;
  reg [7:0] dataMem_5_6__T_161_addr_pipe_0;
  reg [7:0] dataMem_5_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_7__T_58_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_7__T_58_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_7__T_161_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_7__T_161_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_7__T_356_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_5_7__T_356_addr; // @[AXICache.scala 721:45]
  wire  dataMem_5_7__T_356_mask; // @[AXICache.scala 721:45]
  wire  dataMem_5_7__T_356_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_5_7__T_58_addr_pipe_0;
  reg  dataMem_5_7__T_161_en_pipe_0;
  reg [7:0] dataMem_5_7__T_161_addr_pipe_0;
  reg [7:0] dataMem_6_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_0__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_0__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_0__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_0__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_0__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_0__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_0__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_0__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_0__T_68_addr_pipe_0;
  reg  dataMem_6_0__T_172_en_pipe_0;
  reg [7:0] dataMem_6_0__T_172_addr_pipe_0;
  reg [7:0] dataMem_6_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_1__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_1__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_1__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_1__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_1__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_1__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_1__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_1__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_1__T_68_addr_pipe_0;
  reg  dataMem_6_1__T_172_en_pipe_0;
  reg [7:0] dataMem_6_1__T_172_addr_pipe_0;
  reg [7:0] dataMem_6_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_2__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_2__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_2__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_2__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_2__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_2__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_2__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_2__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_2__T_68_addr_pipe_0;
  reg  dataMem_6_2__T_172_en_pipe_0;
  reg [7:0] dataMem_6_2__T_172_addr_pipe_0;
  reg [7:0] dataMem_6_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_3__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_3__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_3__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_3__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_3__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_3__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_3__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_3__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_3__T_68_addr_pipe_0;
  reg  dataMem_6_3__T_172_en_pipe_0;
  reg [7:0] dataMem_6_3__T_172_addr_pipe_0;
  reg [7:0] dataMem_6_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_4__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_4__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_4__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_4__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_4__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_4__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_4__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_4__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_4__T_68_addr_pipe_0;
  reg  dataMem_6_4__T_172_en_pipe_0;
  reg [7:0] dataMem_6_4__T_172_addr_pipe_0;
  reg [7:0] dataMem_6_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_5__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_5__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_5__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_5__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_5__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_5__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_5__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_5__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_5__T_68_addr_pipe_0;
  reg  dataMem_6_5__T_172_en_pipe_0;
  reg [7:0] dataMem_6_5__T_172_addr_pipe_0;
  reg [7:0] dataMem_6_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_6__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_6__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_6__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_6__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_6__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_6__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_6__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_6__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_6__T_68_addr_pipe_0;
  reg  dataMem_6_6__T_172_en_pipe_0;
  reg [7:0] dataMem_6_6__T_172_addr_pipe_0;
  reg [7:0] dataMem_6_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_7__T_68_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_7__T_68_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_7__T_172_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_7__T_172_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_7__T_375_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_6_7__T_375_addr; // @[AXICache.scala 721:45]
  wire  dataMem_6_7__T_375_mask; // @[AXICache.scala 721:45]
  wire  dataMem_6_7__T_375_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_6_7__T_68_addr_pipe_0;
  reg  dataMem_6_7__T_172_en_pipe_0;
  reg [7:0] dataMem_6_7__T_172_addr_pipe_0;
  reg [7:0] dataMem_7_0 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_0__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_0__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_0__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_0__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_0__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_0__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_0__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_0__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_0__T_78_addr_pipe_0;
  reg  dataMem_7_0__T_183_en_pipe_0;
  reg [7:0] dataMem_7_0__T_183_addr_pipe_0;
  reg [7:0] dataMem_7_1 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_1__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_1__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_1__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_1__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_1__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_1__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_1__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_1__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_1__T_78_addr_pipe_0;
  reg  dataMem_7_1__T_183_en_pipe_0;
  reg [7:0] dataMem_7_1__T_183_addr_pipe_0;
  reg [7:0] dataMem_7_2 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_2__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_2__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_2__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_2__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_2__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_2__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_2__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_2__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_2__T_78_addr_pipe_0;
  reg  dataMem_7_2__T_183_en_pipe_0;
  reg [7:0] dataMem_7_2__T_183_addr_pipe_0;
  reg [7:0] dataMem_7_3 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_3__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_3__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_3__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_3__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_3__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_3__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_3__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_3__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_3__T_78_addr_pipe_0;
  reg  dataMem_7_3__T_183_en_pipe_0;
  reg [7:0] dataMem_7_3__T_183_addr_pipe_0;
  reg [7:0] dataMem_7_4 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_4__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_4__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_4__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_4__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_4__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_4__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_4__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_4__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_4__T_78_addr_pipe_0;
  reg  dataMem_7_4__T_183_en_pipe_0;
  reg [7:0] dataMem_7_4__T_183_addr_pipe_0;
  reg [7:0] dataMem_7_5 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_5__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_5__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_5__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_5__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_5__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_5__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_5__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_5__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_5__T_78_addr_pipe_0;
  reg  dataMem_7_5__T_183_en_pipe_0;
  reg [7:0] dataMem_7_5__T_183_addr_pipe_0;
  reg [7:0] dataMem_7_6 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_6__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_6__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_6__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_6__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_6__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_6__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_6__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_6__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_6__T_78_addr_pipe_0;
  reg  dataMem_7_6__T_183_en_pipe_0;
  reg [7:0] dataMem_7_6__T_183_addr_pipe_0;
  reg [7:0] dataMem_7_7 [0:255]; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_7__T_78_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_7__T_78_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_7__T_183_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_7__T_183_addr; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_7__T_394_data; // @[AXICache.scala 721:45]
  wire [7:0] dataMem_7_7__T_394_addr; // @[AXICache.scala 721:45]
  wire  dataMem_7_7__T_394_mask; // @[AXICache.scala 721:45]
  wire  dataMem_7_7__T_394_en; // @[AXICache.scala 721:45]
  reg [7:0] dataMem_7_7__T_78_addr_pipe_0;
  reg  dataMem_7_7__T_183_en_pipe_0;
  reg [7:0] dataMem_7_7__T_183_addr_pipe_0;
  reg [2:0] state; // @[AXICache.scala 711:22]
  reg [2:0] flush_state; // @[AXICache.scala 714:28]
  reg  flush_mode; // @[AXICache.scala 715:27]
  reg [255:0] v; // @[AXICache.scala 718:18]
  reg [255:0] d; // @[AXICache.scala 719:18]
  reg [63:0] addr_reg; // @[AXICache.scala 723:21]
  reg [7:0] cpu_tag_reg; // @[AXICache.scala 724:24]
  reg [63:0] cpu_data; // @[AXICache.scala 726:21]
  reg [7:0] cpu_mask; // @[AXICache.scala 727:21]
  wire  read_wrap_out = io_mem_rd_data_ready & io_mem_rd_data_valid; // @[Decoupled.scala 40:37]
  wire  write_wrap_out = io_mem_wr_data_ready & io_mem_wr_data_valid; // @[Decoupled.scala 40:37]
  wire  _T_2 = flush_state == 3'h1; // @[AXICache.scala 734:51]
  reg [7:0] set_count; // @[Counter.scala 29:33]
  wire  _T_3 = set_count == 8'hff; // @[Counter.scala 38:24]
  wire [7:0] _T_5 = set_count + 8'h1; // @[Counter.scala 39:22]
  wire  set_wrap = _T_2 & _T_3; // @[Counter.scala 67:17]
  wire [7:0] _T_7 = set_count - 8'h1; // @[AXICache.scala 735:62]
  wire [63:0] _T_15 = {dataMem_0_7__T_8_data,dataMem_0_6__T_8_data,dataMem_0_5__T_8_data,dataMem_0_4__T_8_data,dataMem_0_3__T_8_data,dataMem_0_2__T_8_data,dataMem_0_1__T_8_data,dataMem_0_0__T_8_data}; // @[AXICache.scala 735:69]
  wire [63:0] _T_35 = {dataMem_2_7__T_28_data,dataMem_2_6__T_28_data,dataMem_2_5__T_28_data,dataMem_2_4__T_28_data,dataMem_2_3__T_28_data,dataMem_2_2__T_28_data,dataMem_2_1__T_28_data,dataMem_2_0__T_28_data}; // @[AXICache.scala 735:69]
  wire [63:0] _T_55 = {dataMem_4_7__T_48_data,dataMem_4_6__T_48_data,dataMem_4_5__T_48_data,dataMem_4_4__T_48_data,dataMem_4_3__T_48_data,dataMem_4_2__T_48_data,dataMem_4_1__T_48_data,dataMem_4_0__T_48_data}; // @[AXICache.scala 735:69]
  wire [63:0] _T_75 = {dataMem_6_7__T_68_data,dataMem_6_6__T_68_data,dataMem_6_5__T_68_data,dataMem_6_4__T_68_data,dataMem_6_3__T_68_data,dataMem_6_2__T_68_data,dataMem_6_1__T_68_data,dataMem_6_0__T_68_data}; // @[AXICache.scala 735:69]
  wire [127:0] _T_86 = {dataMem_1_7__T_18_data,dataMem_1_6__T_18_data,dataMem_1_5__T_18_data,dataMem_1_4__T_18_data,dataMem_1_3__T_18_data,dataMem_1_2__T_18_data,dataMem_1_1__T_18_data,dataMem_1_0__T_18_data,_T_15}; // @[Cat.scala 29:58]
  wire [255:0] _T_88 = {dataMem_3_7__T_38_data,dataMem_3_6__T_38_data,dataMem_3_5__T_38_data,dataMem_3_4__T_38_data,dataMem_3_3__T_38_data,dataMem_3_2__T_38_data,dataMem_3_1__T_38_data,dataMem_3_0__T_38_data,_T_35,_T_86}; // @[Cat.scala 29:58]
  wire [127:0] _T_89 = {dataMem_5_7__T_58_data,dataMem_5_6__T_58_data,dataMem_5_5__T_58_data,dataMem_5_4__T_58_data,dataMem_5_3__T_58_data,dataMem_5_2__T_58_data,dataMem_5_1__T_58_data,dataMem_5_0__T_58_data,_T_55}; // @[Cat.scala 29:58]
  wire [255:0] _T_91 = {dataMem_7_7__T_78_data,dataMem_7_6__T_78_data,dataMem_7_5__T_78_data,dataMem_7_4__T_78_data,dataMem_7_3__T_78_data,dataMem_7_2__T_78_data,dataMem_7_1__T_78_data,dataMem_7_0__T_78_data,_T_75,_T_89}; // @[Cat.scala 29:58]
  wire [511:0] dirty_cache_block = {_T_91,_T_88}; // @[Cat.scala 29:58]
  reg [49:0] block_rmeta_tag; // @[AXICache.scala 736:24]
  wire  is_idle = state == 3'h0; // @[AXICache.scala 740:23]
  wire  is_read = state == 3'h1; // @[AXICache.scala 741:23]
  wire  is_write = state == 3'h2; // @[AXICache.scala 742:24]
  wire  _T_92 = state == 3'h6; // @[AXICache.scala 743:24]
  wire  is_alloc = _T_92 & read_wrap_out; // @[AXICache.scala 743:37]
  reg  is_alloc_reg; // @[AXICache.scala 744:29]
  wire [7:0] idx_reg = addr_reg[13:6]; // @[AXICache.scala 754:25]
  wire [255:0] _T_198 = v >> idx_reg; // @[AXICache.scala 763:11]
  wire [49:0] tag_reg = addr_reg[63:14]; // @[AXICache.scala 753:25]
  wire  _T_200 = metaMem_tag_rmeta_data == tag_reg; // @[AXICache.scala 763:34]
  wire  hit = _T_198[0] & _T_200; // @[AXICache.scala 763:21]
  wire  _T_93 = hit | is_alloc_reg; // @[AXICache.scala 747:30]
  wire  _T_94 = is_write & _T_93; // @[AXICache.scala 747:22]
  wire  wen = _T_94 | is_alloc; // @[AXICache.scala 747:64]
  wire  _T_97 = ~wen; // @[AXICache.scala 748:13]
  wire  _T_98 = is_idle | is_read; // @[AXICache.scala 748:30]
  wire  _T_99 = _T_97 & _T_98; // @[AXICache.scala 748:18]
  reg  ren_reg; // @[AXICache.scala 749:24]
  wire [2:0] off_reg = addr_reg[5:3]; // @[AXICache.scala 755:25]
  wire [63:0] _T_113 = {dataMem_0_7__T_106_data,dataMem_0_6__T_106_data,dataMem_0_5__T_106_data,dataMem_0_4__T_106_data,dataMem_0_3__T_106_data,dataMem_0_2__T_106_data,dataMem_0_1__T_106_data,dataMem_0_0__T_106_data}; // @[AXICache.scala 758:50]
  wire [63:0] _T_135 = {dataMem_2_7__T_128_data,dataMem_2_6__T_128_data,dataMem_2_5__T_128_data,dataMem_2_4__T_128_data,dataMem_2_3__T_128_data,dataMem_2_2__T_128_data,dataMem_2_1__T_128_data,dataMem_2_0__T_128_data}; // @[AXICache.scala 758:50]
  wire [63:0] _T_157 = {dataMem_4_7__T_150_data,dataMem_4_6__T_150_data,dataMem_4_5__T_150_data,dataMem_4_4__T_150_data,dataMem_4_3__T_150_data,dataMem_4_2__T_150_data,dataMem_4_1__T_150_data,dataMem_4_0__T_150_data}; // @[AXICache.scala 758:50]
  wire [63:0] _T_179 = {dataMem_6_7__T_172_data,dataMem_6_6__T_172_data,dataMem_6_5__T_172_data,dataMem_6_4__T_172_data,dataMem_6_3__T_172_data,dataMem_6_2__T_172_data,dataMem_6_1__T_172_data,dataMem_6_0__T_172_data}; // @[AXICache.scala 758:50]
  wire [127:0] _T_191 = {dataMem_1_7__T_117_data,dataMem_1_6__T_117_data,dataMem_1_5__T_117_data,dataMem_1_4__T_117_data,dataMem_1_3__T_117_data,dataMem_1_2__T_117_data,dataMem_1_1__T_117_data,dataMem_1_0__T_117_data,_T_113}; // @[Cat.scala 29:58]
  wire [255:0] _T_193 = {dataMem_3_7__T_139_data,dataMem_3_6__T_139_data,dataMem_3_5__T_139_data,dataMem_3_4__T_139_data,dataMem_3_3__T_139_data,dataMem_3_2__T_139_data,dataMem_3_1__T_139_data,dataMem_3_0__T_139_data,_T_135,_T_191}; // @[Cat.scala 29:58]
  wire [127:0] _T_194 = {dataMem_5_7__T_161_data,dataMem_5_6__T_161_data,dataMem_5_5__T_161_data,dataMem_5_4__T_161_data,dataMem_5_3__T_161_data,dataMem_5_2__T_161_data,dataMem_5_1__T_161_data,dataMem_5_0__T_161_data,_T_157}; // @[Cat.scala 29:58]
  wire [255:0] _T_196 = {dataMem_7_7__T_183_data,dataMem_7_6__T_183_data,dataMem_7_5__T_183_data,dataMem_7_4__T_183_data,dataMem_7_3__T_183_data,dataMem_7_2__T_183_data,dataMem_7_1__T_183_data,dataMem_7_0__T_183_data,_T_179,_T_194}; // @[Cat.scala 29:58]
  wire [511:0] rdata = {_T_196,_T_193}; // @[Cat.scala 29:58]
  reg [511:0] rdata_buf; // @[Reg.scala 15:16]
  wire [511:0] _GEN_16 = ren_reg ? rdata : rdata_buf; // @[Reg.scala 16:19]
  reg [511:0] refill_buf_0; // @[AXICache.scala 760:23]
  wire [511:0] read = is_alloc_reg ? refill_buf_0 : _GEN_16; // @[AXICache.scala 761:17]
  wire  _T_203 = is_read & hit; // @[AXICache.scala 765:58]
  wire  _T_204 = is_idle | _T_203; // @[AXICache.scala 765:31]
  wire [63:0] _GEN_18 = 3'h1 == off_reg ? read[127:64] : read[63:0]; // @[AXICache.scala 768:25]
  wire [63:0] _GEN_19 = 3'h2 == off_reg ? read[191:128] : _GEN_18; // @[AXICache.scala 768:25]
  wire [63:0] _GEN_20 = 3'h3 == off_reg ? read[255:192] : _GEN_19; // @[AXICache.scala 768:25]
  wire [63:0] _GEN_21 = 3'h4 == off_reg ? read[319:256] : _GEN_20; // @[AXICache.scala 768:25]
  wire [63:0] _GEN_22 = 3'h5 == off_reg ? read[383:320] : _GEN_21; // @[AXICache.scala 768:25]
  wire [63:0] _GEN_23 = 3'h6 == off_reg ? read[447:384] : _GEN_22; // @[AXICache.scala 768:25]
  wire  _T_216 = |cpu_mask; // @[AXICache.scala 769:79]
  wire  _T_217 = ~_T_216; // @[AXICache.scala 769:69]
  wire  _T_218 = is_alloc_reg & _T_217; // @[AXICache.scala 769:66]
  wire  _T_220 = io_cpu_req_ready & io_cpu_req_valid; // @[Decoupled.scala 40:37]
  wire  _T_221 = ~is_alloc; // @[AXICache.scala 788:19]
  wire [5:0] _T_222 = {off_reg,3'h0}; // @[Cat.scala 29:58]
  wire [70:0] _GEN_374 = {{63'd0}, cpu_mask}; // @[AXICache.scala 788:40]
  wire [70:0] _T_223 = _GEN_374 << _T_222; // @[AXICache.scala 788:40]
  wire [71:0] _T_224 = {1'b0,$signed(_T_223)}; // @[AXICache.scala 788:91]
  wire [71:0] wmask = _T_221 ? $signed(_T_224) : $signed(-72'sh1); // @[AXICache.scala 788:18]
  wire [511:0] _T_228 = {cpu_data,cpu_data,cpu_data,cpu_data,cpu_data,cpu_data,cpu_data,cpu_data}; // @[Cat.scala 29:58]
  wire [511:0] wdata = _T_221 ? _T_228 : io_mem_rd_data_bits; // @[AXICache.scala 789:18]
  wire [255:0] _T_229 = 256'h1 << idx_reg; // @[AXICache.scala 793:18]
  wire [255:0] _T_230 = v | _T_229; // @[AXICache.scala 793:18]
  wire [255:0] _T_237 = d | _T_229; // @[AXICache.scala 794:18]
  wire [255:0] _T_238 = ~d; // @[AXICache.scala 794:18]
  wire [255:0] _T_239 = _T_238 | _T_229; // @[AXICache.scala 794:18]
  wire [255:0] _T_240 = ~_T_239; // @[AXICache.scala 794:18]
  wire [57:0] _T_395 = {tag_reg,idx_reg}; // @[Cat.scala 29:58]
  wire [63:0] _GEN_375 = {_T_395, 6'h0}; // @[AXICache.scala 812:52]
  wire [64:0] _T_396 = {{1'd0}, _GEN_375}; // @[AXICache.scala 812:52]
  wire [255:0] _T_399 = v >> set_count; // @[AXICache.scala 823:25]
  wire [255:0] _T_401 = d >> set_count; // @[AXICache.scala 823:41]
  wire  is_block_dirty = _T_399[0] & _T_401[0]; // @[AXICache.scala 823:37]
  wire [57:0] _T_405 = {block_rmeta_tag,_T_7}; // @[Cat.scala 29:58]
  wire [63:0] _GEN_376 = {_T_405, 6'h0}; // @[AXICache.scala 824:58]
  wire [64:0] block_addr = {{1'd0}, _GEN_376}; // @[AXICache.scala 824:58]
  wire [57:0] _T_412 = {metaMem_tag_rmeta_data,idx_reg}; // @[Cat.scala 29:58]
  wire [63:0] _GEN_377 = {_T_412, 6'h0}; // @[AXICache.scala 835:82]
  wire [64:0] _T_413 = {{1'd0}, _GEN_377}; // @[AXICache.scala 835:82]
  wire [64:0] _T_414 = flush_mode ? block_addr : _T_413; // @[AXICache.scala 835:33]
  wire [255:0] _T_422 = d >> idx_reg; // @[AXICache.scala 849:33]
  wire  is_dirty = _T_198[0] & _T_422[0]; // @[AXICache.scala 849:29]
  wire  _T_424 = 3'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_425 = |io_cpu_req_bits_mask; // @[AXICache.scala 853:43]
  wire  _T_427 = 3'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_430 = ~is_dirty; // @[AXICache.scala 865:32]
  wire  _T_431 = io_mem_wr_cmd_ready & io_mem_wr_cmd_valid; // @[Decoupled.scala 40:37]
  wire  _T_432 = io_mem_rd_cmd_ready & io_mem_rd_cmd_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_311 = hit ? 1'h0 : is_dirty; // @[AXICache.scala 857:17]
  wire  _GEN_312 = hit ? 1'h0 : _T_430; // @[AXICache.scala 857:17]
  wire  _T_433 = 3'h2 == state; // @[Conditional.scala 37:30]
  wire  _GEN_316 = _T_93 ? 1'h0 : is_dirty; // @[AXICache.scala 874:49]
  wire  _GEN_317 = _T_93 ? 1'h0 : _T_430; // @[AXICache.scala 874:49]
  wire  _T_439 = 3'h3 == state; // @[Conditional.scala 37:30]
  wire  _T_440 = 3'h4 == state; // @[Conditional.scala 37:30]
  wire  _T_441 = 3'h5 == state; // @[Conditional.scala 37:30]
  wire  _T_443 = 3'h6 == state; // @[Conditional.scala 37:30]
  wire  _GEN_326 = _T_440 ? 1'h0 : _T_441; // @[Conditional.scala 39:67]
  wire  _GEN_329 = _T_439 ? 1'h0 : _GEN_326; // @[Conditional.scala 39:67]
  wire  _GEN_331 = _T_433 & _GEN_316; // @[Conditional.scala 39:67]
  wire  _GEN_332 = _T_433 ? _GEN_317 : _GEN_329; // @[Conditional.scala 39:67]
  wire  _GEN_333 = _T_433 ? 1'h0 : _T_439; // @[Conditional.scala 39:67]
  wire  _GEN_335 = _T_427 ? _GEN_311 : _GEN_331; // @[Conditional.scala 39:67]
  wire  _GEN_336 = _T_427 ? _GEN_312 : _GEN_332; // @[Conditional.scala 39:67]
  wire  _GEN_337 = _T_427 ? 1'h0 : _GEN_333; // @[Conditional.scala 39:67]
  wire  _GEN_339 = _T_424 ? 1'h0 : _GEN_335; // @[Conditional.scala 40:58]
  wire  _GEN_340 = _T_424 ? 1'h0 : _GEN_336; // @[Conditional.scala 40:58]
  wire  _GEN_341 = _T_424 ? 1'h0 : _GEN_337; // @[Conditional.scala 40:58]
  wire  _T_446 = 3'h0 == flush_state; // @[Conditional.scala 37:30]
  wire  _GEN_343 = io_cpu_flush | flush_mode; // @[AXICache.scala 913:26]
  wire  _T_447 = 3'h1 == flush_state; // @[Conditional.scala 37:30]
  wire  _T_448 = 3'h2 == flush_state; // @[Conditional.scala 37:30]
  wire  _T_449 = 3'h3 == flush_state; // @[Conditional.scala 37:30]
  wire  _T_451 = 3'h4 == flush_state; // @[Conditional.scala 37:30]
  wire  _T_452 = 3'h5 == flush_state; // @[Conditional.scala 37:30]
  wire  _GEN_352 = _T_451 | _GEN_341; // @[Conditional.scala 39:67]
  wire  _GEN_354 = _T_449 | _GEN_339; // @[Conditional.scala 39:67]
  wire  _GEN_355 = _T_449 ? 1'h0 : _GEN_340; // @[Conditional.scala 39:67]
  wire  _GEN_357 = _T_449 ? _GEN_341 : _GEN_352; // @[Conditional.scala 39:67]
  wire  _GEN_359 = _T_448 ? _GEN_339 : _GEN_354; // @[Conditional.scala 39:67]
  wire  _GEN_360 = _T_448 ? _GEN_340 : _GEN_355; // @[Conditional.scala 39:67]
  wire  _GEN_361 = _T_448 ? _GEN_341 : _GEN_357; // @[Conditional.scala 39:67]
  wire  _GEN_362 = _T_447 & set_wrap; // @[Conditional.scala 39:67]
  wire  _GEN_365 = _T_447 ? _GEN_339 : _GEN_359; // @[Conditional.scala 39:67]
  wire  _GEN_366 = _T_447 ? _GEN_340 : _GEN_360; // @[Conditional.scala 39:67]
  wire  _GEN_367 = _T_447 ? _GEN_341 : _GEN_361; // @[Conditional.scala 39:67]
  assign metaMem_tag_rmeta_addr = metaMem_tag_rmeta_addr_pipe_0;
  assign metaMem_tag_rmeta_data = metaMem_tag[metaMem_tag_rmeta_addr]; // @[AXICache.scala 720:28]
  assign metaMem_tag__T_411_addr = metaMem_tag__T_411_addr_pipe_0;
  assign metaMem_tag__T_411_data = metaMem_tag[metaMem_tag__T_411_addr]; // @[AXICache.scala 720:28]
  assign metaMem_tag__T_242_data = addr_reg[63:14];
  assign metaMem_tag__T_242_addr = addr_reg[13:6];
  assign metaMem_tag__T_242_mask = 1'h1;
  assign metaMem_tag__T_242_en = wen & is_alloc;
  assign dataMem_0_0__T_8_addr = dataMem_0_0__T_8_addr_pipe_0;
  assign dataMem_0_0__T_8_data = dataMem_0_0[dataMem_0_0__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_0__T_106_addr = dataMem_0_0__T_106_addr_pipe_0;
  assign dataMem_0_0__T_106_data = dataMem_0_0[dataMem_0_0__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_0__T_261_data = wdata[7:0];
  assign dataMem_0_0__T_261_addr = addr_reg[13:6];
  assign dataMem_0_0__T_261_mask = wmask[0];
  assign dataMem_0_0__T_261_en = _T_94 | is_alloc;
  assign dataMem_0_1__T_8_addr = dataMem_0_1__T_8_addr_pipe_0;
  assign dataMem_0_1__T_8_data = dataMem_0_1[dataMem_0_1__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_1__T_106_addr = dataMem_0_1__T_106_addr_pipe_0;
  assign dataMem_0_1__T_106_data = dataMem_0_1[dataMem_0_1__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_1__T_261_data = wdata[15:8];
  assign dataMem_0_1__T_261_addr = addr_reg[13:6];
  assign dataMem_0_1__T_261_mask = wmask[1];
  assign dataMem_0_1__T_261_en = _T_94 | is_alloc;
  assign dataMem_0_2__T_8_addr = dataMem_0_2__T_8_addr_pipe_0;
  assign dataMem_0_2__T_8_data = dataMem_0_2[dataMem_0_2__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_2__T_106_addr = dataMem_0_2__T_106_addr_pipe_0;
  assign dataMem_0_2__T_106_data = dataMem_0_2[dataMem_0_2__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_2__T_261_data = wdata[23:16];
  assign dataMem_0_2__T_261_addr = addr_reg[13:6];
  assign dataMem_0_2__T_261_mask = wmask[2];
  assign dataMem_0_2__T_261_en = _T_94 | is_alloc;
  assign dataMem_0_3__T_8_addr = dataMem_0_3__T_8_addr_pipe_0;
  assign dataMem_0_3__T_8_data = dataMem_0_3[dataMem_0_3__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_3__T_106_addr = dataMem_0_3__T_106_addr_pipe_0;
  assign dataMem_0_3__T_106_data = dataMem_0_3[dataMem_0_3__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_3__T_261_data = wdata[31:24];
  assign dataMem_0_3__T_261_addr = addr_reg[13:6];
  assign dataMem_0_3__T_261_mask = wmask[3];
  assign dataMem_0_3__T_261_en = _T_94 | is_alloc;
  assign dataMem_0_4__T_8_addr = dataMem_0_4__T_8_addr_pipe_0;
  assign dataMem_0_4__T_8_data = dataMem_0_4[dataMem_0_4__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_4__T_106_addr = dataMem_0_4__T_106_addr_pipe_0;
  assign dataMem_0_4__T_106_data = dataMem_0_4[dataMem_0_4__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_4__T_261_data = wdata[39:32];
  assign dataMem_0_4__T_261_addr = addr_reg[13:6];
  assign dataMem_0_4__T_261_mask = wmask[4];
  assign dataMem_0_4__T_261_en = _T_94 | is_alloc;
  assign dataMem_0_5__T_8_addr = dataMem_0_5__T_8_addr_pipe_0;
  assign dataMem_0_5__T_8_data = dataMem_0_5[dataMem_0_5__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_5__T_106_addr = dataMem_0_5__T_106_addr_pipe_0;
  assign dataMem_0_5__T_106_data = dataMem_0_5[dataMem_0_5__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_5__T_261_data = wdata[47:40];
  assign dataMem_0_5__T_261_addr = addr_reg[13:6];
  assign dataMem_0_5__T_261_mask = wmask[5];
  assign dataMem_0_5__T_261_en = _T_94 | is_alloc;
  assign dataMem_0_6__T_8_addr = dataMem_0_6__T_8_addr_pipe_0;
  assign dataMem_0_6__T_8_data = dataMem_0_6[dataMem_0_6__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_6__T_106_addr = dataMem_0_6__T_106_addr_pipe_0;
  assign dataMem_0_6__T_106_data = dataMem_0_6[dataMem_0_6__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_6__T_261_data = wdata[55:48];
  assign dataMem_0_6__T_261_addr = addr_reg[13:6];
  assign dataMem_0_6__T_261_mask = wmask[6];
  assign dataMem_0_6__T_261_en = _T_94 | is_alloc;
  assign dataMem_0_7__T_8_addr = dataMem_0_7__T_8_addr_pipe_0;
  assign dataMem_0_7__T_8_data = dataMem_0_7[dataMem_0_7__T_8_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_7__T_106_addr = dataMem_0_7__T_106_addr_pipe_0;
  assign dataMem_0_7__T_106_data = dataMem_0_7[dataMem_0_7__T_106_addr]; // @[AXICache.scala 721:45]
  assign dataMem_0_7__T_261_data = wdata[63:56];
  assign dataMem_0_7__T_261_addr = addr_reg[13:6];
  assign dataMem_0_7__T_261_mask = wmask[7];
  assign dataMem_0_7__T_261_en = _T_94 | is_alloc;
  assign dataMem_1_0__T_18_addr = dataMem_1_0__T_18_addr_pipe_0;
  assign dataMem_1_0__T_18_data = dataMem_1_0[dataMem_1_0__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_0__T_117_addr = dataMem_1_0__T_117_addr_pipe_0;
  assign dataMem_1_0__T_117_data = dataMem_1_0[dataMem_1_0__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_0__T_280_data = wdata[71:64];
  assign dataMem_1_0__T_280_addr = addr_reg[13:6];
  assign dataMem_1_0__T_280_mask = wmask[8];
  assign dataMem_1_0__T_280_en = _T_94 | is_alloc;
  assign dataMem_1_1__T_18_addr = dataMem_1_1__T_18_addr_pipe_0;
  assign dataMem_1_1__T_18_data = dataMem_1_1[dataMem_1_1__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_1__T_117_addr = dataMem_1_1__T_117_addr_pipe_0;
  assign dataMem_1_1__T_117_data = dataMem_1_1[dataMem_1_1__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_1__T_280_data = wdata[79:72];
  assign dataMem_1_1__T_280_addr = addr_reg[13:6];
  assign dataMem_1_1__T_280_mask = wmask[9];
  assign dataMem_1_1__T_280_en = _T_94 | is_alloc;
  assign dataMem_1_2__T_18_addr = dataMem_1_2__T_18_addr_pipe_0;
  assign dataMem_1_2__T_18_data = dataMem_1_2[dataMem_1_2__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_2__T_117_addr = dataMem_1_2__T_117_addr_pipe_0;
  assign dataMem_1_2__T_117_data = dataMem_1_2[dataMem_1_2__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_2__T_280_data = wdata[87:80];
  assign dataMem_1_2__T_280_addr = addr_reg[13:6];
  assign dataMem_1_2__T_280_mask = wmask[10];
  assign dataMem_1_2__T_280_en = _T_94 | is_alloc;
  assign dataMem_1_3__T_18_addr = dataMem_1_3__T_18_addr_pipe_0;
  assign dataMem_1_3__T_18_data = dataMem_1_3[dataMem_1_3__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_3__T_117_addr = dataMem_1_3__T_117_addr_pipe_0;
  assign dataMem_1_3__T_117_data = dataMem_1_3[dataMem_1_3__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_3__T_280_data = wdata[95:88];
  assign dataMem_1_3__T_280_addr = addr_reg[13:6];
  assign dataMem_1_3__T_280_mask = wmask[11];
  assign dataMem_1_3__T_280_en = _T_94 | is_alloc;
  assign dataMem_1_4__T_18_addr = dataMem_1_4__T_18_addr_pipe_0;
  assign dataMem_1_4__T_18_data = dataMem_1_4[dataMem_1_4__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_4__T_117_addr = dataMem_1_4__T_117_addr_pipe_0;
  assign dataMem_1_4__T_117_data = dataMem_1_4[dataMem_1_4__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_4__T_280_data = wdata[103:96];
  assign dataMem_1_4__T_280_addr = addr_reg[13:6];
  assign dataMem_1_4__T_280_mask = wmask[12];
  assign dataMem_1_4__T_280_en = _T_94 | is_alloc;
  assign dataMem_1_5__T_18_addr = dataMem_1_5__T_18_addr_pipe_0;
  assign dataMem_1_5__T_18_data = dataMem_1_5[dataMem_1_5__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_5__T_117_addr = dataMem_1_5__T_117_addr_pipe_0;
  assign dataMem_1_5__T_117_data = dataMem_1_5[dataMem_1_5__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_5__T_280_data = wdata[111:104];
  assign dataMem_1_5__T_280_addr = addr_reg[13:6];
  assign dataMem_1_5__T_280_mask = wmask[13];
  assign dataMem_1_5__T_280_en = _T_94 | is_alloc;
  assign dataMem_1_6__T_18_addr = dataMem_1_6__T_18_addr_pipe_0;
  assign dataMem_1_6__T_18_data = dataMem_1_6[dataMem_1_6__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_6__T_117_addr = dataMem_1_6__T_117_addr_pipe_0;
  assign dataMem_1_6__T_117_data = dataMem_1_6[dataMem_1_6__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_6__T_280_data = wdata[119:112];
  assign dataMem_1_6__T_280_addr = addr_reg[13:6];
  assign dataMem_1_6__T_280_mask = wmask[14];
  assign dataMem_1_6__T_280_en = _T_94 | is_alloc;
  assign dataMem_1_7__T_18_addr = dataMem_1_7__T_18_addr_pipe_0;
  assign dataMem_1_7__T_18_data = dataMem_1_7[dataMem_1_7__T_18_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_7__T_117_addr = dataMem_1_7__T_117_addr_pipe_0;
  assign dataMem_1_7__T_117_data = dataMem_1_7[dataMem_1_7__T_117_addr]; // @[AXICache.scala 721:45]
  assign dataMem_1_7__T_280_data = wdata[127:120];
  assign dataMem_1_7__T_280_addr = addr_reg[13:6];
  assign dataMem_1_7__T_280_mask = wmask[15];
  assign dataMem_1_7__T_280_en = _T_94 | is_alloc;
  assign dataMem_2_0__T_28_addr = dataMem_2_0__T_28_addr_pipe_0;
  assign dataMem_2_0__T_28_data = dataMem_2_0[dataMem_2_0__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_0__T_128_addr = dataMem_2_0__T_128_addr_pipe_0;
  assign dataMem_2_0__T_128_data = dataMem_2_0[dataMem_2_0__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_0__T_299_data = wdata[135:128];
  assign dataMem_2_0__T_299_addr = addr_reg[13:6];
  assign dataMem_2_0__T_299_mask = wmask[16];
  assign dataMem_2_0__T_299_en = _T_94 | is_alloc;
  assign dataMem_2_1__T_28_addr = dataMem_2_1__T_28_addr_pipe_0;
  assign dataMem_2_1__T_28_data = dataMem_2_1[dataMem_2_1__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_1__T_128_addr = dataMem_2_1__T_128_addr_pipe_0;
  assign dataMem_2_1__T_128_data = dataMem_2_1[dataMem_2_1__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_1__T_299_data = wdata[143:136];
  assign dataMem_2_1__T_299_addr = addr_reg[13:6];
  assign dataMem_2_1__T_299_mask = wmask[17];
  assign dataMem_2_1__T_299_en = _T_94 | is_alloc;
  assign dataMem_2_2__T_28_addr = dataMem_2_2__T_28_addr_pipe_0;
  assign dataMem_2_2__T_28_data = dataMem_2_2[dataMem_2_2__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_2__T_128_addr = dataMem_2_2__T_128_addr_pipe_0;
  assign dataMem_2_2__T_128_data = dataMem_2_2[dataMem_2_2__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_2__T_299_data = wdata[151:144];
  assign dataMem_2_2__T_299_addr = addr_reg[13:6];
  assign dataMem_2_2__T_299_mask = wmask[18];
  assign dataMem_2_2__T_299_en = _T_94 | is_alloc;
  assign dataMem_2_3__T_28_addr = dataMem_2_3__T_28_addr_pipe_0;
  assign dataMem_2_3__T_28_data = dataMem_2_3[dataMem_2_3__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_3__T_128_addr = dataMem_2_3__T_128_addr_pipe_0;
  assign dataMem_2_3__T_128_data = dataMem_2_3[dataMem_2_3__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_3__T_299_data = wdata[159:152];
  assign dataMem_2_3__T_299_addr = addr_reg[13:6];
  assign dataMem_2_3__T_299_mask = wmask[19];
  assign dataMem_2_3__T_299_en = _T_94 | is_alloc;
  assign dataMem_2_4__T_28_addr = dataMem_2_4__T_28_addr_pipe_0;
  assign dataMem_2_4__T_28_data = dataMem_2_4[dataMem_2_4__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_4__T_128_addr = dataMem_2_4__T_128_addr_pipe_0;
  assign dataMem_2_4__T_128_data = dataMem_2_4[dataMem_2_4__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_4__T_299_data = wdata[167:160];
  assign dataMem_2_4__T_299_addr = addr_reg[13:6];
  assign dataMem_2_4__T_299_mask = wmask[20];
  assign dataMem_2_4__T_299_en = _T_94 | is_alloc;
  assign dataMem_2_5__T_28_addr = dataMem_2_5__T_28_addr_pipe_0;
  assign dataMem_2_5__T_28_data = dataMem_2_5[dataMem_2_5__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_5__T_128_addr = dataMem_2_5__T_128_addr_pipe_0;
  assign dataMem_2_5__T_128_data = dataMem_2_5[dataMem_2_5__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_5__T_299_data = wdata[175:168];
  assign dataMem_2_5__T_299_addr = addr_reg[13:6];
  assign dataMem_2_5__T_299_mask = wmask[21];
  assign dataMem_2_5__T_299_en = _T_94 | is_alloc;
  assign dataMem_2_6__T_28_addr = dataMem_2_6__T_28_addr_pipe_0;
  assign dataMem_2_6__T_28_data = dataMem_2_6[dataMem_2_6__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_6__T_128_addr = dataMem_2_6__T_128_addr_pipe_0;
  assign dataMem_2_6__T_128_data = dataMem_2_6[dataMem_2_6__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_6__T_299_data = wdata[183:176];
  assign dataMem_2_6__T_299_addr = addr_reg[13:6];
  assign dataMem_2_6__T_299_mask = wmask[22];
  assign dataMem_2_6__T_299_en = _T_94 | is_alloc;
  assign dataMem_2_7__T_28_addr = dataMem_2_7__T_28_addr_pipe_0;
  assign dataMem_2_7__T_28_data = dataMem_2_7[dataMem_2_7__T_28_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_7__T_128_addr = dataMem_2_7__T_128_addr_pipe_0;
  assign dataMem_2_7__T_128_data = dataMem_2_7[dataMem_2_7__T_128_addr]; // @[AXICache.scala 721:45]
  assign dataMem_2_7__T_299_data = wdata[191:184];
  assign dataMem_2_7__T_299_addr = addr_reg[13:6];
  assign dataMem_2_7__T_299_mask = wmask[23];
  assign dataMem_2_7__T_299_en = _T_94 | is_alloc;
  assign dataMem_3_0__T_38_addr = dataMem_3_0__T_38_addr_pipe_0;
  assign dataMem_3_0__T_38_data = dataMem_3_0[dataMem_3_0__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_0__T_139_addr = dataMem_3_0__T_139_addr_pipe_0;
  assign dataMem_3_0__T_139_data = dataMem_3_0[dataMem_3_0__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_0__T_318_data = wdata[199:192];
  assign dataMem_3_0__T_318_addr = addr_reg[13:6];
  assign dataMem_3_0__T_318_mask = wmask[24];
  assign dataMem_3_0__T_318_en = _T_94 | is_alloc;
  assign dataMem_3_1__T_38_addr = dataMem_3_1__T_38_addr_pipe_0;
  assign dataMem_3_1__T_38_data = dataMem_3_1[dataMem_3_1__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_1__T_139_addr = dataMem_3_1__T_139_addr_pipe_0;
  assign dataMem_3_1__T_139_data = dataMem_3_1[dataMem_3_1__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_1__T_318_data = wdata[207:200];
  assign dataMem_3_1__T_318_addr = addr_reg[13:6];
  assign dataMem_3_1__T_318_mask = wmask[25];
  assign dataMem_3_1__T_318_en = _T_94 | is_alloc;
  assign dataMem_3_2__T_38_addr = dataMem_3_2__T_38_addr_pipe_0;
  assign dataMem_3_2__T_38_data = dataMem_3_2[dataMem_3_2__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_2__T_139_addr = dataMem_3_2__T_139_addr_pipe_0;
  assign dataMem_3_2__T_139_data = dataMem_3_2[dataMem_3_2__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_2__T_318_data = wdata[215:208];
  assign dataMem_3_2__T_318_addr = addr_reg[13:6];
  assign dataMem_3_2__T_318_mask = wmask[26];
  assign dataMem_3_2__T_318_en = _T_94 | is_alloc;
  assign dataMem_3_3__T_38_addr = dataMem_3_3__T_38_addr_pipe_0;
  assign dataMem_3_3__T_38_data = dataMem_3_3[dataMem_3_3__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_3__T_139_addr = dataMem_3_3__T_139_addr_pipe_0;
  assign dataMem_3_3__T_139_data = dataMem_3_3[dataMem_3_3__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_3__T_318_data = wdata[223:216];
  assign dataMem_3_3__T_318_addr = addr_reg[13:6];
  assign dataMem_3_3__T_318_mask = wmask[27];
  assign dataMem_3_3__T_318_en = _T_94 | is_alloc;
  assign dataMem_3_4__T_38_addr = dataMem_3_4__T_38_addr_pipe_0;
  assign dataMem_3_4__T_38_data = dataMem_3_4[dataMem_3_4__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_4__T_139_addr = dataMem_3_4__T_139_addr_pipe_0;
  assign dataMem_3_4__T_139_data = dataMem_3_4[dataMem_3_4__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_4__T_318_data = wdata[231:224];
  assign dataMem_3_4__T_318_addr = addr_reg[13:6];
  assign dataMem_3_4__T_318_mask = wmask[28];
  assign dataMem_3_4__T_318_en = _T_94 | is_alloc;
  assign dataMem_3_5__T_38_addr = dataMem_3_5__T_38_addr_pipe_0;
  assign dataMem_3_5__T_38_data = dataMem_3_5[dataMem_3_5__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_5__T_139_addr = dataMem_3_5__T_139_addr_pipe_0;
  assign dataMem_3_5__T_139_data = dataMem_3_5[dataMem_3_5__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_5__T_318_data = wdata[239:232];
  assign dataMem_3_5__T_318_addr = addr_reg[13:6];
  assign dataMem_3_5__T_318_mask = wmask[29];
  assign dataMem_3_5__T_318_en = _T_94 | is_alloc;
  assign dataMem_3_6__T_38_addr = dataMem_3_6__T_38_addr_pipe_0;
  assign dataMem_3_6__T_38_data = dataMem_3_6[dataMem_3_6__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_6__T_139_addr = dataMem_3_6__T_139_addr_pipe_0;
  assign dataMem_3_6__T_139_data = dataMem_3_6[dataMem_3_6__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_6__T_318_data = wdata[247:240];
  assign dataMem_3_6__T_318_addr = addr_reg[13:6];
  assign dataMem_3_6__T_318_mask = wmask[30];
  assign dataMem_3_6__T_318_en = _T_94 | is_alloc;
  assign dataMem_3_7__T_38_addr = dataMem_3_7__T_38_addr_pipe_0;
  assign dataMem_3_7__T_38_data = dataMem_3_7[dataMem_3_7__T_38_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_7__T_139_addr = dataMem_3_7__T_139_addr_pipe_0;
  assign dataMem_3_7__T_139_data = dataMem_3_7[dataMem_3_7__T_139_addr]; // @[AXICache.scala 721:45]
  assign dataMem_3_7__T_318_data = wdata[255:248];
  assign dataMem_3_7__T_318_addr = addr_reg[13:6];
  assign dataMem_3_7__T_318_mask = wmask[31];
  assign dataMem_3_7__T_318_en = _T_94 | is_alloc;
  assign dataMem_4_0__T_48_addr = dataMem_4_0__T_48_addr_pipe_0;
  assign dataMem_4_0__T_48_data = dataMem_4_0[dataMem_4_0__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_0__T_150_addr = dataMem_4_0__T_150_addr_pipe_0;
  assign dataMem_4_0__T_150_data = dataMem_4_0[dataMem_4_0__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_0__T_337_data = wdata[263:256];
  assign dataMem_4_0__T_337_addr = addr_reg[13:6];
  assign dataMem_4_0__T_337_mask = wmask[32];
  assign dataMem_4_0__T_337_en = _T_94 | is_alloc;
  assign dataMem_4_1__T_48_addr = dataMem_4_1__T_48_addr_pipe_0;
  assign dataMem_4_1__T_48_data = dataMem_4_1[dataMem_4_1__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_1__T_150_addr = dataMem_4_1__T_150_addr_pipe_0;
  assign dataMem_4_1__T_150_data = dataMem_4_1[dataMem_4_1__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_1__T_337_data = wdata[271:264];
  assign dataMem_4_1__T_337_addr = addr_reg[13:6];
  assign dataMem_4_1__T_337_mask = wmask[33];
  assign dataMem_4_1__T_337_en = _T_94 | is_alloc;
  assign dataMem_4_2__T_48_addr = dataMem_4_2__T_48_addr_pipe_0;
  assign dataMem_4_2__T_48_data = dataMem_4_2[dataMem_4_2__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_2__T_150_addr = dataMem_4_2__T_150_addr_pipe_0;
  assign dataMem_4_2__T_150_data = dataMem_4_2[dataMem_4_2__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_2__T_337_data = wdata[279:272];
  assign dataMem_4_2__T_337_addr = addr_reg[13:6];
  assign dataMem_4_2__T_337_mask = wmask[34];
  assign dataMem_4_2__T_337_en = _T_94 | is_alloc;
  assign dataMem_4_3__T_48_addr = dataMem_4_3__T_48_addr_pipe_0;
  assign dataMem_4_3__T_48_data = dataMem_4_3[dataMem_4_3__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_3__T_150_addr = dataMem_4_3__T_150_addr_pipe_0;
  assign dataMem_4_3__T_150_data = dataMem_4_3[dataMem_4_3__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_3__T_337_data = wdata[287:280];
  assign dataMem_4_3__T_337_addr = addr_reg[13:6];
  assign dataMem_4_3__T_337_mask = wmask[35];
  assign dataMem_4_3__T_337_en = _T_94 | is_alloc;
  assign dataMem_4_4__T_48_addr = dataMem_4_4__T_48_addr_pipe_0;
  assign dataMem_4_4__T_48_data = dataMem_4_4[dataMem_4_4__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_4__T_150_addr = dataMem_4_4__T_150_addr_pipe_0;
  assign dataMem_4_4__T_150_data = dataMem_4_4[dataMem_4_4__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_4__T_337_data = wdata[295:288];
  assign dataMem_4_4__T_337_addr = addr_reg[13:6];
  assign dataMem_4_4__T_337_mask = wmask[36];
  assign dataMem_4_4__T_337_en = _T_94 | is_alloc;
  assign dataMem_4_5__T_48_addr = dataMem_4_5__T_48_addr_pipe_0;
  assign dataMem_4_5__T_48_data = dataMem_4_5[dataMem_4_5__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_5__T_150_addr = dataMem_4_5__T_150_addr_pipe_0;
  assign dataMem_4_5__T_150_data = dataMem_4_5[dataMem_4_5__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_5__T_337_data = wdata[303:296];
  assign dataMem_4_5__T_337_addr = addr_reg[13:6];
  assign dataMem_4_5__T_337_mask = wmask[37];
  assign dataMem_4_5__T_337_en = _T_94 | is_alloc;
  assign dataMem_4_6__T_48_addr = dataMem_4_6__T_48_addr_pipe_0;
  assign dataMem_4_6__T_48_data = dataMem_4_6[dataMem_4_6__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_6__T_150_addr = dataMem_4_6__T_150_addr_pipe_0;
  assign dataMem_4_6__T_150_data = dataMem_4_6[dataMem_4_6__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_6__T_337_data = wdata[311:304];
  assign dataMem_4_6__T_337_addr = addr_reg[13:6];
  assign dataMem_4_6__T_337_mask = wmask[38];
  assign dataMem_4_6__T_337_en = _T_94 | is_alloc;
  assign dataMem_4_7__T_48_addr = dataMem_4_7__T_48_addr_pipe_0;
  assign dataMem_4_7__T_48_data = dataMem_4_7[dataMem_4_7__T_48_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_7__T_150_addr = dataMem_4_7__T_150_addr_pipe_0;
  assign dataMem_4_7__T_150_data = dataMem_4_7[dataMem_4_7__T_150_addr]; // @[AXICache.scala 721:45]
  assign dataMem_4_7__T_337_data = wdata[319:312];
  assign dataMem_4_7__T_337_addr = addr_reg[13:6];
  assign dataMem_4_7__T_337_mask = wmask[39];
  assign dataMem_4_7__T_337_en = _T_94 | is_alloc;
  assign dataMem_5_0__T_58_addr = dataMem_5_0__T_58_addr_pipe_0;
  assign dataMem_5_0__T_58_data = dataMem_5_0[dataMem_5_0__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_0__T_161_addr = dataMem_5_0__T_161_addr_pipe_0;
  assign dataMem_5_0__T_161_data = dataMem_5_0[dataMem_5_0__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_0__T_356_data = wdata[327:320];
  assign dataMem_5_0__T_356_addr = addr_reg[13:6];
  assign dataMem_5_0__T_356_mask = wmask[40];
  assign dataMem_5_0__T_356_en = _T_94 | is_alloc;
  assign dataMem_5_1__T_58_addr = dataMem_5_1__T_58_addr_pipe_0;
  assign dataMem_5_1__T_58_data = dataMem_5_1[dataMem_5_1__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_1__T_161_addr = dataMem_5_1__T_161_addr_pipe_0;
  assign dataMem_5_1__T_161_data = dataMem_5_1[dataMem_5_1__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_1__T_356_data = wdata[335:328];
  assign dataMem_5_1__T_356_addr = addr_reg[13:6];
  assign dataMem_5_1__T_356_mask = wmask[41];
  assign dataMem_5_1__T_356_en = _T_94 | is_alloc;
  assign dataMem_5_2__T_58_addr = dataMem_5_2__T_58_addr_pipe_0;
  assign dataMem_5_2__T_58_data = dataMem_5_2[dataMem_5_2__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_2__T_161_addr = dataMem_5_2__T_161_addr_pipe_0;
  assign dataMem_5_2__T_161_data = dataMem_5_2[dataMem_5_2__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_2__T_356_data = wdata[343:336];
  assign dataMem_5_2__T_356_addr = addr_reg[13:6];
  assign dataMem_5_2__T_356_mask = wmask[42];
  assign dataMem_5_2__T_356_en = _T_94 | is_alloc;
  assign dataMem_5_3__T_58_addr = dataMem_5_3__T_58_addr_pipe_0;
  assign dataMem_5_3__T_58_data = dataMem_5_3[dataMem_5_3__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_3__T_161_addr = dataMem_5_3__T_161_addr_pipe_0;
  assign dataMem_5_3__T_161_data = dataMem_5_3[dataMem_5_3__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_3__T_356_data = wdata[351:344];
  assign dataMem_5_3__T_356_addr = addr_reg[13:6];
  assign dataMem_5_3__T_356_mask = wmask[43];
  assign dataMem_5_3__T_356_en = _T_94 | is_alloc;
  assign dataMem_5_4__T_58_addr = dataMem_5_4__T_58_addr_pipe_0;
  assign dataMem_5_4__T_58_data = dataMem_5_4[dataMem_5_4__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_4__T_161_addr = dataMem_5_4__T_161_addr_pipe_0;
  assign dataMem_5_4__T_161_data = dataMem_5_4[dataMem_5_4__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_4__T_356_data = wdata[359:352];
  assign dataMem_5_4__T_356_addr = addr_reg[13:6];
  assign dataMem_5_4__T_356_mask = wmask[44];
  assign dataMem_5_4__T_356_en = _T_94 | is_alloc;
  assign dataMem_5_5__T_58_addr = dataMem_5_5__T_58_addr_pipe_0;
  assign dataMem_5_5__T_58_data = dataMem_5_5[dataMem_5_5__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_5__T_161_addr = dataMem_5_5__T_161_addr_pipe_0;
  assign dataMem_5_5__T_161_data = dataMem_5_5[dataMem_5_5__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_5__T_356_data = wdata[367:360];
  assign dataMem_5_5__T_356_addr = addr_reg[13:6];
  assign dataMem_5_5__T_356_mask = wmask[45];
  assign dataMem_5_5__T_356_en = _T_94 | is_alloc;
  assign dataMem_5_6__T_58_addr = dataMem_5_6__T_58_addr_pipe_0;
  assign dataMem_5_6__T_58_data = dataMem_5_6[dataMem_5_6__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_6__T_161_addr = dataMem_5_6__T_161_addr_pipe_0;
  assign dataMem_5_6__T_161_data = dataMem_5_6[dataMem_5_6__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_6__T_356_data = wdata[375:368];
  assign dataMem_5_6__T_356_addr = addr_reg[13:6];
  assign dataMem_5_6__T_356_mask = wmask[46];
  assign dataMem_5_6__T_356_en = _T_94 | is_alloc;
  assign dataMem_5_7__T_58_addr = dataMem_5_7__T_58_addr_pipe_0;
  assign dataMem_5_7__T_58_data = dataMem_5_7[dataMem_5_7__T_58_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_7__T_161_addr = dataMem_5_7__T_161_addr_pipe_0;
  assign dataMem_5_7__T_161_data = dataMem_5_7[dataMem_5_7__T_161_addr]; // @[AXICache.scala 721:45]
  assign dataMem_5_7__T_356_data = wdata[383:376];
  assign dataMem_5_7__T_356_addr = addr_reg[13:6];
  assign dataMem_5_7__T_356_mask = wmask[47];
  assign dataMem_5_7__T_356_en = _T_94 | is_alloc;
  assign dataMem_6_0__T_68_addr = dataMem_6_0__T_68_addr_pipe_0;
  assign dataMem_6_0__T_68_data = dataMem_6_0[dataMem_6_0__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_0__T_172_addr = dataMem_6_0__T_172_addr_pipe_0;
  assign dataMem_6_0__T_172_data = dataMem_6_0[dataMem_6_0__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_0__T_375_data = wdata[391:384];
  assign dataMem_6_0__T_375_addr = addr_reg[13:6];
  assign dataMem_6_0__T_375_mask = wmask[48];
  assign dataMem_6_0__T_375_en = _T_94 | is_alloc;
  assign dataMem_6_1__T_68_addr = dataMem_6_1__T_68_addr_pipe_0;
  assign dataMem_6_1__T_68_data = dataMem_6_1[dataMem_6_1__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_1__T_172_addr = dataMem_6_1__T_172_addr_pipe_0;
  assign dataMem_6_1__T_172_data = dataMem_6_1[dataMem_6_1__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_1__T_375_data = wdata[399:392];
  assign dataMem_6_1__T_375_addr = addr_reg[13:6];
  assign dataMem_6_1__T_375_mask = wmask[49];
  assign dataMem_6_1__T_375_en = _T_94 | is_alloc;
  assign dataMem_6_2__T_68_addr = dataMem_6_2__T_68_addr_pipe_0;
  assign dataMem_6_2__T_68_data = dataMem_6_2[dataMem_6_2__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_2__T_172_addr = dataMem_6_2__T_172_addr_pipe_0;
  assign dataMem_6_2__T_172_data = dataMem_6_2[dataMem_6_2__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_2__T_375_data = wdata[407:400];
  assign dataMem_6_2__T_375_addr = addr_reg[13:6];
  assign dataMem_6_2__T_375_mask = wmask[50];
  assign dataMem_6_2__T_375_en = _T_94 | is_alloc;
  assign dataMem_6_3__T_68_addr = dataMem_6_3__T_68_addr_pipe_0;
  assign dataMem_6_3__T_68_data = dataMem_6_3[dataMem_6_3__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_3__T_172_addr = dataMem_6_3__T_172_addr_pipe_0;
  assign dataMem_6_3__T_172_data = dataMem_6_3[dataMem_6_3__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_3__T_375_data = wdata[415:408];
  assign dataMem_6_3__T_375_addr = addr_reg[13:6];
  assign dataMem_6_3__T_375_mask = wmask[51];
  assign dataMem_6_3__T_375_en = _T_94 | is_alloc;
  assign dataMem_6_4__T_68_addr = dataMem_6_4__T_68_addr_pipe_0;
  assign dataMem_6_4__T_68_data = dataMem_6_4[dataMem_6_4__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_4__T_172_addr = dataMem_6_4__T_172_addr_pipe_0;
  assign dataMem_6_4__T_172_data = dataMem_6_4[dataMem_6_4__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_4__T_375_data = wdata[423:416];
  assign dataMem_6_4__T_375_addr = addr_reg[13:6];
  assign dataMem_6_4__T_375_mask = wmask[52];
  assign dataMem_6_4__T_375_en = _T_94 | is_alloc;
  assign dataMem_6_5__T_68_addr = dataMem_6_5__T_68_addr_pipe_0;
  assign dataMem_6_5__T_68_data = dataMem_6_5[dataMem_6_5__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_5__T_172_addr = dataMem_6_5__T_172_addr_pipe_0;
  assign dataMem_6_5__T_172_data = dataMem_6_5[dataMem_6_5__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_5__T_375_data = wdata[431:424];
  assign dataMem_6_5__T_375_addr = addr_reg[13:6];
  assign dataMem_6_5__T_375_mask = wmask[53];
  assign dataMem_6_5__T_375_en = _T_94 | is_alloc;
  assign dataMem_6_6__T_68_addr = dataMem_6_6__T_68_addr_pipe_0;
  assign dataMem_6_6__T_68_data = dataMem_6_6[dataMem_6_6__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_6__T_172_addr = dataMem_6_6__T_172_addr_pipe_0;
  assign dataMem_6_6__T_172_data = dataMem_6_6[dataMem_6_6__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_6__T_375_data = wdata[439:432];
  assign dataMem_6_6__T_375_addr = addr_reg[13:6];
  assign dataMem_6_6__T_375_mask = wmask[54];
  assign dataMem_6_6__T_375_en = _T_94 | is_alloc;
  assign dataMem_6_7__T_68_addr = dataMem_6_7__T_68_addr_pipe_0;
  assign dataMem_6_7__T_68_data = dataMem_6_7[dataMem_6_7__T_68_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_7__T_172_addr = dataMem_6_7__T_172_addr_pipe_0;
  assign dataMem_6_7__T_172_data = dataMem_6_7[dataMem_6_7__T_172_addr]; // @[AXICache.scala 721:45]
  assign dataMem_6_7__T_375_data = wdata[447:440];
  assign dataMem_6_7__T_375_addr = addr_reg[13:6];
  assign dataMem_6_7__T_375_mask = wmask[55];
  assign dataMem_6_7__T_375_en = _T_94 | is_alloc;
  assign dataMem_7_0__T_78_addr = dataMem_7_0__T_78_addr_pipe_0;
  assign dataMem_7_0__T_78_data = dataMem_7_0[dataMem_7_0__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_0__T_183_addr = dataMem_7_0__T_183_addr_pipe_0;
  assign dataMem_7_0__T_183_data = dataMem_7_0[dataMem_7_0__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_0__T_394_data = wdata[455:448];
  assign dataMem_7_0__T_394_addr = addr_reg[13:6];
  assign dataMem_7_0__T_394_mask = wmask[56];
  assign dataMem_7_0__T_394_en = _T_94 | is_alloc;
  assign dataMem_7_1__T_78_addr = dataMem_7_1__T_78_addr_pipe_0;
  assign dataMem_7_1__T_78_data = dataMem_7_1[dataMem_7_1__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_1__T_183_addr = dataMem_7_1__T_183_addr_pipe_0;
  assign dataMem_7_1__T_183_data = dataMem_7_1[dataMem_7_1__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_1__T_394_data = wdata[463:456];
  assign dataMem_7_1__T_394_addr = addr_reg[13:6];
  assign dataMem_7_1__T_394_mask = wmask[57];
  assign dataMem_7_1__T_394_en = _T_94 | is_alloc;
  assign dataMem_7_2__T_78_addr = dataMem_7_2__T_78_addr_pipe_0;
  assign dataMem_7_2__T_78_data = dataMem_7_2[dataMem_7_2__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_2__T_183_addr = dataMem_7_2__T_183_addr_pipe_0;
  assign dataMem_7_2__T_183_data = dataMem_7_2[dataMem_7_2__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_2__T_394_data = wdata[471:464];
  assign dataMem_7_2__T_394_addr = addr_reg[13:6];
  assign dataMem_7_2__T_394_mask = wmask[58];
  assign dataMem_7_2__T_394_en = _T_94 | is_alloc;
  assign dataMem_7_3__T_78_addr = dataMem_7_3__T_78_addr_pipe_0;
  assign dataMem_7_3__T_78_data = dataMem_7_3[dataMem_7_3__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_3__T_183_addr = dataMem_7_3__T_183_addr_pipe_0;
  assign dataMem_7_3__T_183_data = dataMem_7_3[dataMem_7_3__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_3__T_394_data = wdata[479:472];
  assign dataMem_7_3__T_394_addr = addr_reg[13:6];
  assign dataMem_7_3__T_394_mask = wmask[59];
  assign dataMem_7_3__T_394_en = _T_94 | is_alloc;
  assign dataMem_7_4__T_78_addr = dataMem_7_4__T_78_addr_pipe_0;
  assign dataMem_7_4__T_78_data = dataMem_7_4[dataMem_7_4__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_4__T_183_addr = dataMem_7_4__T_183_addr_pipe_0;
  assign dataMem_7_4__T_183_data = dataMem_7_4[dataMem_7_4__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_4__T_394_data = wdata[487:480];
  assign dataMem_7_4__T_394_addr = addr_reg[13:6];
  assign dataMem_7_4__T_394_mask = wmask[60];
  assign dataMem_7_4__T_394_en = _T_94 | is_alloc;
  assign dataMem_7_5__T_78_addr = dataMem_7_5__T_78_addr_pipe_0;
  assign dataMem_7_5__T_78_data = dataMem_7_5[dataMem_7_5__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_5__T_183_addr = dataMem_7_5__T_183_addr_pipe_0;
  assign dataMem_7_5__T_183_data = dataMem_7_5[dataMem_7_5__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_5__T_394_data = wdata[495:488];
  assign dataMem_7_5__T_394_addr = addr_reg[13:6];
  assign dataMem_7_5__T_394_mask = wmask[61];
  assign dataMem_7_5__T_394_en = _T_94 | is_alloc;
  assign dataMem_7_6__T_78_addr = dataMem_7_6__T_78_addr_pipe_0;
  assign dataMem_7_6__T_78_data = dataMem_7_6[dataMem_7_6__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_6__T_183_addr = dataMem_7_6__T_183_addr_pipe_0;
  assign dataMem_7_6__T_183_data = dataMem_7_6[dataMem_7_6__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_6__T_394_data = wdata[503:496];
  assign dataMem_7_6__T_394_addr = addr_reg[13:6];
  assign dataMem_7_6__T_394_mask = wmask[62];
  assign dataMem_7_6__T_394_en = _T_94 | is_alloc;
  assign dataMem_7_7__T_78_addr = dataMem_7_7__T_78_addr_pipe_0;
  assign dataMem_7_7__T_78_data = dataMem_7_7[dataMem_7_7__T_78_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_7__T_183_addr = dataMem_7_7__T_183_addr_pipe_0;
  assign dataMem_7_7__T_183_data = dataMem_7_7[dataMem_7_7__T_183_addr]; // @[AXICache.scala 721:45]
  assign dataMem_7_7__T_394_data = wdata[511:504];
  assign dataMem_7_7__T_394_addr = addr_reg[13:6];
  assign dataMem_7_7__T_394_mask = wmask[63];
  assign dataMem_7_7__T_394_en = _T_94 | is_alloc;
  assign io_cpu_flush_done = _T_446 ? 1'h0 : _GEN_362; // @[AXICache.scala 846:21 AXICache.scala 920:27]
  assign io_cpu_req_ready = is_idle | _T_203; // @[AXICache.scala 765:20]
  assign io_cpu_resp_valid = _T_204 | _T_218; // @[AXICache.scala 769:21]
  assign io_cpu_resp_bits_data = 3'h7 == off_reg ? read[511:448] : _GEN_23; // @[AXICache.scala 768:25]
  assign io_cpu_resp_bits_tag = cpu_tag_reg; // @[AXICache.scala 771:24]
  assign io_mem_rd_cmd_valid = _T_446 ? _GEN_340 : _GEN_366; // @[AXICache.scala 814:23 AXICache.scala 865:29 AXICache.scala 878:29 AXICache.scala 898:27 AXICache.scala 952:27]
  assign io_mem_rd_cmd_bits_addr = _T_396[63:0]; // @[AXICache.scala 812:27]
  assign io_mem_rd_data_ready = state == 3'h6; // @[AXICache.scala 817:24]
  assign io_mem_wr_cmd_valid = _T_446 ? _GEN_339 : _GEN_365; // @[AXICache.scala 837:23 AXICache.scala 864:29 AXICache.scala 877:29 AXICache.scala 951:27]
  assign io_mem_wr_cmd_bits_addr = _T_414[63:0]; // @[AXICache.scala 835:27]
  assign io_mem_wr_data_valid = _T_446 ? _GEN_341 : _GEN_367; // @[AXICache.scala 843:24 AXICache.scala 887:28 AXICache.scala 962:28]
  assign io_mem_wr_data_bits = flush_mode ? dirty_cache_block : read; // @[AXICache.scala 840:23]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    metaMem_tag[initvar] = _RAND_0[49:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_0[initvar] = _RAND_5[7:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_1[initvar] = _RAND_9[7:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_2[initvar] = _RAND_13[7:0];
  _RAND_17 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_3[initvar] = _RAND_17[7:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_4[initvar] = _RAND_21[7:0];
  _RAND_25 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_5[initvar] = _RAND_25[7:0];
  _RAND_29 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_6[initvar] = _RAND_29[7:0];
  _RAND_33 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_0_7[initvar] = _RAND_33[7:0];
  _RAND_37 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_0[initvar] = _RAND_37[7:0];
  _RAND_41 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_1[initvar] = _RAND_41[7:0];
  _RAND_45 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_2[initvar] = _RAND_45[7:0];
  _RAND_49 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_3[initvar] = _RAND_49[7:0];
  _RAND_53 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_4[initvar] = _RAND_53[7:0];
  _RAND_57 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_5[initvar] = _RAND_57[7:0];
  _RAND_61 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_6[initvar] = _RAND_61[7:0];
  _RAND_65 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_1_7[initvar] = _RAND_65[7:0];
  _RAND_69 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_0[initvar] = _RAND_69[7:0];
  _RAND_73 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_1[initvar] = _RAND_73[7:0];
  _RAND_77 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_2[initvar] = _RAND_77[7:0];
  _RAND_81 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_3[initvar] = _RAND_81[7:0];
  _RAND_85 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_4[initvar] = _RAND_85[7:0];
  _RAND_89 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_5[initvar] = _RAND_89[7:0];
  _RAND_93 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_6[initvar] = _RAND_93[7:0];
  _RAND_97 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_2_7[initvar] = _RAND_97[7:0];
  _RAND_101 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_0[initvar] = _RAND_101[7:0];
  _RAND_105 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_1[initvar] = _RAND_105[7:0];
  _RAND_109 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_2[initvar] = _RAND_109[7:0];
  _RAND_113 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_3[initvar] = _RAND_113[7:0];
  _RAND_117 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_4[initvar] = _RAND_117[7:0];
  _RAND_121 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_5[initvar] = _RAND_121[7:0];
  _RAND_125 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_6[initvar] = _RAND_125[7:0];
  _RAND_129 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_3_7[initvar] = _RAND_129[7:0];
  _RAND_133 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_0[initvar] = _RAND_133[7:0];
  _RAND_137 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_1[initvar] = _RAND_137[7:0];
  _RAND_141 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_2[initvar] = _RAND_141[7:0];
  _RAND_145 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_3[initvar] = _RAND_145[7:0];
  _RAND_149 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_4[initvar] = _RAND_149[7:0];
  _RAND_153 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_5[initvar] = _RAND_153[7:0];
  _RAND_157 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_6[initvar] = _RAND_157[7:0];
  _RAND_161 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_4_7[initvar] = _RAND_161[7:0];
  _RAND_165 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_0[initvar] = _RAND_165[7:0];
  _RAND_169 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_1[initvar] = _RAND_169[7:0];
  _RAND_173 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_2[initvar] = _RAND_173[7:0];
  _RAND_177 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_3[initvar] = _RAND_177[7:0];
  _RAND_181 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_4[initvar] = _RAND_181[7:0];
  _RAND_185 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_5[initvar] = _RAND_185[7:0];
  _RAND_189 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_6[initvar] = _RAND_189[7:0];
  _RAND_193 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_5_7[initvar] = _RAND_193[7:0];
  _RAND_197 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_0[initvar] = _RAND_197[7:0];
  _RAND_201 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_1[initvar] = _RAND_201[7:0];
  _RAND_205 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_2[initvar] = _RAND_205[7:0];
  _RAND_209 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_3[initvar] = _RAND_209[7:0];
  _RAND_213 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_4[initvar] = _RAND_213[7:0];
  _RAND_217 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_5[initvar] = _RAND_217[7:0];
  _RAND_221 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_6[initvar] = _RAND_221[7:0];
  _RAND_225 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_6_7[initvar] = _RAND_225[7:0];
  _RAND_229 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_0[initvar] = _RAND_229[7:0];
  _RAND_233 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_1[initvar] = _RAND_233[7:0];
  _RAND_237 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_2[initvar] = _RAND_237[7:0];
  _RAND_241 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_3[initvar] = _RAND_241[7:0];
  _RAND_245 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_4[initvar] = _RAND_245[7:0];
  _RAND_249 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_5[initvar] = _RAND_249[7:0];
  _RAND_253 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_6[initvar] = _RAND_253[7:0];
  _RAND_257 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    dataMem_7_7[initvar] = _RAND_257[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  metaMem_tag_rmeta_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  metaMem_tag_rmeta_addr_pipe_0 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  metaMem_tag__T_411_en_pipe_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  metaMem_tag__T_411_addr_pipe_0 = _RAND_4[7:0];
  _RAND_6 = {1{`RANDOM}};
  dataMem_0_0__T_8_addr_pipe_0 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  dataMem_0_0__T_106_en_pipe_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  dataMem_0_0__T_106_addr_pipe_0 = _RAND_8[7:0];
  _RAND_10 = {1{`RANDOM}};
  dataMem_0_1__T_8_addr_pipe_0 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  dataMem_0_1__T_106_en_pipe_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  dataMem_0_1__T_106_addr_pipe_0 = _RAND_12[7:0];
  _RAND_14 = {1{`RANDOM}};
  dataMem_0_2__T_8_addr_pipe_0 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  dataMem_0_2__T_106_en_pipe_0 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  dataMem_0_2__T_106_addr_pipe_0 = _RAND_16[7:0];
  _RAND_18 = {1{`RANDOM}};
  dataMem_0_3__T_8_addr_pipe_0 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  dataMem_0_3__T_106_en_pipe_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  dataMem_0_3__T_106_addr_pipe_0 = _RAND_20[7:0];
  _RAND_22 = {1{`RANDOM}};
  dataMem_0_4__T_8_addr_pipe_0 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  dataMem_0_4__T_106_en_pipe_0 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  dataMem_0_4__T_106_addr_pipe_0 = _RAND_24[7:0];
  _RAND_26 = {1{`RANDOM}};
  dataMem_0_5__T_8_addr_pipe_0 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  dataMem_0_5__T_106_en_pipe_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  dataMem_0_5__T_106_addr_pipe_0 = _RAND_28[7:0];
  _RAND_30 = {1{`RANDOM}};
  dataMem_0_6__T_8_addr_pipe_0 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  dataMem_0_6__T_106_en_pipe_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  dataMem_0_6__T_106_addr_pipe_0 = _RAND_32[7:0];
  _RAND_34 = {1{`RANDOM}};
  dataMem_0_7__T_8_addr_pipe_0 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  dataMem_0_7__T_106_en_pipe_0 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  dataMem_0_7__T_106_addr_pipe_0 = _RAND_36[7:0];
  _RAND_38 = {1{`RANDOM}};
  dataMem_1_0__T_18_addr_pipe_0 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  dataMem_1_0__T_117_en_pipe_0 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  dataMem_1_0__T_117_addr_pipe_0 = _RAND_40[7:0];
  _RAND_42 = {1{`RANDOM}};
  dataMem_1_1__T_18_addr_pipe_0 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  dataMem_1_1__T_117_en_pipe_0 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  dataMem_1_1__T_117_addr_pipe_0 = _RAND_44[7:0];
  _RAND_46 = {1{`RANDOM}};
  dataMem_1_2__T_18_addr_pipe_0 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  dataMem_1_2__T_117_en_pipe_0 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  dataMem_1_2__T_117_addr_pipe_0 = _RAND_48[7:0];
  _RAND_50 = {1{`RANDOM}};
  dataMem_1_3__T_18_addr_pipe_0 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  dataMem_1_3__T_117_en_pipe_0 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  dataMem_1_3__T_117_addr_pipe_0 = _RAND_52[7:0];
  _RAND_54 = {1{`RANDOM}};
  dataMem_1_4__T_18_addr_pipe_0 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  dataMem_1_4__T_117_en_pipe_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  dataMem_1_4__T_117_addr_pipe_0 = _RAND_56[7:0];
  _RAND_58 = {1{`RANDOM}};
  dataMem_1_5__T_18_addr_pipe_0 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  dataMem_1_5__T_117_en_pipe_0 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  dataMem_1_5__T_117_addr_pipe_0 = _RAND_60[7:0];
  _RAND_62 = {1{`RANDOM}};
  dataMem_1_6__T_18_addr_pipe_0 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  dataMem_1_6__T_117_en_pipe_0 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  dataMem_1_6__T_117_addr_pipe_0 = _RAND_64[7:0];
  _RAND_66 = {1{`RANDOM}};
  dataMem_1_7__T_18_addr_pipe_0 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  dataMem_1_7__T_117_en_pipe_0 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  dataMem_1_7__T_117_addr_pipe_0 = _RAND_68[7:0];
  _RAND_70 = {1{`RANDOM}};
  dataMem_2_0__T_28_addr_pipe_0 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  dataMem_2_0__T_128_en_pipe_0 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  dataMem_2_0__T_128_addr_pipe_0 = _RAND_72[7:0];
  _RAND_74 = {1{`RANDOM}};
  dataMem_2_1__T_28_addr_pipe_0 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  dataMem_2_1__T_128_en_pipe_0 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  dataMem_2_1__T_128_addr_pipe_0 = _RAND_76[7:0];
  _RAND_78 = {1{`RANDOM}};
  dataMem_2_2__T_28_addr_pipe_0 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  dataMem_2_2__T_128_en_pipe_0 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  dataMem_2_2__T_128_addr_pipe_0 = _RAND_80[7:0];
  _RAND_82 = {1{`RANDOM}};
  dataMem_2_3__T_28_addr_pipe_0 = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  dataMem_2_3__T_128_en_pipe_0 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  dataMem_2_3__T_128_addr_pipe_0 = _RAND_84[7:0];
  _RAND_86 = {1{`RANDOM}};
  dataMem_2_4__T_28_addr_pipe_0 = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  dataMem_2_4__T_128_en_pipe_0 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  dataMem_2_4__T_128_addr_pipe_0 = _RAND_88[7:0];
  _RAND_90 = {1{`RANDOM}};
  dataMem_2_5__T_28_addr_pipe_0 = _RAND_90[7:0];
  _RAND_91 = {1{`RANDOM}};
  dataMem_2_5__T_128_en_pipe_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  dataMem_2_5__T_128_addr_pipe_0 = _RAND_92[7:0];
  _RAND_94 = {1{`RANDOM}};
  dataMem_2_6__T_28_addr_pipe_0 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  dataMem_2_6__T_128_en_pipe_0 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  dataMem_2_6__T_128_addr_pipe_0 = _RAND_96[7:0];
  _RAND_98 = {1{`RANDOM}};
  dataMem_2_7__T_28_addr_pipe_0 = _RAND_98[7:0];
  _RAND_99 = {1{`RANDOM}};
  dataMem_2_7__T_128_en_pipe_0 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  dataMem_2_7__T_128_addr_pipe_0 = _RAND_100[7:0];
  _RAND_102 = {1{`RANDOM}};
  dataMem_3_0__T_38_addr_pipe_0 = _RAND_102[7:0];
  _RAND_103 = {1{`RANDOM}};
  dataMem_3_0__T_139_en_pipe_0 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  dataMem_3_0__T_139_addr_pipe_0 = _RAND_104[7:0];
  _RAND_106 = {1{`RANDOM}};
  dataMem_3_1__T_38_addr_pipe_0 = _RAND_106[7:0];
  _RAND_107 = {1{`RANDOM}};
  dataMem_3_1__T_139_en_pipe_0 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  dataMem_3_1__T_139_addr_pipe_0 = _RAND_108[7:0];
  _RAND_110 = {1{`RANDOM}};
  dataMem_3_2__T_38_addr_pipe_0 = _RAND_110[7:0];
  _RAND_111 = {1{`RANDOM}};
  dataMem_3_2__T_139_en_pipe_0 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  dataMem_3_2__T_139_addr_pipe_0 = _RAND_112[7:0];
  _RAND_114 = {1{`RANDOM}};
  dataMem_3_3__T_38_addr_pipe_0 = _RAND_114[7:0];
  _RAND_115 = {1{`RANDOM}};
  dataMem_3_3__T_139_en_pipe_0 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  dataMem_3_3__T_139_addr_pipe_0 = _RAND_116[7:0];
  _RAND_118 = {1{`RANDOM}};
  dataMem_3_4__T_38_addr_pipe_0 = _RAND_118[7:0];
  _RAND_119 = {1{`RANDOM}};
  dataMem_3_4__T_139_en_pipe_0 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  dataMem_3_4__T_139_addr_pipe_0 = _RAND_120[7:0];
  _RAND_122 = {1{`RANDOM}};
  dataMem_3_5__T_38_addr_pipe_0 = _RAND_122[7:0];
  _RAND_123 = {1{`RANDOM}};
  dataMem_3_5__T_139_en_pipe_0 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  dataMem_3_5__T_139_addr_pipe_0 = _RAND_124[7:0];
  _RAND_126 = {1{`RANDOM}};
  dataMem_3_6__T_38_addr_pipe_0 = _RAND_126[7:0];
  _RAND_127 = {1{`RANDOM}};
  dataMem_3_6__T_139_en_pipe_0 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  dataMem_3_6__T_139_addr_pipe_0 = _RAND_128[7:0];
  _RAND_130 = {1{`RANDOM}};
  dataMem_3_7__T_38_addr_pipe_0 = _RAND_130[7:0];
  _RAND_131 = {1{`RANDOM}};
  dataMem_3_7__T_139_en_pipe_0 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  dataMem_3_7__T_139_addr_pipe_0 = _RAND_132[7:0];
  _RAND_134 = {1{`RANDOM}};
  dataMem_4_0__T_48_addr_pipe_0 = _RAND_134[7:0];
  _RAND_135 = {1{`RANDOM}};
  dataMem_4_0__T_150_en_pipe_0 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  dataMem_4_0__T_150_addr_pipe_0 = _RAND_136[7:0];
  _RAND_138 = {1{`RANDOM}};
  dataMem_4_1__T_48_addr_pipe_0 = _RAND_138[7:0];
  _RAND_139 = {1{`RANDOM}};
  dataMem_4_1__T_150_en_pipe_0 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  dataMem_4_1__T_150_addr_pipe_0 = _RAND_140[7:0];
  _RAND_142 = {1{`RANDOM}};
  dataMem_4_2__T_48_addr_pipe_0 = _RAND_142[7:0];
  _RAND_143 = {1{`RANDOM}};
  dataMem_4_2__T_150_en_pipe_0 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  dataMem_4_2__T_150_addr_pipe_0 = _RAND_144[7:0];
  _RAND_146 = {1{`RANDOM}};
  dataMem_4_3__T_48_addr_pipe_0 = _RAND_146[7:0];
  _RAND_147 = {1{`RANDOM}};
  dataMem_4_3__T_150_en_pipe_0 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  dataMem_4_3__T_150_addr_pipe_0 = _RAND_148[7:0];
  _RAND_150 = {1{`RANDOM}};
  dataMem_4_4__T_48_addr_pipe_0 = _RAND_150[7:0];
  _RAND_151 = {1{`RANDOM}};
  dataMem_4_4__T_150_en_pipe_0 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  dataMem_4_4__T_150_addr_pipe_0 = _RAND_152[7:0];
  _RAND_154 = {1{`RANDOM}};
  dataMem_4_5__T_48_addr_pipe_0 = _RAND_154[7:0];
  _RAND_155 = {1{`RANDOM}};
  dataMem_4_5__T_150_en_pipe_0 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  dataMem_4_5__T_150_addr_pipe_0 = _RAND_156[7:0];
  _RAND_158 = {1{`RANDOM}};
  dataMem_4_6__T_48_addr_pipe_0 = _RAND_158[7:0];
  _RAND_159 = {1{`RANDOM}};
  dataMem_4_6__T_150_en_pipe_0 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  dataMem_4_6__T_150_addr_pipe_0 = _RAND_160[7:0];
  _RAND_162 = {1{`RANDOM}};
  dataMem_4_7__T_48_addr_pipe_0 = _RAND_162[7:0];
  _RAND_163 = {1{`RANDOM}};
  dataMem_4_7__T_150_en_pipe_0 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  dataMem_4_7__T_150_addr_pipe_0 = _RAND_164[7:0];
  _RAND_166 = {1{`RANDOM}};
  dataMem_5_0__T_58_addr_pipe_0 = _RAND_166[7:0];
  _RAND_167 = {1{`RANDOM}};
  dataMem_5_0__T_161_en_pipe_0 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  dataMem_5_0__T_161_addr_pipe_0 = _RAND_168[7:0];
  _RAND_170 = {1{`RANDOM}};
  dataMem_5_1__T_58_addr_pipe_0 = _RAND_170[7:0];
  _RAND_171 = {1{`RANDOM}};
  dataMem_5_1__T_161_en_pipe_0 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  dataMem_5_1__T_161_addr_pipe_0 = _RAND_172[7:0];
  _RAND_174 = {1{`RANDOM}};
  dataMem_5_2__T_58_addr_pipe_0 = _RAND_174[7:0];
  _RAND_175 = {1{`RANDOM}};
  dataMem_5_2__T_161_en_pipe_0 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  dataMem_5_2__T_161_addr_pipe_0 = _RAND_176[7:0];
  _RAND_178 = {1{`RANDOM}};
  dataMem_5_3__T_58_addr_pipe_0 = _RAND_178[7:0];
  _RAND_179 = {1{`RANDOM}};
  dataMem_5_3__T_161_en_pipe_0 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  dataMem_5_3__T_161_addr_pipe_0 = _RAND_180[7:0];
  _RAND_182 = {1{`RANDOM}};
  dataMem_5_4__T_58_addr_pipe_0 = _RAND_182[7:0];
  _RAND_183 = {1{`RANDOM}};
  dataMem_5_4__T_161_en_pipe_0 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  dataMem_5_4__T_161_addr_pipe_0 = _RAND_184[7:0];
  _RAND_186 = {1{`RANDOM}};
  dataMem_5_5__T_58_addr_pipe_0 = _RAND_186[7:0];
  _RAND_187 = {1{`RANDOM}};
  dataMem_5_5__T_161_en_pipe_0 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  dataMem_5_5__T_161_addr_pipe_0 = _RAND_188[7:0];
  _RAND_190 = {1{`RANDOM}};
  dataMem_5_6__T_58_addr_pipe_0 = _RAND_190[7:0];
  _RAND_191 = {1{`RANDOM}};
  dataMem_5_6__T_161_en_pipe_0 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  dataMem_5_6__T_161_addr_pipe_0 = _RAND_192[7:0];
  _RAND_194 = {1{`RANDOM}};
  dataMem_5_7__T_58_addr_pipe_0 = _RAND_194[7:0];
  _RAND_195 = {1{`RANDOM}};
  dataMem_5_7__T_161_en_pipe_0 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  dataMem_5_7__T_161_addr_pipe_0 = _RAND_196[7:0];
  _RAND_198 = {1{`RANDOM}};
  dataMem_6_0__T_68_addr_pipe_0 = _RAND_198[7:0];
  _RAND_199 = {1{`RANDOM}};
  dataMem_6_0__T_172_en_pipe_0 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  dataMem_6_0__T_172_addr_pipe_0 = _RAND_200[7:0];
  _RAND_202 = {1{`RANDOM}};
  dataMem_6_1__T_68_addr_pipe_0 = _RAND_202[7:0];
  _RAND_203 = {1{`RANDOM}};
  dataMem_6_1__T_172_en_pipe_0 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  dataMem_6_1__T_172_addr_pipe_0 = _RAND_204[7:0];
  _RAND_206 = {1{`RANDOM}};
  dataMem_6_2__T_68_addr_pipe_0 = _RAND_206[7:0];
  _RAND_207 = {1{`RANDOM}};
  dataMem_6_2__T_172_en_pipe_0 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  dataMem_6_2__T_172_addr_pipe_0 = _RAND_208[7:0];
  _RAND_210 = {1{`RANDOM}};
  dataMem_6_3__T_68_addr_pipe_0 = _RAND_210[7:0];
  _RAND_211 = {1{`RANDOM}};
  dataMem_6_3__T_172_en_pipe_0 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  dataMem_6_3__T_172_addr_pipe_0 = _RAND_212[7:0];
  _RAND_214 = {1{`RANDOM}};
  dataMem_6_4__T_68_addr_pipe_0 = _RAND_214[7:0];
  _RAND_215 = {1{`RANDOM}};
  dataMem_6_4__T_172_en_pipe_0 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  dataMem_6_4__T_172_addr_pipe_0 = _RAND_216[7:0];
  _RAND_218 = {1{`RANDOM}};
  dataMem_6_5__T_68_addr_pipe_0 = _RAND_218[7:0];
  _RAND_219 = {1{`RANDOM}};
  dataMem_6_5__T_172_en_pipe_0 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  dataMem_6_5__T_172_addr_pipe_0 = _RAND_220[7:0];
  _RAND_222 = {1{`RANDOM}};
  dataMem_6_6__T_68_addr_pipe_0 = _RAND_222[7:0];
  _RAND_223 = {1{`RANDOM}};
  dataMem_6_6__T_172_en_pipe_0 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  dataMem_6_6__T_172_addr_pipe_0 = _RAND_224[7:0];
  _RAND_226 = {1{`RANDOM}};
  dataMem_6_7__T_68_addr_pipe_0 = _RAND_226[7:0];
  _RAND_227 = {1{`RANDOM}};
  dataMem_6_7__T_172_en_pipe_0 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  dataMem_6_7__T_172_addr_pipe_0 = _RAND_228[7:0];
  _RAND_230 = {1{`RANDOM}};
  dataMem_7_0__T_78_addr_pipe_0 = _RAND_230[7:0];
  _RAND_231 = {1{`RANDOM}};
  dataMem_7_0__T_183_en_pipe_0 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  dataMem_7_0__T_183_addr_pipe_0 = _RAND_232[7:0];
  _RAND_234 = {1{`RANDOM}};
  dataMem_7_1__T_78_addr_pipe_0 = _RAND_234[7:0];
  _RAND_235 = {1{`RANDOM}};
  dataMem_7_1__T_183_en_pipe_0 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  dataMem_7_1__T_183_addr_pipe_0 = _RAND_236[7:0];
  _RAND_238 = {1{`RANDOM}};
  dataMem_7_2__T_78_addr_pipe_0 = _RAND_238[7:0];
  _RAND_239 = {1{`RANDOM}};
  dataMem_7_2__T_183_en_pipe_0 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  dataMem_7_2__T_183_addr_pipe_0 = _RAND_240[7:0];
  _RAND_242 = {1{`RANDOM}};
  dataMem_7_3__T_78_addr_pipe_0 = _RAND_242[7:0];
  _RAND_243 = {1{`RANDOM}};
  dataMem_7_3__T_183_en_pipe_0 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  dataMem_7_3__T_183_addr_pipe_0 = _RAND_244[7:0];
  _RAND_246 = {1{`RANDOM}};
  dataMem_7_4__T_78_addr_pipe_0 = _RAND_246[7:0];
  _RAND_247 = {1{`RANDOM}};
  dataMem_7_4__T_183_en_pipe_0 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  dataMem_7_4__T_183_addr_pipe_0 = _RAND_248[7:0];
  _RAND_250 = {1{`RANDOM}};
  dataMem_7_5__T_78_addr_pipe_0 = _RAND_250[7:0];
  _RAND_251 = {1{`RANDOM}};
  dataMem_7_5__T_183_en_pipe_0 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  dataMem_7_5__T_183_addr_pipe_0 = _RAND_252[7:0];
  _RAND_254 = {1{`RANDOM}};
  dataMem_7_6__T_78_addr_pipe_0 = _RAND_254[7:0];
  _RAND_255 = {1{`RANDOM}};
  dataMem_7_6__T_183_en_pipe_0 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  dataMem_7_6__T_183_addr_pipe_0 = _RAND_256[7:0];
  _RAND_258 = {1{`RANDOM}};
  dataMem_7_7__T_78_addr_pipe_0 = _RAND_258[7:0];
  _RAND_259 = {1{`RANDOM}};
  dataMem_7_7__T_183_en_pipe_0 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  dataMem_7_7__T_183_addr_pipe_0 = _RAND_260[7:0];
  _RAND_261 = {1{`RANDOM}};
  state = _RAND_261[2:0];
  _RAND_262 = {1{`RANDOM}};
  flush_state = _RAND_262[2:0];
  _RAND_263 = {1{`RANDOM}};
  flush_mode = _RAND_263[0:0];
  _RAND_264 = {8{`RANDOM}};
  v = _RAND_264[255:0];
  _RAND_265 = {8{`RANDOM}};
  d = _RAND_265[255:0];
  _RAND_266 = {2{`RANDOM}};
  addr_reg = _RAND_266[63:0];
  _RAND_267 = {1{`RANDOM}};
  cpu_tag_reg = _RAND_267[7:0];
  _RAND_268 = {2{`RANDOM}};
  cpu_data = _RAND_268[63:0];
  _RAND_269 = {1{`RANDOM}};
  cpu_mask = _RAND_269[7:0];
  _RAND_270 = {1{`RANDOM}};
  set_count = _RAND_270[7:0];
  _RAND_271 = {2{`RANDOM}};
  block_rmeta_tag = _RAND_271[49:0];
  _RAND_272 = {1{`RANDOM}};
  is_alloc_reg = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  ren_reg = _RAND_273[0:0];
  _RAND_274 = {16{`RANDOM}};
  rdata_buf = _RAND_274[511:0];
  _RAND_275 = {16{`RANDOM}};
  refill_buf_0 = _RAND_275[511:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(metaMem_tag__T_242_en & metaMem_tag__T_242_mask) begin
      metaMem_tag[metaMem_tag__T_242_addr] <= metaMem_tag__T_242_data; // @[AXICache.scala 720:28]
    end
    metaMem_tag_rmeta_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      metaMem_tag_rmeta_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    metaMem_tag__T_411_en_pipe_0 <= is_block_dirty & _T_2;
    if (is_block_dirty & _T_2) begin
      metaMem_tag__T_411_addr_pipe_0 <= set_count;
    end
    if(dataMem_0_0__T_261_en & dataMem_0_0__T_261_mask) begin
      dataMem_0_0[dataMem_0_0__T_261_addr] <= dataMem_0_0__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_0__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_0__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_0__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_0_1__T_261_en & dataMem_0_1__T_261_mask) begin
      dataMem_0_1[dataMem_0_1__T_261_addr] <= dataMem_0_1__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_1__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_1__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_1__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_0_2__T_261_en & dataMem_0_2__T_261_mask) begin
      dataMem_0_2[dataMem_0_2__T_261_addr] <= dataMem_0_2__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_2__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_2__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_2__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_0_3__T_261_en & dataMem_0_3__T_261_mask) begin
      dataMem_0_3[dataMem_0_3__T_261_addr] <= dataMem_0_3__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_3__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_3__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_3__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_0_4__T_261_en & dataMem_0_4__T_261_mask) begin
      dataMem_0_4[dataMem_0_4__T_261_addr] <= dataMem_0_4__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_4__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_4__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_4__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_0_5__T_261_en & dataMem_0_5__T_261_mask) begin
      dataMem_0_5[dataMem_0_5__T_261_addr] <= dataMem_0_5__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_5__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_5__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_5__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_0_6__T_261_en & dataMem_0_6__T_261_mask) begin
      dataMem_0_6[dataMem_0_6__T_261_addr] <= dataMem_0_6__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_6__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_6__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_6__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_0_7__T_261_en & dataMem_0_7__T_261_mask) begin
      dataMem_0_7[dataMem_0_7__T_261_addr] <= dataMem_0_7__T_261_data; // @[AXICache.scala 721:45]
    end
    dataMem_0_7__T_8_addr_pipe_0 <= set_count - 8'h1;
    dataMem_0_7__T_106_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_0_7__T_106_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_0__T_280_en & dataMem_1_0__T_280_mask) begin
      dataMem_1_0[dataMem_1_0__T_280_addr] <= dataMem_1_0__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_0__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_0__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_0__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_1__T_280_en & dataMem_1_1__T_280_mask) begin
      dataMem_1_1[dataMem_1_1__T_280_addr] <= dataMem_1_1__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_1__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_1__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_1__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_2__T_280_en & dataMem_1_2__T_280_mask) begin
      dataMem_1_2[dataMem_1_2__T_280_addr] <= dataMem_1_2__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_2__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_2__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_2__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_3__T_280_en & dataMem_1_3__T_280_mask) begin
      dataMem_1_3[dataMem_1_3__T_280_addr] <= dataMem_1_3__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_3__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_3__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_3__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_4__T_280_en & dataMem_1_4__T_280_mask) begin
      dataMem_1_4[dataMem_1_4__T_280_addr] <= dataMem_1_4__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_4__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_4__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_4__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_5__T_280_en & dataMem_1_5__T_280_mask) begin
      dataMem_1_5[dataMem_1_5__T_280_addr] <= dataMem_1_5__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_5__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_5__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_5__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_6__T_280_en & dataMem_1_6__T_280_mask) begin
      dataMem_1_6[dataMem_1_6__T_280_addr] <= dataMem_1_6__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_6__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_6__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_6__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_1_7__T_280_en & dataMem_1_7__T_280_mask) begin
      dataMem_1_7[dataMem_1_7__T_280_addr] <= dataMem_1_7__T_280_data; // @[AXICache.scala 721:45]
    end
    dataMem_1_7__T_18_addr_pipe_0 <= set_count - 8'h1;
    dataMem_1_7__T_117_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_1_7__T_117_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_0__T_299_en & dataMem_2_0__T_299_mask) begin
      dataMem_2_0[dataMem_2_0__T_299_addr] <= dataMem_2_0__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_0__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_0__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_0__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_1__T_299_en & dataMem_2_1__T_299_mask) begin
      dataMem_2_1[dataMem_2_1__T_299_addr] <= dataMem_2_1__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_1__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_1__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_1__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_2__T_299_en & dataMem_2_2__T_299_mask) begin
      dataMem_2_2[dataMem_2_2__T_299_addr] <= dataMem_2_2__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_2__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_2__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_2__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_3__T_299_en & dataMem_2_3__T_299_mask) begin
      dataMem_2_3[dataMem_2_3__T_299_addr] <= dataMem_2_3__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_3__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_3__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_3__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_4__T_299_en & dataMem_2_4__T_299_mask) begin
      dataMem_2_4[dataMem_2_4__T_299_addr] <= dataMem_2_4__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_4__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_4__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_4__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_5__T_299_en & dataMem_2_5__T_299_mask) begin
      dataMem_2_5[dataMem_2_5__T_299_addr] <= dataMem_2_5__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_5__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_5__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_5__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_6__T_299_en & dataMem_2_6__T_299_mask) begin
      dataMem_2_6[dataMem_2_6__T_299_addr] <= dataMem_2_6__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_6__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_6__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_6__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_2_7__T_299_en & dataMem_2_7__T_299_mask) begin
      dataMem_2_7[dataMem_2_7__T_299_addr] <= dataMem_2_7__T_299_data; // @[AXICache.scala 721:45]
    end
    dataMem_2_7__T_28_addr_pipe_0 <= set_count - 8'h1;
    dataMem_2_7__T_128_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_2_7__T_128_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_0__T_318_en & dataMem_3_0__T_318_mask) begin
      dataMem_3_0[dataMem_3_0__T_318_addr] <= dataMem_3_0__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_0__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_0__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_0__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_1__T_318_en & dataMem_3_1__T_318_mask) begin
      dataMem_3_1[dataMem_3_1__T_318_addr] <= dataMem_3_1__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_1__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_1__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_1__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_2__T_318_en & dataMem_3_2__T_318_mask) begin
      dataMem_3_2[dataMem_3_2__T_318_addr] <= dataMem_3_2__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_2__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_2__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_2__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_3__T_318_en & dataMem_3_3__T_318_mask) begin
      dataMem_3_3[dataMem_3_3__T_318_addr] <= dataMem_3_3__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_3__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_3__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_3__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_4__T_318_en & dataMem_3_4__T_318_mask) begin
      dataMem_3_4[dataMem_3_4__T_318_addr] <= dataMem_3_4__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_4__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_4__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_4__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_5__T_318_en & dataMem_3_5__T_318_mask) begin
      dataMem_3_5[dataMem_3_5__T_318_addr] <= dataMem_3_5__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_5__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_5__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_5__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_6__T_318_en & dataMem_3_6__T_318_mask) begin
      dataMem_3_6[dataMem_3_6__T_318_addr] <= dataMem_3_6__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_6__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_6__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_6__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_3_7__T_318_en & dataMem_3_7__T_318_mask) begin
      dataMem_3_7[dataMem_3_7__T_318_addr] <= dataMem_3_7__T_318_data; // @[AXICache.scala 721:45]
    end
    dataMem_3_7__T_38_addr_pipe_0 <= set_count - 8'h1;
    dataMem_3_7__T_139_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_3_7__T_139_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_0__T_337_en & dataMem_4_0__T_337_mask) begin
      dataMem_4_0[dataMem_4_0__T_337_addr] <= dataMem_4_0__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_0__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_0__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_0__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_1__T_337_en & dataMem_4_1__T_337_mask) begin
      dataMem_4_1[dataMem_4_1__T_337_addr] <= dataMem_4_1__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_1__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_1__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_1__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_2__T_337_en & dataMem_4_2__T_337_mask) begin
      dataMem_4_2[dataMem_4_2__T_337_addr] <= dataMem_4_2__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_2__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_2__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_2__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_3__T_337_en & dataMem_4_3__T_337_mask) begin
      dataMem_4_3[dataMem_4_3__T_337_addr] <= dataMem_4_3__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_3__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_3__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_3__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_4__T_337_en & dataMem_4_4__T_337_mask) begin
      dataMem_4_4[dataMem_4_4__T_337_addr] <= dataMem_4_4__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_4__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_4__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_4__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_5__T_337_en & dataMem_4_5__T_337_mask) begin
      dataMem_4_5[dataMem_4_5__T_337_addr] <= dataMem_4_5__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_5__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_5__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_5__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_6__T_337_en & dataMem_4_6__T_337_mask) begin
      dataMem_4_6[dataMem_4_6__T_337_addr] <= dataMem_4_6__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_6__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_6__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_6__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_4_7__T_337_en & dataMem_4_7__T_337_mask) begin
      dataMem_4_7[dataMem_4_7__T_337_addr] <= dataMem_4_7__T_337_data; // @[AXICache.scala 721:45]
    end
    dataMem_4_7__T_48_addr_pipe_0 <= set_count - 8'h1;
    dataMem_4_7__T_150_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_4_7__T_150_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_0__T_356_en & dataMem_5_0__T_356_mask) begin
      dataMem_5_0[dataMem_5_0__T_356_addr] <= dataMem_5_0__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_0__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_0__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_0__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_1__T_356_en & dataMem_5_1__T_356_mask) begin
      dataMem_5_1[dataMem_5_1__T_356_addr] <= dataMem_5_1__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_1__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_1__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_1__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_2__T_356_en & dataMem_5_2__T_356_mask) begin
      dataMem_5_2[dataMem_5_2__T_356_addr] <= dataMem_5_2__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_2__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_2__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_2__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_3__T_356_en & dataMem_5_3__T_356_mask) begin
      dataMem_5_3[dataMem_5_3__T_356_addr] <= dataMem_5_3__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_3__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_3__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_3__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_4__T_356_en & dataMem_5_4__T_356_mask) begin
      dataMem_5_4[dataMem_5_4__T_356_addr] <= dataMem_5_4__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_4__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_4__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_4__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_5__T_356_en & dataMem_5_5__T_356_mask) begin
      dataMem_5_5[dataMem_5_5__T_356_addr] <= dataMem_5_5__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_5__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_5__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_5__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_6__T_356_en & dataMem_5_6__T_356_mask) begin
      dataMem_5_6[dataMem_5_6__T_356_addr] <= dataMem_5_6__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_6__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_6__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_6__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_5_7__T_356_en & dataMem_5_7__T_356_mask) begin
      dataMem_5_7[dataMem_5_7__T_356_addr] <= dataMem_5_7__T_356_data; // @[AXICache.scala 721:45]
    end
    dataMem_5_7__T_58_addr_pipe_0 <= set_count - 8'h1;
    dataMem_5_7__T_161_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_5_7__T_161_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_0__T_375_en & dataMem_6_0__T_375_mask) begin
      dataMem_6_0[dataMem_6_0__T_375_addr] <= dataMem_6_0__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_0__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_0__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_0__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_1__T_375_en & dataMem_6_1__T_375_mask) begin
      dataMem_6_1[dataMem_6_1__T_375_addr] <= dataMem_6_1__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_1__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_1__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_1__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_2__T_375_en & dataMem_6_2__T_375_mask) begin
      dataMem_6_2[dataMem_6_2__T_375_addr] <= dataMem_6_2__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_2__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_2__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_2__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_3__T_375_en & dataMem_6_3__T_375_mask) begin
      dataMem_6_3[dataMem_6_3__T_375_addr] <= dataMem_6_3__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_3__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_3__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_3__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_4__T_375_en & dataMem_6_4__T_375_mask) begin
      dataMem_6_4[dataMem_6_4__T_375_addr] <= dataMem_6_4__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_4__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_4__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_4__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_5__T_375_en & dataMem_6_5__T_375_mask) begin
      dataMem_6_5[dataMem_6_5__T_375_addr] <= dataMem_6_5__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_5__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_5__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_5__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_6__T_375_en & dataMem_6_6__T_375_mask) begin
      dataMem_6_6[dataMem_6_6__T_375_addr] <= dataMem_6_6__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_6__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_6__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_6__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_6_7__T_375_en & dataMem_6_7__T_375_mask) begin
      dataMem_6_7[dataMem_6_7__T_375_addr] <= dataMem_6_7__T_375_data; // @[AXICache.scala 721:45]
    end
    dataMem_6_7__T_68_addr_pipe_0 <= set_count - 8'h1;
    dataMem_6_7__T_172_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_6_7__T_172_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_0__T_394_en & dataMem_7_0__T_394_mask) begin
      dataMem_7_0[dataMem_7_0__T_394_addr] <= dataMem_7_0__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_0__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_0__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_0__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_1__T_394_en & dataMem_7_1__T_394_mask) begin
      dataMem_7_1[dataMem_7_1__T_394_addr] <= dataMem_7_1__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_1__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_1__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_1__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_2__T_394_en & dataMem_7_2__T_394_mask) begin
      dataMem_7_2[dataMem_7_2__T_394_addr] <= dataMem_7_2__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_2__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_2__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_2__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_3__T_394_en & dataMem_7_3__T_394_mask) begin
      dataMem_7_3[dataMem_7_3__T_394_addr] <= dataMem_7_3__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_3__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_3__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_3__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_4__T_394_en & dataMem_7_4__T_394_mask) begin
      dataMem_7_4[dataMem_7_4__T_394_addr] <= dataMem_7_4__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_4__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_4__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_4__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_5__T_394_en & dataMem_7_5__T_394_mask) begin
      dataMem_7_5[dataMem_7_5__T_394_addr] <= dataMem_7_5__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_5__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_5__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_5__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_6__T_394_en & dataMem_7_6__T_394_mask) begin
      dataMem_7_6[dataMem_7_6__T_394_addr] <= dataMem_7_6__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_6__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_6__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_6__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if(dataMem_7_7__T_394_en & dataMem_7_7__T_394_mask) begin
      dataMem_7_7[dataMem_7_7__T_394_addr] <= dataMem_7_7__T_394_data; // @[AXICache.scala 721:45]
    end
    dataMem_7_7__T_78_addr_pipe_0 <= set_count - 8'h1;
    dataMem_7_7__T_183_en_pipe_0 <= _T_99 & io_cpu_req_valid;
    if (_T_99 & io_cpu_req_valid) begin
      dataMem_7_7__T_183_addr_pipe_0 <= io_cpu_req_bits_addr[13:6];
    end
    if (reset) begin
      state <= 3'h0;
    end else if (_T_424) begin
      if (io_cpu_req_valid) begin
        if (_T_425) begin
          state <= 3'h2;
        end else begin
          state <= 3'h1;
        end
      end
    end else if (_T_427) begin
      if (hit) begin
        if (io_cpu_req_valid) begin
          if (_T_425) begin
            state <= 3'h2;
          end else begin
            state <= 3'h1;
          end
        end else begin
          state <= 3'h0;
        end
      end else if (_T_431) begin
        state <= 3'h3;
      end else if (_T_432) begin
        state <= 3'h6;
      end
    end else if (_T_433) begin
      if (_T_93) begin
        state <= 3'h0;
      end else if (_T_431) begin
        state <= 3'h3;
      end else if (_T_432) begin
        state <= 3'h6;
      end
    end else if (_T_439) begin
      if (write_wrap_out) begin
        state <= 3'h4;
      end
    end else if (_T_440) begin
      if (io_mem_wr_ack) begin
        state <= 3'h5;
      end
    end else if (_T_441) begin
      if (_T_432) begin
        state <= 3'h6;
      end
    end else if (_T_443) begin
      if (read_wrap_out) begin
        if (_T_216) begin
          state <= 3'h2;
        end else begin
          state <= 3'h0;
        end
      end
    end
    if (reset) begin
      flush_state <= 3'h0;
    end else if (_T_446) begin
      if (io_cpu_flush) begin
        flush_state <= 3'h1;
      end
    end else if (_T_447) begin
      if (set_wrap) begin
        flush_state <= 3'h0;
      end else if (is_block_dirty) begin
        flush_state <= 3'h2;
      end
    end else if (_T_448) begin
      flush_state <= 3'h3;
    end else if (_T_449) begin
      if (_T_431) begin
        flush_state <= 3'h4;
      end
    end else if (_T_451) begin
      if (write_wrap_out) begin
        flush_state <= 3'h5;
      end
    end else if (_T_452) begin
      if (io_mem_wr_ack) begin
        flush_state <= 3'h1;
      end
    end
    if (reset) begin
      flush_mode <= 1'h0;
    end else if (_T_446) begin
      flush_mode <= _GEN_343;
    end else if (_T_447) begin
      if (set_wrap) begin
        flush_mode <= 1'h0;
      end
    end
    if (reset) begin
      v <= 256'h0;
    end else if (wen) begin
      v <= _T_230;
    end
    if (reset) begin
      d <= 256'h0;
    end else if (wen) begin
      if (_T_221) begin
        d <= _T_237;
      end else begin
        d <= _T_240;
      end
    end
    if (io_cpu_resp_valid) begin
      addr_reg <= io_cpu_req_bits_addr;
    end
    if (_T_220) begin
      cpu_tag_reg <= io_cpu_req_bits_tag;
    end
    if (io_cpu_resp_valid) begin
      cpu_data <= io_cpu_req_bits_data;
    end
    if (io_cpu_resp_valid) begin
      cpu_mask <= io_cpu_req_bits_mask;
    end
    if (reset) begin
      set_count <= 8'h0;
    end else if (_T_2) begin
      set_count <= _T_5;
    end
    block_rmeta_tag <= metaMem_tag__T_411_data;
    is_alloc_reg <= _T_92 & read_wrap_out;
    ren_reg <= _T_99 & io_cpu_req_valid;
    if (ren_reg) begin
      rdata_buf <= rdata;
    end
    if (read_wrap_out) begin
      refill_buf_0 <= io_mem_rd_data_bits;
    end
  end
endmodule
module Arbiter_2(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [63:0] io_in_0_bits_addr,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [63:0] io_in_1_bits_addr,
  input  [63:0] io_in_1_bits_data,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_addr,
  output [63:0] io_out_bits_data,
  output [7:0]  io_out_bits_mask,
  output [7:0]  io_out_bits_tag,
  output        io_chosen
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 31:78]
  wire  _T_2 = ~grant_1; // @[Arbiter.scala 135:19]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 134:14]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 134:14]
  assign io_out_valid = _T_2 | io_in_1_valid; // @[Arbiter.scala 135:16]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : io_in_1_bits_addr; // @[Arbiter.scala 124:15 Arbiter.scala 128:19]
  assign io_out_bits_data = io_in_0_valid ? 64'h0 : io_in_1_bits_data; // @[Arbiter.scala 124:15 Arbiter.scala 128:19]
  assign io_out_bits_mask = io_in_0_valid ? 8'h0 : 8'hff; // @[Arbiter.scala 124:15 Arbiter.scala 128:19]
  assign io_out_bits_tag = io_in_0_valid ? 8'h0 : 8'h1; // @[Arbiter.scala 124:15 Arbiter.scala 128:19]
  assign io_chosen = io_in_0_valid ? 1'h0 : 1'h1; // @[Arbiter.scala 123:13 Arbiter.scala 127:17]
endmodule
module CacheMemoryEngine(
  input         clock,
  input         reset,
  output        io_rd_mem_0_MemReq_ready,
  input         io_rd_mem_0_MemReq_valid,
  input  [63:0] io_rd_mem_0_MemReq_bits_addr,
  output        io_rd_mem_0_MemResp_valid,
  output [63:0] io_rd_mem_0_MemResp_bits_data,
  output        io_wr_mem_0_MemReq_ready,
  input         io_wr_mem_0_MemReq_valid,
  input  [63:0] io_wr_mem_0_MemReq_bits_addr,
  input  [63:0] io_wr_mem_0_MemReq_bits_data,
  output        io_wr_mem_0_MemResp_valid,
  input         io_cache_MemReq_ready,
  output        io_cache_MemReq_valid,
  output [63:0] io_cache_MemReq_bits_addr,
  output [63:0] io_cache_MemReq_bits_data,
  output [7:0]  io_cache_MemReq_bits_mask,
  output [7:0]  io_cache_MemReq_bits_tag,
  input         io_cache_MemResp_valid,
  input  [63:0] io_cache_MemResp_bits_data,
  input  [7:0]  io_cache_MemResp_bits_tag
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  in_arb_io_in_0_ready; // @[CacheMemoryEngine.scala 79:22]
  wire  in_arb_io_in_0_valid; // @[CacheMemoryEngine.scala 79:22]
  wire [63:0] in_arb_io_in_0_bits_addr; // @[CacheMemoryEngine.scala 79:22]
  wire  in_arb_io_in_1_ready; // @[CacheMemoryEngine.scala 79:22]
  wire  in_arb_io_in_1_valid; // @[CacheMemoryEngine.scala 79:22]
  wire [63:0] in_arb_io_in_1_bits_addr; // @[CacheMemoryEngine.scala 79:22]
  wire [63:0] in_arb_io_in_1_bits_data; // @[CacheMemoryEngine.scala 79:22]
  wire  in_arb_io_out_ready; // @[CacheMemoryEngine.scala 79:22]
  wire  in_arb_io_out_valid; // @[CacheMemoryEngine.scala 79:22]
  wire [63:0] in_arb_io_out_bits_addr; // @[CacheMemoryEngine.scala 79:22]
  wire [63:0] in_arb_io_out_bits_data; // @[CacheMemoryEngine.scala 79:22]
  wire [7:0] in_arb_io_out_bits_mask; // @[CacheMemoryEngine.scala 79:22]
  wire [7:0] in_arb_io_out_bits_tag; // @[CacheMemoryEngine.scala 79:22]
  wire  in_arb_io_chosen; // @[CacheMemoryEngine.scala 79:22]
  wire  _T = in_arb_io_out_ready & in_arb_io_out_valid; // @[Decoupled.scala 40:37]
  reg  in_arb_chosen; // @[Reg.scala 15:16]
  reg [1:0] mstate; // @[CacheMemoryEngine.scala 91:23]
  wire  _T_1 = 2'h0 == mstate; // @[Conditional.scala 37:30]
  wire  _T_2 = 2'h1 == mstate; // @[Conditional.scala 37:30]
  wire  _T_3 = 2'h2 == mstate; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_13 = {{7'd0}, in_arb_chosen}; // @[CacheMemoryEngine.scala 105:52]
  wire  _T_4 = _GEN_13 == io_cache_MemResp_bits_tag; // @[CacheMemoryEngine.scala 105:52]
  wire  _T_5 = io_cache_MemResp_valid & _T_4; // @[CacheMemoryEngine.scala 105:35]
  wire  _T_6 = ~in_arb_chosen; // @[CacheMemoryEngine.scala 112:50]
  wire  _T_8 = _T_6 & _T_4; // @[CacheMemoryEngine.scala 112:59]
  wire  _T_9 = _T_8 & io_cache_MemResp_valid; // @[CacheMemoryEngine.scala 113:53]
  wire  _T_10 = mstate == 2'h2; // @[CacheMemoryEngine.scala 115:15]
  wire  _T_14 = in_arb_chosen & _T_4; // @[CacheMemoryEngine.scala 120:69]
  wire  _T_15 = _T_14 & io_cache_MemResp_valid; // @[CacheMemoryEngine.scala 121:53]
  reg [63:0] in_data_reg_addr; // @[Reg.scala 27:20]
  reg [63:0] in_data_reg_data; // @[Reg.scala 27:20]
  reg [7:0] in_data_reg_mask; // @[Reg.scala 27:20]
  reg [7:0] in_data_reg_tag; // @[Reg.scala 27:20]
  Arbiter_2 in_arb ( // @[CacheMemoryEngine.scala 79:22]
    .io_in_0_ready(in_arb_io_in_0_ready),
    .io_in_0_valid(in_arb_io_in_0_valid),
    .io_in_0_bits_addr(in_arb_io_in_0_bits_addr),
    .io_in_1_ready(in_arb_io_in_1_ready),
    .io_in_1_valid(in_arb_io_in_1_valid),
    .io_in_1_bits_addr(in_arb_io_in_1_bits_addr),
    .io_in_1_bits_data(in_arb_io_in_1_bits_data),
    .io_out_ready(in_arb_io_out_ready),
    .io_out_valid(in_arb_io_out_valid),
    .io_out_bits_addr(in_arb_io_out_bits_addr),
    .io_out_bits_data(in_arb_io_out_bits_data),
    .io_out_bits_mask(in_arb_io_out_bits_mask),
    .io_out_bits_tag(in_arb_io_out_bits_tag),
    .io_chosen(in_arb_io_chosen)
  );
  assign io_rd_mem_0_MemReq_ready = in_arb_io_in_0_ready; // @[CacheMemoryEngine.scala 83:21]
  assign io_rd_mem_0_MemResp_valid = _T_9 & _T_10; // @[CacheMemoryEngine.scala 112:32]
  assign io_rd_mem_0_MemResp_bits_data = io_cache_MemResp_bits_data; // @[CacheMemoryEngine.scala 116:31]
  assign io_wr_mem_0_MemReq_ready = in_arb_io_in_1_ready; // @[CacheMemoryEngine.scala 87:31]
  assign io_wr_mem_0_MemResp_valid = _T_15 & _T_10; // @[CacheMemoryEngine.scala 120:42]
  assign io_cache_MemReq_valid = mstate == 2'h1; // @[CacheMemoryEngine.scala 130:25]
  assign io_cache_MemReq_bits_addr = in_data_reg_addr; // @[CacheMemoryEngine.scala 131:24]
  assign io_cache_MemReq_bits_data = in_data_reg_data; // @[CacheMemoryEngine.scala 131:24]
  assign io_cache_MemReq_bits_mask = in_data_reg_mask; // @[CacheMemoryEngine.scala 131:24]
  assign io_cache_MemReq_bits_tag = in_data_reg_tag; // @[CacheMemoryEngine.scala 131:24]
  assign in_arb_io_in_0_valid = io_rd_mem_0_MemReq_valid; // @[CacheMemoryEngine.scala 83:21]
  assign in_arb_io_in_0_bits_addr = io_rd_mem_0_MemReq_bits_addr; // @[CacheMemoryEngine.scala 83:21]
  assign in_arb_io_in_1_valid = io_wr_mem_0_MemReq_valid; // @[CacheMemoryEngine.scala 87:31]
  assign in_arb_io_in_1_bits_addr = io_wr_mem_0_MemReq_bits_addr; // @[CacheMemoryEngine.scala 87:31]
  assign in_arb_io_in_1_bits_data = io_wr_mem_0_MemReq_bits_data; // @[CacheMemoryEngine.scala 87:31]
  assign in_arb_io_out_ready = mstate == 2'h0; // @[CacheMemoryEngine.scala 129:23]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  in_arb_chosen = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  mstate = _RAND_1[1:0];
  _RAND_2 = {2{`RANDOM}};
  in_data_reg_addr = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  in_data_reg_data = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  in_data_reg_mask = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  in_data_reg_tag = _RAND_5[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T) begin
      in_arb_chosen <= in_arb_io_chosen;
    end
    if (reset) begin
      mstate <= 2'h0;
    end else if (_T_1) begin
      if (in_arb_io_out_valid) begin
        mstate <= 2'h1;
      end
    end else if (_T_2) begin
      if (io_cache_MemReq_ready) begin
        mstate <= 2'h2;
      end
    end else if (_T_3) begin
      if (_T_5) begin
        mstate <= 2'h0;
      end
    end
    if (reset) begin
      in_data_reg_addr <= 64'h0;
    end else if (_T) begin
      in_data_reg_addr <= in_arb_io_out_bits_addr;
    end
    if (reset) begin
      in_data_reg_data <= 64'h0;
    end else if (_T) begin
      in_data_reg_data <= in_arb_io_out_bits_data;
    end
    if (reset) begin
      in_data_reg_mask <= 8'h0;
    end else if (_T) begin
      in_data_reg_mask <= in_arb_io_out_bits_mask;
    end
    if (reset) begin
      in_data_reg_tag <= 8'h0;
    end else if (_T) begin
      in_data_reg_tag <= in_arb_io_out_bits_tag;
    end
  end
endmodule
module SplitCallDCR(
  input         clock,
  input         reset,
  output        io_In_ready,
  input         io_In_valid,
  input  [63:0] io_In_bits_dataPtrs_field1_data,
  input  [63:0] io_In_bits_dataPtrs_field0_data,
  input  [63:0] io_In_bits_dataVals_field0_data,
  input         io_Out_enable_ready,
  output        io_Out_enable_valid,
  output        io_Out_enable_bits_control,
  input         io_Out_dataPtrs_field1_0_ready,
  output        io_Out_dataPtrs_field1_0_valid,
  output [63:0] io_Out_dataPtrs_field1_0_bits_data,
  input         io_Out_dataPtrs_field0_0_ready,
  output        io_Out_dataPtrs_field0_0_valid,
  output [63:0] io_Out_dataPtrs_field0_0_bits_data,
  input         io_Out_dataVals_field0_0_ready,
  output        io_Out_dataVals_field0_0_valid,
  output [63:0] io_Out_dataVals_field0_0_bits_data,
  input         io_Out_dataVals_field0_1_ready,
  output        io_Out_dataVals_field0_1_valid,
  output [63:0] io_Out_dataVals_field0_1_bits_data,
  input         io_Out_dataVals_field0_2_ready,
  output        io_Out_dataVals_field0_2_valid,
  output [63:0] io_Out_dataVals_field0_2_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg  inputReg_enable_control; // @[SplitDecoupled.scala 220:26]
  reg [63:0] inputReg_dataPtrs_field1_data; // @[SplitDecoupled.scala 220:26]
  reg [63:0] inputReg_dataPtrs_field0_data; // @[SplitDecoupled.scala 220:26]
  reg [63:0] inputReg_dataVals_field0_data; // @[SplitDecoupled.scala 220:26]
  reg  enableValidReg; // @[SplitDecoupled.scala 222:31]
  reg  outputPtrsValidReg_0_0; // @[SplitDecoupled.scala 225:53]
  reg  outputPtrsValidReg_1_0; // @[SplitDecoupled.scala 225:53]
  reg  outputValsValidReg_0_0; // @[SplitDecoupled.scala 230:53]
  reg  outputValsValidReg_0_1; // @[SplitDecoupled.scala 230:53]
  reg  outputValsValidReg_0_2; // @[SplitDecoupled.scala 230:53]
  wire  _T_1 = outputValsValidReg_0_0 | outputValsValidReg_0_1; // @[SplitDecoupled.scala 241:52]
  wire  valsValid_0 = _T_1 | outputValsValidReg_0_2; // @[SplitDecoupled.scala 241:52]
  reg  state; // @[SplitDecoupled.scala 260:22]
  wire  _T_2 = ~state; // @[SplitDecoupled.scala 262:24]
  wire  _T_4 = io_In_ready & io_In_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_0 = _T_4 | state; // @[SplitDecoupled.scala 266:27]
  wire  _GEN_2 = _T_4 | inputReg_enable_control; // @[SplitDecoupled.scala 266:27]
  wire  _T_6 = outputPtrsValidReg_0_0 & outputPtrsValidReg_1_0; // @[SplitDecoupled.scala 247:31]
  wire  _T_7 = ~_T_6; // @[SplitDecoupled.scala 247:7]
  wire  _T_8 = ~valsValid_0; // @[SplitDecoupled.scala 254:7]
  wire  _T_9 = _T_7 & _T_8; // @[SplitDecoupled.scala 272:25]
  wire  _T_10 = ~enableValidReg; // @[SplitDecoupled.scala 272:43]
  wire  _T_11 = _T_9 & _T_10; // @[SplitDecoupled.scala 272:40]
  wire  _T_13 = io_In_valid & _T_2; // @[SplitDecoupled.scala 280:24]
  wire  _GEN_28 = _T_13 | outputPtrsValidReg_0_0; // @[SplitDecoupled.scala 280:45]
  wire  _T_15 = state & io_Out_dataPtrs_field0_0_ready; // @[SplitDecoupled.scala 283:32]
  wire  _GEN_30 = _T_13 | outputPtrsValidReg_1_0; // @[SplitDecoupled.scala 280:45]
  wire  _T_19 = state & io_Out_dataPtrs_field1_0_ready; // @[SplitDecoupled.scala 283:32]
  wire  _GEN_32 = _T_13 | outputValsValidReg_0_0; // @[SplitDecoupled.scala 293:45]
  wire  _T_23 = state & io_Out_dataVals_field0_0_ready; // @[SplitDecoupled.scala 296:32]
  wire  _GEN_34 = _T_13 | outputValsValidReg_0_1; // @[SplitDecoupled.scala 293:45]
  wire  _T_27 = state & io_Out_dataVals_field0_1_ready; // @[SplitDecoupled.scala 296:32]
  wire  _GEN_36 = _T_13 | outputValsValidReg_0_2; // @[SplitDecoupled.scala 293:45]
  wire  _T_31 = state & io_Out_dataVals_field0_2_ready; // @[SplitDecoupled.scala 296:32]
  wire  _GEN_38 = _T_13 | enableValidReg; // @[SplitDecoupled.scala 305:41]
  wire  _T_35 = state & io_Out_enable_ready; // @[SplitDecoupled.scala 308:28]
  assign io_In_ready = ~state; // @[SplitDecoupled.scala 262:15]
  assign io_Out_enable_valid = enableValidReg; // @[SplitDecoupled.scala 312:23]
  assign io_Out_enable_bits_control = inputReg_enable_control; // @[SplitDecoupled.scala 313:22]
  assign io_Out_dataPtrs_field1_0_valid = outputPtrsValidReg_1_0; // @[SplitDecoupled.scala 286:44]
  assign io_Out_dataPtrs_field1_0_bits_data = inputReg_dataPtrs_field1_data; // @[SplitDecoupled.scala 287:43]
  assign io_Out_dataPtrs_field0_0_valid = outputPtrsValidReg_0_0; // @[SplitDecoupled.scala 286:44]
  assign io_Out_dataPtrs_field0_0_bits_data = inputReg_dataPtrs_field0_data; // @[SplitDecoupled.scala 287:43]
  assign io_Out_dataVals_field0_0_valid = outputValsValidReg_0_0; // @[SplitDecoupled.scala 299:44]
  assign io_Out_dataVals_field0_0_bits_data = inputReg_dataVals_field0_data; // @[SplitDecoupled.scala 300:43]
  assign io_Out_dataVals_field0_1_valid = outputValsValidReg_0_1; // @[SplitDecoupled.scala 299:44]
  assign io_Out_dataVals_field0_1_bits_data = inputReg_dataVals_field0_data; // @[SplitDecoupled.scala 300:43]
  assign io_Out_dataVals_field0_2_valid = outputValsValidReg_0_2; // @[SplitDecoupled.scala 299:44]
  assign io_Out_dataVals_field0_2_bits_data = inputReg_dataVals_field0_data; // @[SplitDecoupled.scala 300:43]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  inputReg_enable_control = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  inputReg_dataPtrs_field1_data = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  inputReg_dataPtrs_field0_data = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  inputReg_dataVals_field0_data = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  enableValidReg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  outputPtrsValidReg_0_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  outputPtrsValidReg_1_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  outputValsValidReg_0_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  outputValsValidReg_0_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  outputValsValidReg_0_2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      inputReg_enable_control <= 1'h0;
    end else if (_T_2) begin
      inputReg_enable_control <= _GEN_2;
    end
    if (reset) begin
      inputReg_dataPtrs_field1_data <= 64'h0;
    end else if (_T_2) begin
      if (_T_4) begin
        inputReg_dataPtrs_field1_data <= io_In_bits_dataPtrs_field1_data;
      end
    end
    if (reset) begin
      inputReg_dataPtrs_field0_data <= 64'h0;
    end else if (_T_2) begin
      if (_T_4) begin
        inputReg_dataPtrs_field0_data <= io_In_bits_dataPtrs_field0_data;
      end
    end
    if (reset) begin
      inputReg_dataVals_field0_data <= 64'h0;
    end else if (_T_2) begin
      if (_T_4) begin
        inputReg_dataVals_field0_data <= io_In_bits_dataVals_field0_data;
      end
    end
    if (reset) begin
      enableValidReg <= 1'h0;
    end else if (_T_35) begin
      enableValidReg <= 1'h0;
    end else begin
      enableValidReg <= _GEN_38;
    end
    if (reset) begin
      outputPtrsValidReg_0_0 <= 1'h0;
    end else if (_T_15) begin
      outputPtrsValidReg_0_0 <= 1'h0;
    end else begin
      outputPtrsValidReg_0_0 <= _GEN_28;
    end
    if (reset) begin
      outputPtrsValidReg_1_0 <= 1'h0;
    end else if (_T_19) begin
      outputPtrsValidReg_1_0 <= 1'h0;
    end else begin
      outputPtrsValidReg_1_0 <= _GEN_30;
    end
    if (reset) begin
      outputValsValidReg_0_0 <= 1'h0;
    end else if (_T_23) begin
      outputValsValidReg_0_0 <= 1'h0;
    end else begin
      outputValsValidReg_0_0 <= _GEN_32;
    end
    if (reset) begin
      outputValsValidReg_0_1 <= 1'h0;
    end else if (_T_27) begin
      outputValsValidReg_0_1 <= 1'h0;
    end else begin
      outputValsValidReg_0_1 <= _GEN_34;
    end
    if (reset) begin
      outputValsValidReg_0_2 <= 1'h0;
    end else if (_T_31) begin
      outputValsValidReg_0_2 <= 1'h0;
    end else begin
      outputValsValidReg_0_2 <= _GEN_36;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_2) begin
      state <= _GEN_0;
    end else if (state) begin
      if (_T_11) begin
        state <= 1'h0;
      end
    end
  end
endmodule
module LoopBlockNode(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  output        io_InLiveIn_0_ready,
  input         io_InLiveIn_0_valid,
  input  [63:0] io_InLiveIn_0_bits_data,
  output        io_InLiveIn_1_ready,
  input         io_InLiveIn_1_valid,
  input  [63:0] io_InLiveIn_1_bits_data,
  output        io_InLiveIn_2_ready,
  input         io_InLiveIn_2_valid,
  input  [63:0] io_InLiveIn_2_bits_data,
  output        io_InLiveIn_3_ready,
  input         io_InLiveIn_3_valid,
  input  [63:0] io_InLiveIn_3_bits_data,
  input         io_OutLiveIn_field3_0_ready,
  output        io_OutLiveIn_field3_0_valid,
  output [63:0] io_OutLiveIn_field3_0_bits_data,
  input         io_OutLiveIn_field2_0_ready,
  output        io_OutLiveIn_field2_0_valid,
  output [63:0] io_OutLiveIn_field2_0_bits_data,
  input         io_OutLiveIn_field1_0_ready,
  output        io_OutLiveIn_field1_0_valid,
  output [63:0] io_OutLiveIn_field1_0_bits_data,
  input         io_OutLiveIn_field0_0_ready,
  output        io_OutLiveIn_field0_0_valid,
  output [63:0] io_OutLiveIn_field0_0_bits_data,
  input         io_activate_loop_start_ready,
  output        io_activate_loop_start_valid,
  output [4:0]  io_activate_loop_start_bits_taskID,
  output        io_activate_loop_start_bits_control,
  input         io_activate_loop_back_ready,
  output        io_activate_loop_back_valid,
  output [4:0]  io_activate_loop_back_bits_taskID,
  output        io_activate_loop_back_bits_control,
  output        io_loopBack_0_ready,
  input         io_loopBack_0_valid,
  input  [4:0]  io_loopBack_0_bits_taskID,
  input         io_loopBack_0_bits_control,
  output        io_loopFinish_0_ready,
  input         io_loopFinish_0_valid,
  input         io_loopFinish_0_bits_control,
  output        io_CarryDepenIn_0_ready,
  input         io_CarryDepenIn_0_valid,
  input  [4:0]  io_CarryDepenIn_0_bits_taskID,
  input  [63:0] io_CarryDepenIn_0_bits_data,
  input         io_CarryDepenOut_field0_0_ready,
  output        io_CarryDepenOut_field0_0_valid,
  output [4:0]  io_CarryDepenOut_field0_0_bits_taskID,
  output [63:0] io_CarryDepenOut_field0_0_bits_data,
  input         io_loopExit_0_ready,
  output        io_loopExit_0_valid,
  output [4:0]  io_loopExit_0_bits_taskID,
  output        io_loopExit_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] enable_R_taskID; // @[LoopBlock.scala 531:25]
  reg  enable_R_control; // @[LoopBlock.scala 531:25]
  reg  enable_valid_R; // @[LoopBlock.scala 532:31]
  reg [4:0] loop_back_R_0_taskID; // @[LoopBlock.scala 534:50]
  reg  loop_back_R_0_control; // @[LoopBlock.scala 534:50]
  reg  loop_back_valid_R_0; // @[LoopBlock.scala 535:56]
  reg  loop_finish_R_0_control; // @[LoopBlock.scala 537:54]
  reg  loop_finish_valid_R_0; // @[LoopBlock.scala 538:60]
  reg [63:0] in_live_in_R_0_data; // @[LoopBlock.scala 540:53]
  reg [63:0] in_live_in_R_1_data; // @[LoopBlock.scala 540:53]
  reg [63:0] in_live_in_R_2_data; // @[LoopBlock.scala 540:53]
  reg [63:0] in_live_in_R_3_data; // @[LoopBlock.scala 540:53]
  reg  in_live_in_valid_R_0; // @[LoopBlock.scala 541:59]
  reg  in_live_in_valid_R_1; // @[LoopBlock.scala 541:59]
  reg  in_live_in_valid_R_2; // @[LoopBlock.scala 541:59]
  reg  in_live_in_valid_R_3; // @[LoopBlock.scala 541:59]
  reg [4:0] in_carry_in_R_0_taskID; // @[LoopBlock.scala 543:56]
  reg [63:0] in_carry_in_R_0_data; // @[LoopBlock.scala 543:56]
  reg  in_carry_in_valid_R_0; // @[LoopBlock.scala 544:62]
  reg  out_live_in_valid_R_0_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_valid_R_1_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_valid_R_2_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_valid_R_3_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_fire_R_0_0; // @[LoopBlock.scala 560:47]
  reg  out_live_in_fire_R_1_0; // @[LoopBlock.scala 560:47]
  reg  out_live_in_fire_R_2_0; // @[LoopBlock.scala 560:47]
  reg  out_live_in_fire_R_3_0; // @[LoopBlock.scala 560:47]
  reg  out_carry_out_valid_R_0_0; // @[LoopBlock.scala 576:44]
  reg [4:0] active_loop_start_R_taskID; // @[LoopBlock.scala 584:36]
  reg  active_loop_start_R_control; // @[LoopBlock.scala 584:36]
  reg  active_loop_start_valid_R; // @[LoopBlock.scala 585:42]
  reg [4:0] active_loop_back_R_taskID; // @[LoopBlock.scala 587:35]
  reg  active_loop_back_R_control; // @[LoopBlock.scala 587:35]
  reg  active_loop_back_valid_R; // @[LoopBlock.scala 588:41]
  reg [4:0] loop_exit_R_0_taskID; // @[LoopBlock.scala 590:47]
  reg  loop_exit_R_0_control; // @[LoopBlock.scala 590:47]
  reg  loop_exit_valid_R_0; // @[LoopBlock.scala 591:53]
  reg  loop_exit_fire_R_0; // @[LoopBlock.scala 592:52]
  wire  _T_16 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_5 = _T_16 | enable_valid_R; // @[LoopBlock.scala 599:26]
  wire  _T_18 = io_loopBack_0_ready & io_loopBack_0_valid; // @[Decoupled.scala 40:37]
  wire [4:0] _GEN_6 = _T_18 ? io_loopBack_0_bits_taskID : loop_back_R_0_taskID; // @[LoopBlock.scala 606:33]
  wire  _GEN_7 = _T_18 ? io_loopBack_0_bits_control : loop_back_R_0_control; // @[LoopBlock.scala 606:33]
  wire  _GEN_9 = _T_18 | loop_back_valid_R_0; // @[LoopBlock.scala 606:33]
  wire  _T_20 = io_loopFinish_0_ready & io_loopFinish_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_20 ? io_loopFinish_0_bits_control : loop_finish_R_0_control; // @[LoopBlock.scala 615:35]
  wire  _GEN_13 = _T_20 | loop_finish_valid_R_0; // @[LoopBlock.scala 615:35]
  wire  _T_22 = io_InLiveIn_0_ready & io_InLiveIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_17 = _T_22 | in_live_in_valid_R_0; // @[LoopBlock.scala 626:33]
  wire  _T_24 = io_InLiveIn_1_ready & io_InLiveIn_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_21 = _T_24 | in_live_in_valid_R_1; // @[LoopBlock.scala 626:33]
  wire  _T_26 = io_InLiveIn_2_ready & io_InLiveIn_2_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_25 = _T_26 | in_live_in_valid_R_2; // @[LoopBlock.scala 626:33]
  wire  _T_28 = io_InLiveIn_3_ready & io_InLiveIn_3_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_29 = _T_28 | in_live_in_valid_R_3; // @[LoopBlock.scala 626:33]
  wire  _T_30 = io_CarryDepenIn_0_ready & io_CarryDepenIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_33 = _T_30 | in_carry_in_valid_R_0; // @[LoopBlock.scala 644:37]
  wire  _T_31 = io_activate_loop_start_ready & io_activate_loop_start_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_34 = _T_31 ? 1'h0 : active_loop_start_valid_R; // @[LoopBlock.scala 707:39]
  wire  _T_32 = io_activate_loop_back_ready & io_activate_loop_back_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_35 = _T_32 ? 1'h0 : active_loop_back_valid_R; // @[LoopBlock.scala 711:38]
  wire  _T_33 = io_loopExit_0_ready & io_loopExit_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_36 = _T_33 ? 1'h0 : loop_exit_valid_R_0; // @[LoopBlock.scala 716:33]
  wire  _GEN_37 = _T_33 | loop_exit_fire_R_0; // @[LoopBlock.scala 716:33]
  wire  _T_34 = io_OutLiveIn_field0_0_ready & io_OutLiveIn_field0_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_38 = _T_34 ? 1'h0 : out_live_in_valid_R_0_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_39 = _T_34 | out_live_in_fire_R_0_0; // @[LoopBlock.scala 725:57]
  wire  _T_35 = io_OutLiveIn_field1_0_ready & io_OutLiveIn_field1_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_40 = _T_35 ? 1'h0 : out_live_in_valid_R_1_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_41 = _T_35 | out_live_in_fire_R_1_0; // @[LoopBlock.scala 725:57]
  wire  _T_36 = io_OutLiveIn_field2_0_ready & io_OutLiveIn_field2_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_42 = _T_36 ? 1'h0 : out_live_in_valid_R_2_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_43 = _T_36 | out_live_in_fire_R_2_0; // @[LoopBlock.scala 725:57]
  wire  _T_37 = io_OutLiveIn_field3_0_ready & io_OutLiveIn_field3_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_44 = _T_37 ? 1'h0 : out_live_in_valid_R_3_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_45 = _T_37 | out_live_in_fire_R_3_0; // @[LoopBlock.scala 725:57]
  wire  _T_38 = io_CarryDepenOut_field0_0_ready & io_CarryDepenOut_field0_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_46 = _T_38 ? 1'h0 : out_carry_out_valid_R_0_0; // @[LoopBlock.scala 745:61]
  reg [1:0] state; // @[LoopBlock.scala 864:22]
  wire  _T_42 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_43 = in_live_in_valid_R_0 & in_live_in_valid_R_1; // @[LoopBlock.scala 768:35]
  wire  _T_44 = _T_43 & in_live_in_valid_R_2; // @[LoopBlock.scala 768:35]
  wire  _T_45 = _T_44 & in_live_in_valid_R_3; // @[LoopBlock.scala 768:35]
  wire  _T_46 = _T_45 & enable_valid_R; // @[LoopBlock.scala 906:28]
  wire  _GEN_48 = enable_R_control | _GEN_38; // @[LoopBlock.scala 907:26]
  wire  _GEN_49 = enable_R_control | _GEN_40; // @[LoopBlock.scala 907:26]
  wire  _GEN_50 = enable_R_control | _GEN_42; // @[LoopBlock.scala 907:26]
  wire  _GEN_51 = enable_R_control | _GEN_44; // @[LoopBlock.scala 907:26]
  wire  _GEN_52 = enable_R_control | _GEN_46; // @[LoopBlock.scala 907:26]
  wire  _GEN_54 = enable_R_control | active_loop_start_R_control; // @[LoopBlock.scala 907:26]
  wire  _GEN_56 = enable_R_control | _GEN_34; // @[LoopBlock.scala 907:26]
  wire  _GEN_60 = enable_R_control | _GEN_35; // @[LoopBlock.scala 907:26]
  wire  _GEN_63 = enable_R_control & loop_exit_R_0_control; // @[LoopBlock.scala 907:26]
  wire  _T_50 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_51 = loop_back_valid_R_0 & loop_finish_valid_R_0; // @[LoopBlock.scala 937:30]
  wire  _T_53 = out_live_in_fire_R_0_0 & out_live_in_fire_R_1_0; // @[LoopBlock.scala 831:26]
  wire  _T_54 = _T_53 & out_live_in_fire_R_2_0; // @[LoopBlock.scala 831:26]
  wire  _T_55 = _T_54 & out_live_in_fire_R_3_0; // @[LoopBlock.scala 831:26]
  wire  _T_56 = _T_51 & _T_55; // @[LoopBlock.scala 938:29]
  wire  _T_64 = ~reset; // @[LoopBlock.scala 970:19]
  wire  _GEN_84 = loop_finish_R_0_control | _GEN_36; // @[LoopBlock.scala 974:64]
  wire  _GEN_89 = loop_finish_R_0_control ? 1'h0 : active_loop_back_R_control; // @[LoopBlock.scala 974:64]
  wire  _GEN_92 = loop_finish_R_0_control | loop_exit_R_0_control; // @[LoopBlock.scala 974:64]
  wire  _GEN_98 = loop_back_R_0_control | _GEN_34; // @[LoopBlock.scala 941:56]
  wire  _GEN_100 = loop_back_R_0_control | _GEN_89; // @[LoopBlock.scala 941:56]
  wire  _GEN_102 = loop_back_R_0_control | _GEN_35; // @[LoopBlock.scala 941:56]
  wire  _GEN_108 = loop_back_R_0_control | _GEN_38; // @[LoopBlock.scala 941:56]
  wire  _GEN_109 = loop_back_R_0_control | _GEN_40; // @[LoopBlock.scala 941:56]
  wire  _GEN_110 = loop_back_R_0_control | _GEN_42; // @[LoopBlock.scala 941:56]
  wire  _GEN_111 = loop_back_R_0_control | _GEN_44; // @[LoopBlock.scala 941:56]
  wire  _GEN_112 = loop_back_R_0_control | _GEN_46; // @[LoopBlock.scala 941:56]
  wire  _T_72 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire  _GEN_323 = ~_T_42; // @[LoopBlock.scala 970:19]
  wire  _GEN_324 = _GEN_323 & _T_50; // @[LoopBlock.scala 970:19]
  wire  _GEN_325 = _GEN_324 & _T_56; // @[LoopBlock.scala 970:19]
  wire  _GEN_326 = _GEN_325 & loop_back_R_0_control; // @[LoopBlock.scala 970:19]
  wire  _GEN_330 = ~loop_back_R_0_control; // @[LoopBlock.scala 988:19]
  wire  _GEN_331 = _GEN_325 & _GEN_330; // @[LoopBlock.scala 988:19]
  wire  _GEN_332 = _GEN_331 & loop_finish_R_0_control; // @[LoopBlock.scala 988:19]
  assign io_enable_ready = ~enable_valid_R; // @[LoopBlock.scala 598:19]
  assign io_InLiveIn_0_ready = ~in_live_in_valid_R_0; // @[LoopBlock.scala 625:26]
  assign io_InLiveIn_1_ready = ~in_live_in_valid_R_1; // @[LoopBlock.scala 625:26]
  assign io_InLiveIn_2_ready = ~in_live_in_valid_R_2; // @[LoopBlock.scala 625:26]
  assign io_InLiveIn_3_ready = ~in_live_in_valid_R_3; // @[LoopBlock.scala 625:26]
  assign io_OutLiveIn_field3_0_valid = out_live_in_valid_R_3_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field3_0_bits_data = in_live_in_R_3_data; // @[LoopBlock.scala 667:49]
  assign io_OutLiveIn_field2_0_valid = out_live_in_valid_R_2_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field2_0_bits_data = in_live_in_R_2_data; // @[LoopBlock.scala 667:49]
  assign io_OutLiveIn_field1_0_valid = out_live_in_valid_R_1_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field1_0_bits_data = in_live_in_R_1_data; // @[LoopBlock.scala 667:49]
  assign io_OutLiveIn_field0_0_valid = out_live_in_valid_R_0_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field0_0_bits_data = in_live_in_R_0_data; // @[LoopBlock.scala 667:49]
  assign io_activate_loop_start_valid = active_loop_start_valid_R; // @[LoopBlock.scala 692:32]
  assign io_activate_loop_start_bits_taskID = active_loop_start_R_taskID; // @[LoopBlock.scala 691:31]
  assign io_activate_loop_start_bits_control = active_loop_start_R_control; // @[LoopBlock.scala 691:31]
  assign io_activate_loop_back_valid = active_loop_back_valid_R; // @[LoopBlock.scala 695:31]
  assign io_activate_loop_back_bits_taskID = active_loop_back_R_taskID; // @[LoopBlock.scala 694:30]
  assign io_activate_loop_back_bits_control = active_loop_back_R_control; // @[LoopBlock.scala 694:30]
  assign io_loopBack_0_ready = ~loop_back_valid_R_0; // @[LoopBlock.scala 605:26]
  assign io_loopFinish_0_ready = ~loop_finish_valid_R_0; // @[LoopBlock.scala 614:28]
  assign io_CarryDepenIn_0_ready = ~in_carry_in_valid_R_0; // @[LoopBlock.scala 643:30]
  assign io_CarryDepenOut_field0_0_valid = out_carry_out_valid_R_0_0; // @[LoopBlock.scala 684:54]
  assign io_CarryDepenOut_field0_0_bits_taskID = in_carry_in_R_0_taskID; // @[LoopBlock.scala 683:53]
  assign io_CarryDepenOut_field0_0_bits_data = in_carry_in_R_0_data; // @[LoopBlock.scala 683:53]
  assign io_loopExit_0_valid = loop_exit_valid_R_0; // @[LoopBlock.scala 699:26]
  assign io_loopExit_0_bits_taskID = loop_exit_R_0_taskID; // @[LoopBlock.scala 698:25]
  assign io_loopExit_0_bits_control = loop_exit_R_0_control; // @[LoopBlock.scala 698:25]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enable_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_valid_R = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  loop_back_R_0_taskID = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  loop_back_R_0_control = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  loop_back_valid_R_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  loop_finish_R_0_control = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  loop_finish_valid_R_0 = _RAND_8[0:0];
  _RAND_9 = {2{`RANDOM}};
  in_live_in_R_0_data = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  in_live_in_R_1_data = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  in_live_in_R_2_data = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  in_live_in_R_3_data = _RAND_12[63:0];
  _RAND_13 = {1{`RANDOM}};
  in_live_in_valid_R_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  in_live_in_valid_R_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  in_live_in_valid_R_2 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  in_live_in_valid_R_3 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  in_carry_in_R_0_taskID = _RAND_17[4:0];
  _RAND_18 = {2{`RANDOM}};
  in_carry_in_R_0_data = _RAND_18[63:0];
  _RAND_19 = {1{`RANDOM}};
  in_carry_in_valid_R_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  out_live_in_valid_R_0_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  out_live_in_valid_R_1_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  out_live_in_valid_R_2_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  out_live_in_valid_R_3_0 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  out_live_in_fire_R_0_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  out_live_in_fire_R_1_0 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  out_live_in_fire_R_2_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  out_live_in_fire_R_3_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  out_carry_out_valid_R_0_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  active_loop_start_R_taskID = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  active_loop_start_R_control = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  active_loop_start_valid_R = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  active_loop_back_R_taskID = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  active_loop_back_R_control = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  active_loop_back_valid_R = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  loop_exit_R_0_taskID = _RAND_35[4:0];
  _RAND_36 = {1{`RANDOM}};
  loop_exit_R_0_control = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  loop_exit_valid_R_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  loop_exit_fire_R_0 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  state = _RAND_39[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_42) begin
      if (_T_16) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_50) begin
      if (_T_16) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        enable_R_taskID <= 5'h0;
      end else if (_T_16) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_16) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_42) begin
      if (_T_16) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_50) begin
      if (_T_16) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        enable_R_control <= 1'h0;
      end else if (_T_16) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_16) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_42) begin
      enable_valid_R <= _GEN_5;
    end else if (_T_50) begin
      enable_valid_R <= _GEN_5;
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_5;
      end
    end else begin
      enable_valid_R <= _GEN_5;
    end
    if (reset) begin
      loop_back_R_0_taskID <= 5'h0;
    end else if (_T_42) begin
      if (_T_18) begin
        loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          loop_back_R_0_taskID <= 5'h0;
        end else if (_T_18) begin
          loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
        end
      end else if (_T_18) begin
        loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        loop_back_R_0_taskID <= 5'h0;
      end else if (_T_18) begin
        loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
      end
    end else begin
      loop_back_R_0_taskID <= _GEN_6;
    end
    if (reset) begin
      loop_back_R_0_control <= 1'h0;
    end else if (_T_42) begin
      if (_T_18) begin
        loop_back_R_0_control <= io_loopBack_0_bits_control;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          loop_back_R_0_control <= 1'h0;
        end else if (_T_18) begin
          loop_back_R_0_control <= io_loopBack_0_bits_control;
        end
      end else if (_T_18) begin
        loop_back_R_0_control <= io_loopBack_0_bits_control;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        loop_back_R_0_control <= 1'h0;
      end else if (_T_18) begin
        loop_back_R_0_control <= io_loopBack_0_bits_control;
      end
    end else begin
      loop_back_R_0_control <= _GEN_7;
    end
    if (reset) begin
      loop_back_valid_R_0 <= 1'h0;
    end else if (_T_42) begin
      loop_back_valid_R_0 <= _GEN_9;
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          loop_back_valid_R_0 <= 1'h0;
        end else begin
          loop_back_valid_R_0 <= _GEN_9;
        end
      end else begin
        loop_back_valid_R_0 <= _GEN_9;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        loop_back_valid_R_0 <= 1'h0;
      end else begin
        loop_back_valid_R_0 <= _GEN_9;
      end
    end else begin
      loop_back_valid_R_0 <= _GEN_9;
    end
    if (reset) begin
      loop_finish_R_0_control <= 1'h0;
    end else if (_T_42) begin
      if (_T_20) begin
        loop_finish_R_0_control <= io_loopFinish_0_bits_control;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          loop_finish_R_0_control <= 1'h0;
        end else if (_T_20) begin
          loop_finish_R_0_control <= io_loopFinish_0_bits_control;
        end
      end else if (_T_20) begin
        loop_finish_R_0_control <= io_loopFinish_0_bits_control;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        loop_finish_R_0_control <= 1'h0;
      end else if (_T_20) begin
        loop_finish_R_0_control <= io_loopFinish_0_bits_control;
      end
    end else begin
      loop_finish_R_0_control <= _GEN_11;
    end
    if (reset) begin
      loop_finish_valid_R_0 <= 1'h0;
    end else if (_T_42) begin
      loop_finish_valid_R_0 <= _GEN_13;
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          loop_finish_valid_R_0 <= 1'h0;
        end else begin
          loop_finish_valid_R_0 <= _GEN_13;
        end
      end else begin
        loop_finish_valid_R_0 <= _GEN_13;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        loop_finish_valid_R_0 <= 1'h0;
      end else begin
        loop_finish_valid_R_0 <= _GEN_13;
      end
    end else begin
      loop_finish_valid_R_0 <= _GEN_13;
    end
    if (reset) begin
      in_live_in_R_0_data <= 64'h0;
    end else if (_T_42) begin
      if (_T_22) begin
        in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
      end
    end else if (_T_50) begin
      if (_T_22) begin
        in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_0_data <= 64'h0;
      end else if (_T_22) begin
        in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
      end
    end else if (_T_22) begin
      in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
    end
    if (reset) begin
      in_live_in_R_1_data <= 64'h0;
    end else if (_T_42) begin
      if (_T_24) begin
        in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
      end
    end else if (_T_50) begin
      if (_T_24) begin
        in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_1_data <= 64'h0;
      end else if (_T_24) begin
        in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
      end
    end else if (_T_24) begin
      in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
    end
    if (reset) begin
      in_live_in_R_2_data <= 64'h0;
    end else if (_T_42) begin
      if (_T_26) begin
        in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
      end
    end else if (_T_50) begin
      if (_T_26) begin
        in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_2_data <= 64'h0;
      end else if (_T_26) begin
        in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
      end
    end else if (_T_26) begin
      in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
    end
    if (reset) begin
      in_live_in_R_3_data <= 64'h0;
    end else if (_T_42) begin
      if (_T_28) begin
        in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
      end
    end else if (_T_50) begin
      if (_T_28) begin
        in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_3_data <= 64'h0;
      end else if (_T_28) begin
        in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
      end
    end else if (_T_28) begin
      in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
    end
    if (reset) begin
      in_live_in_valid_R_0 <= 1'h0;
    end else if (_T_42) begin
      in_live_in_valid_R_0 <= _GEN_17;
    end else if (_T_50) begin
      in_live_in_valid_R_0 <= _GEN_17;
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_0 <= 1'h0;
      end else begin
        in_live_in_valid_R_0 <= _GEN_17;
      end
    end else begin
      in_live_in_valid_R_0 <= _GEN_17;
    end
    if (reset) begin
      in_live_in_valid_R_1 <= 1'h0;
    end else if (_T_42) begin
      in_live_in_valid_R_1 <= _GEN_21;
    end else if (_T_50) begin
      in_live_in_valid_R_1 <= _GEN_21;
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_1 <= 1'h0;
      end else begin
        in_live_in_valid_R_1 <= _GEN_21;
      end
    end else begin
      in_live_in_valid_R_1 <= _GEN_21;
    end
    if (reset) begin
      in_live_in_valid_R_2 <= 1'h0;
    end else if (_T_42) begin
      in_live_in_valid_R_2 <= _GEN_25;
    end else if (_T_50) begin
      in_live_in_valid_R_2 <= _GEN_25;
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_2 <= 1'h0;
      end else begin
        in_live_in_valid_R_2 <= _GEN_25;
      end
    end else begin
      in_live_in_valid_R_2 <= _GEN_25;
    end
    if (reset) begin
      in_live_in_valid_R_3 <= 1'h0;
    end else if (_T_42) begin
      in_live_in_valid_R_3 <= _GEN_29;
    end else if (_T_50) begin
      in_live_in_valid_R_3 <= _GEN_29;
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_3 <= 1'h0;
      end else begin
        in_live_in_valid_R_3 <= _GEN_29;
      end
    end else begin
      in_live_in_valid_R_3 <= _GEN_29;
    end
    if (reset) begin
      in_carry_in_R_0_taskID <= 5'h0;
    end else if (_T_30) begin
      in_carry_in_R_0_taskID <= io_CarryDepenIn_0_bits_taskID;
    end
    if (reset) begin
      in_carry_in_R_0_data <= 64'h0;
    end else if (_T_30) begin
      in_carry_in_R_0_data <= io_CarryDepenIn_0_bits_data;
    end
    if (reset) begin
      in_carry_in_valid_R_0 <= 1'h0;
    end else if (_T_42) begin
      in_carry_in_valid_R_0 <= _GEN_33;
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          in_carry_in_valid_R_0 <= 1'h0;
        end else begin
          in_carry_in_valid_R_0 <= _GEN_33;
        end
      end else begin
        in_carry_in_valid_R_0 <= _GEN_33;
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        in_carry_in_valid_R_0 <= 1'h0;
      end else begin
        in_carry_in_valid_R_0 <= _GEN_33;
      end
    end else begin
      in_carry_in_valid_R_0 <= _GEN_33;
    end
    if (reset) begin
      out_live_in_valid_R_0_0 <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        out_live_in_valid_R_0_0 <= _GEN_48;
      end else if (_T_34) begin
        out_live_in_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        out_live_in_valid_R_0_0 <= _GEN_108;
      end else if (_T_34) begin
        out_live_in_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_34) begin
      out_live_in_valid_R_0_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_valid_R_1_0 <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        out_live_in_valid_R_1_0 <= _GEN_49;
      end else if (_T_35) begin
        out_live_in_valid_R_1_0 <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        out_live_in_valid_R_1_0 <= _GEN_109;
      end else if (_T_35) begin
        out_live_in_valid_R_1_0 <= 1'h0;
      end
    end else if (_T_35) begin
      out_live_in_valid_R_1_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_valid_R_2_0 <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        out_live_in_valid_R_2_0 <= _GEN_50;
      end else if (_T_36) begin
        out_live_in_valid_R_2_0 <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        out_live_in_valid_R_2_0 <= _GEN_110;
      end else if (_T_36) begin
        out_live_in_valid_R_2_0 <= 1'h0;
      end
    end else if (_T_36) begin
      out_live_in_valid_R_2_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_valid_R_3_0 <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        out_live_in_valid_R_3_0 <= _GEN_51;
      end else if (_T_37) begin
        out_live_in_valid_R_3_0 <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        out_live_in_valid_R_3_0 <= _GEN_111;
      end else if (_T_37) begin
        out_live_in_valid_R_3_0 <= 1'h0;
      end
    end else if (_T_37) begin
      out_live_in_valid_R_3_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_fire_R_0_0 <= 1'h0;
    end else if (_T_42) begin
      out_live_in_fire_R_0_0 <= _GEN_39;
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_0_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_0_0 <= _GEN_39;
        end
      end else begin
        out_live_in_fire_R_0_0 <= _GEN_39;
      end
    end else begin
      out_live_in_fire_R_0_0 <= _GEN_39;
    end
    if (reset) begin
      out_live_in_fire_R_1_0 <= 1'h0;
    end else if (_T_42) begin
      out_live_in_fire_R_1_0 <= _GEN_41;
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_1_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_1_0 <= _GEN_41;
        end
      end else begin
        out_live_in_fire_R_1_0 <= _GEN_41;
      end
    end else begin
      out_live_in_fire_R_1_0 <= _GEN_41;
    end
    if (reset) begin
      out_live_in_fire_R_2_0 <= 1'h0;
    end else if (_T_42) begin
      out_live_in_fire_R_2_0 <= _GEN_43;
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_2_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_2_0 <= _GEN_43;
        end
      end else begin
        out_live_in_fire_R_2_0 <= _GEN_43;
      end
    end else begin
      out_live_in_fire_R_2_0 <= _GEN_43;
    end
    if (reset) begin
      out_live_in_fire_R_3_0 <= 1'h0;
    end else if (_T_42) begin
      out_live_in_fire_R_3_0 <= _GEN_45;
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_3_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_3_0 <= _GEN_45;
        end
      end else begin
        out_live_in_fire_R_3_0 <= _GEN_45;
      end
    end else begin
      out_live_in_fire_R_3_0 <= _GEN_45;
    end
    if (reset) begin
      out_carry_out_valid_R_0_0 <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        out_carry_out_valid_R_0_0 <= _GEN_52;
      end else if (_T_38) begin
        out_carry_out_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        out_carry_out_valid_R_0_0 <= _GEN_112;
      end else if (_T_38) begin
        out_carry_out_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_38) begin
      out_carry_out_valid_R_0_0 <= 1'h0;
    end
    if (reset) begin
      active_loop_start_R_taskID <= 5'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        if (enable_R_control) begin
          active_loop_start_R_taskID <= enable_R_taskID;
        end
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          active_loop_start_R_taskID <= loop_back_R_0_taskID;
        end else if (loop_finish_R_0_control) begin
          active_loop_start_R_taskID <= 5'h0;
        end
      end
    end
    if (reset) begin
      active_loop_start_R_control <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        active_loop_start_R_control <= _GEN_54;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          active_loop_start_R_control <= 1'h0;
        end else if (loop_finish_R_0_control) begin
          active_loop_start_R_control <= 1'h0;
        end
      end
    end
    if (reset) begin
      active_loop_start_valid_R <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        active_loop_start_valid_R <= _GEN_56;
      end else if (_T_31) begin
        active_loop_start_valid_R <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        active_loop_start_valid_R <= _GEN_98;
      end else if (_T_31) begin
        active_loop_start_valid_R <= 1'h0;
      end
    end else if (_T_31) begin
      active_loop_start_valid_R <= 1'h0;
    end
    if (reset) begin
      active_loop_back_R_taskID <= 5'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        if (enable_R_control) begin
          active_loop_back_R_taskID <= enable_R_taskID;
        end
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          active_loop_back_R_taskID <= loop_back_R_0_taskID;
        end else if (loop_finish_R_0_control) begin
          active_loop_back_R_taskID <= 5'h0;
        end
      end
    end
    if (reset) begin
      active_loop_back_R_control <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        if (enable_R_control) begin
          active_loop_back_R_control <= 1'h0;
        end
      end
    end else if (_T_50) begin
      if (_T_56) begin
        active_loop_back_R_control <= _GEN_100;
      end
    end
    if (reset) begin
      active_loop_back_valid_R <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        active_loop_back_valid_R <= _GEN_60;
      end else if (_T_32) begin
        active_loop_back_valid_R <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        active_loop_back_valid_R <= _GEN_102;
      end else if (_T_32) begin
        active_loop_back_valid_R <= 1'h0;
      end
    end else if (_T_32) begin
      active_loop_back_valid_R <= 1'h0;
    end
    if (reset) begin
      loop_exit_R_0_taskID <= 5'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        if (!(enable_R_control)) begin
          loop_exit_R_0_taskID <= 5'h0;
        end
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (!(loop_back_R_0_control)) begin
          if (loop_finish_R_0_control) begin
            loop_exit_R_0_taskID <= loop_back_R_0_taskID;
          end
        end
      end
    end
    if (reset) begin
      loop_exit_R_0_control <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        loop_exit_R_0_control <= _GEN_63;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (!(loop_back_R_0_control)) begin
          loop_exit_R_0_control <= _GEN_92;
        end
      end
    end
    if (reset) begin
      loop_exit_valid_R_0 <= 1'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        if (enable_R_control) begin
          if (_T_33) begin
            loop_exit_valid_R_0 <= 1'h0;
          end
        end else begin
          loop_exit_valid_R_0 <= 1'h1;
        end
      end else if (_T_33) begin
        loop_exit_valid_R_0 <= 1'h0;
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          if (_T_33) begin
            loop_exit_valid_R_0 <= 1'h0;
          end
        end else begin
          loop_exit_valid_R_0 <= _GEN_84;
        end
      end else if (_T_33) begin
        loop_exit_valid_R_0 <= 1'h0;
      end
    end else begin
      loop_exit_valid_R_0 <= _GEN_36;
    end
    if (reset) begin
      loop_exit_fire_R_0 <= 1'h0;
    end else begin
      loop_exit_fire_R_0 <= _GEN_37;
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_42) begin
      if (_T_46) begin
        if (enable_R_control) begin
          state <= 2'h1;
        end else begin
          state <= 2'h2;
        end
      end
    end else if (_T_50) begin
      if (_T_56) begin
        if (loop_back_R_0_control) begin
          state <= 2'h1;
        end else if (loop_finish_R_0_control) begin
          state <= 2'h2;
        end
      end
    end else if (_T_72) begin
      if (loop_exit_fire_R_0) begin
        state <= 2'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_326 & _T_64) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [LOOP] [Loop_0] [ID: 0] [RESTARTED] [Cycle: %d]\n",io_activate_loop_start_bits_taskID,cycleCount); // @[LoopBlock.scala 970:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_332 & _T_64) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [LOOP] [Loop_0] [ID: 0] [FIRED] [Cycle: %d]\n",io_activate_loop_start_bits_taskID,cycleCount); // @[LoopBlock.scala 988:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_332 & _T_64) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [LOOP] [Loop_0] [ID: 0] [FINAL] [Cycle: %d]\n",io_activate_loop_start_bits_taskID,cycleCount); // @[LoopBlock.scala 1003:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module LoopBlockNode_1(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input         io_enable_bits_control,
  output        io_InLiveIn_0_ready,
  input         io_InLiveIn_0_valid,
  input  [63:0] io_InLiveIn_0_bits_data,
  output        io_InLiveIn_1_ready,
  input         io_InLiveIn_1_valid,
  input  [63:0] io_InLiveIn_1_bits_data,
  output        io_InLiveIn_2_ready,
  input         io_InLiveIn_2_valid,
  input  [63:0] io_InLiveIn_2_bits_data,
  output        io_InLiveIn_3_ready,
  input         io_InLiveIn_3_valid,
  input  [63:0] io_InLiveIn_3_bits_data,
  input         io_OutLiveIn_field3_0_ready,
  output        io_OutLiveIn_field3_0_valid,
  output [63:0] io_OutLiveIn_field3_0_bits_data,
  input         io_OutLiveIn_field2_0_ready,
  output        io_OutLiveIn_field2_0_valid,
  output [63:0] io_OutLiveIn_field2_0_bits_data,
  input         io_OutLiveIn_field1_0_ready,
  output        io_OutLiveIn_field1_0_valid,
  output [63:0] io_OutLiveIn_field1_0_bits_data,
  input         io_OutLiveIn_field0_0_ready,
  output        io_OutLiveIn_field0_0_valid,
  output [63:0] io_OutLiveIn_field0_0_bits_data,
  input         io_OutLiveIn_field0_1_ready,
  output        io_OutLiveIn_field0_1_valid,
  output [63:0] io_OutLiveIn_field0_1_bits_data,
  input         io_activate_loop_start_ready,
  output        io_activate_loop_start_valid,
  output [4:0]  io_activate_loop_start_bits_taskID,
  output        io_activate_loop_start_bits_control,
  input         io_activate_loop_back_ready,
  output        io_activate_loop_back_valid,
  output [4:0]  io_activate_loop_back_bits_taskID,
  output        io_activate_loop_back_bits_control,
  output        io_loopBack_0_ready,
  input         io_loopBack_0_valid,
  input  [4:0]  io_loopBack_0_bits_taskID,
  input         io_loopBack_0_bits_control,
  output        io_loopFinish_0_ready,
  input         io_loopFinish_0_valid,
  input         io_loopFinish_0_bits_control,
  output        io_CarryDepenIn_0_ready,
  input         io_CarryDepenIn_0_valid,
  input  [4:0]  io_CarryDepenIn_0_bits_taskID,
  input  [63:0] io_CarryDepenIn_0_bits_data,
  input         io_CarryDepenOut_field0_0_ready,
  output        io_CarryDepenOut_field0_0_valid,
  output [4:0]  io_CarryDepenOut_field0_0_bits_taskID,
  output [63:0] io_CarryDepenOut_field0_0_bits_data,
  input         io_loopExit_0_ready,
  output        io_loopExit_0_valid,
  output [4:0]  io_loopExit_0_bits_taskID,
  output        io_loopExit_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  enable_R_control; // @[LoopBlock.scala 531:25]
  reg  enable_valid_R; // @[LoopBlock.scala 532:31]
  reg [4:0] loop_back_R_0_taskID; // @[LoopBlock.scala 534:50]
  reg  loop_back_R_0_control; // @[LoopBlock.scala 534:50]
  reg  loop_back_valid_R_0; // @[LoopBlock.scala 535:56]
  reg  loop_finish_R_0_control; // @[LoopBlock.scala 537:54]
  reg  loop_finish_valid_R_0; // @[LoopBlock.scala 538:60]
  reg [63:0] in_live_in_R_0_data; // @[LoopBlock.scala 540:53]
  reg [63:0] in_live_in_R_1_data; // @[LoopBlock.scala 540:53]
  reg [63:0] in_live_in_R_2_data; // @[LoopBlock.scala 540:53]
  reg [63:0] in_live_in_R_3_data; // @[LoopBlock.scala 540:53]
  reg  in_live_in_valid_R_0; // @[LoopBlock.scala 541:59]
  reg  in_live_in_valid_R_1; // @[LoopBlock.scala 541:59]
  reg  in_live_in_valid_R_2; // @[LoopBlock.scala 541:59]
  reg  in_live_in_valid_R_3; // @[LoopBlock.scala 541:59]
  reg [4:0] in_carry_in_R_0_taskID; // @[LoopBlock.scala 543:56]
  reg [63:0] in_carry_in_R_0_data; // @[LoopBlock.scala 543:56]
  reg  in_carry_in_valid_R_0; // @[LoopBlock.scala 544:62]
  reg  out_live_in_valid_R_0_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_valid_R_0_1; // @[LoopBlock.scala 556:47]
  reg  out_live_in_valid_R_1_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_valid_R_2_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_valid_R_3_0; // @[LoopBlock.scala 556:47]
  reg  out_live_in_fire_R_0_0; // @[LoopBlock.scala 560:47]
  reg  out_live_in_fire_R_0_1; // @[LoopBlock.scala 560:47]
  reg  out_live_in_fire_R_1_0; // @[LoopBlock.scala 560:47]
  reg  out_live_in_fire_R_2_0; // @[LoopBlock.scala 560:47]
  reg  out_live_in_fire_R_3_0; // @[LoopBlock.scala 560:47]
  reg  out_carry_out_valid_R_0_0; // @[LoopBlock.scala 576:44]
  reg [4:0] active_loop_start_R_taskID; // @[LoopBlock.scala 584:36]
  reg  active_loop_start_R_control; // @[LoopBlock.scala 584:36]
  reg  active_loop_start_valid_R; // @[LoopBlock.scala 585:42]
  reg [4:0] active_loop_back_R_taskID; // @[LoopBlock.scala 587:35]
  reg  active_loop_back_R_control; // @[LoopBlock.scala 587:35]
  reg  active_loop_back_valid_R; // @[LoopBlock.scala 588:41]
  reg [4:0] loop_exit_R_0_taskID; // @[LoopBlock.scala 590:47]
  reg  loop_exit_R_0_control; // @[LoopBlock.scala 590:47]
  reg  loop_exit_valid_R_0; // @[LoopBlock.scala 591:53]
  reg  loop_exit_fire_R_0; // @[LoopBlock.scala 592:52]
  wire  _T_16 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_5 = _T_16 | enable_valid_R; // @[LoopBlock.scala 599:26]
  wire  _T_18 = io_loopBack_0_ready & io_loopBack_0_valid; // @[Decoupled.scala 40:37]
  wire [4:0] _GEN_6 = _T_18 ? io_loopBack_0_bits_taskID : loop_back_R_0_taskID; // @[LoopBlock.scala 606:33]
  wire  _GEN_7 = _T_18 ? io_loopBack_0_bits_control : loop_back_R_0_control; // @[LoopBlock.scala 606:33]
  wire  _GEN_9 = _T_18 | loop_back_valid_R_0; // @[LoopBlock.scala 606:33]
  wire  _T_20 = io_loopFinish_0_ready & io_loopFinish_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_20 ? io_loopFinish_0_bits_control : loop_finish_R_0_control; // @[LoopBlock.scala 615:35]
  wire  _GEN_13 = _T_20 | loop_finish_valid_R_0; // @[LoopBlock.scala 615:35]
  wire  _T_22 = io_InLiveIn_0_ready & io_InLiveIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_17 = _T_22 | in_live_in_valid_R_0; // @[LoopBlock.scala 626:33]
  wire  _T_24 = io_InLiveIn_1_ready & io_InLiveIn_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_21 = _T_24 | in_live_in_valid_R_1; // @[LoopBlock.scala 626:33]
  wire  _T_26 = io_InLiveIn_2_ready & io_InLiveIn_2_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_25 = _T_26 | in_live_in_valid_R_2; // @[LoopBlock.scala 626:33]
  wire  _T_28 = io_InLiveIn_3_ready & io_InLiveIn_3_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_29 = _T_28 | in_live_in_valid_R_3; // @[LoopBlock.scala 626:33]
  wire  _T_30 = io_CarryDepenIn_0_ready & io_CarryDepenIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_33 = _T_30 | in_carry_in_valid_R_0; // @[LoopBlock.scala 644:37]
  wire  _T_31 = io_activate_loop_start_ready & io_activate_loop_start_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_34 = _T_31 ? 1'h0 : active_loop_start_valid_R; // @[LoopBlock.scala 707:39]
  wire  _T_32 = io_activate_loop_back_ready & io_activate_loop_back_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_35 = _T_32 ? 1'h0 : active_loop_back_valid_R; // @[LoopBlock.scala 711:38]
  wire  _T_33 = io_loopExit_0_ready & io_loopExit_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_36 = _T_33 ? 1'h0 : loop_exit_valid_R_0; // @[LoopBlock.scala 716:33]
  wire  _GEN_37 = _T_33 | loop_exit_fire_R_0; // @[LoopBlock.scala 716:33]
  wire  _T_34 = io_OutLiveIn_field0_0_ready & io_OutLiveIn_field0_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_38 = _T_34 ? 1'h0 : out_live_in_valid_R_0_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_39 = _T_34 | out_live_in_fire_R_0_0; // @[LoopBlock.scala 725:57]
  wire  _T_35 = io_OutLiveIn_field0_1_ready & io_OutLiveIn_field0_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_40 = _T_35 ? 1'h0 : out_live_in_valid_R_0_1; // @[LoopBlock.scala 725:57]
  wire  _GEN_41 = _T_35 | out_live_in_fire_R_0_1; // @[LoopBlock.scala 725:57]
  wire  _T_36 = io_OutLiveIn_field1_0_ready & io_OutLiveIn_field1_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_42 = _T_36 ? 1'h0 : out_live_in_valid_R_1_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_43 = _T_36 | out_live_in_fire_R_1_0; // @[LoopBlock.scala 725:57]
  wire  _T_37 = io_OutLiveIn_field2_0_ready & io_OutLiveIn_field2_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_44 = _T_37 ? 1'h0 : out_live_in_valid_R_2_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_45 = _T_37 | out_live_in_fire_R_2_0; // @[LoopBlock.scala 725:57]
  wire  _T_38 = io_OutLiveIn_field3_0_ready & io_OutLiveIn_field3_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_46 = _T_38 ? 1'h0 : out_live_in_valid_R_3_0; // @[LoopBlock.scala 725:57]
  wire  _GEN_47 = _T_38 | out_live_in_fire_R_3_0; // @[LoopBlock.scala 725:57]
  wire  _T_39 = io_CarryDepenOut_field0_0_ready & io_CarryDepenOut_field0_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_48 = _T_39 ? 1'h0 : out_carry_out_valid_R_0_0; // @[LoopBlock.scala 745:61]
  reg [1:0] state; // @[LoopBlock.scala 864:22]
  wire  _T_43 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_44 = in_live_in_valid_R_0 & in_live_in_valid_R_1; // @[LoopBlock.scala 768:35]
  wire  _T_45 = _T_44 & in_live_in_valid_R_2; // @[LoopBlock.scala 768:35]
  wire  _T_46 = _T_45 & in_live_in_valid_R_3; // @[LoopBlock.scala 768:35]
  wire  _T_47 = _T_46 & enable_valid_R; // @[LoopBlock.scala 906:28]
  wire  _GEN_50 = enable_R_control | _GEN_38; // @[LoopBlock.scala 907:26]
  wire  _GEN_51 = enable_R_control | _GEN_40; // @[LoopBlock.scala 907:26]
  wire  _GEN_52 = enable_R_control | _GEN_42; // @[LoopBlock.scala 907:26]
  wire  _GEN_53 = enable_R_control | _GEN_44; // @[LoopBlock.scala 907:26]
  wire  _GEN_54 = enable_R_control | _GEN_46; // @[LoopBlock.scala 907:26]
  wire  _GEN_55 = enable_R_control | _GEN_48; // @[LoopBlock.scala 907:26]
  wire  _GEN_57 = enable_R_control | active_loop_start_R_control; // @[LoopBlock.scala 907:26]
  wire  _GEN_59 = enable_R_control | _GEN_34; // @[LoopBlock.scala 907:26]
  wire  _GEN_63 = enable_R_control | _GEN_35; // @[LoopBlock.scala 907:26]
  wire  _GEN_66 = enable_R_control & loop_exit_R_0_control; // @[LoopBlock.scala 907:26]
  wire  _T_51 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_52 = loop_back_valid_R_0 & loop_finish_valid_R_0; // @[LoopBlock.scala 937:30]
  wire  _T_54 = out_live_in_fire_R_0_0 & out_live_in_fire_R_0_1; // @[LoopBlock.scala 828:65]
  wire  _T_55 = _T_54 & out_live_in_fire_R_1_0; // @[LoopBlock.scala 831:26]
  wire  _T_56 = _T_55 & out_live_in_fire_R_2_0; // @[LoopBlock.scala 831:26]
  wire  _T_57 = _T_56 & out_live_in_fire_R_3_0; // @[LoopBlock.scala 831:26]
  wire  _T_58 = _T_52 & _T_57; // @[LoopBlock.scala 938:29]
  wire  _T_66 = ~reset; // @[LoopBlock.scala 970:19]
  wire  _GEN_88 = loop_finish_R_0_control | _GEN_36; // @[LoopBlock.scala 974:64]
  wire  _GEN_93 = loop_finish_R_0_control ? 1'h0 : active_loop_back_R_control; // @[LoopBlock.scala 974:64]
  wire  _GEN_96 = loop_finish_R_0_control | loop_exit_R_0_control; // @[LoopBlock.scala 974:64]
  wire  _GEN_102 = loop_back_R_0_control | _GEN_34; // @[LoopBlock.scala 941:56]
  wire  _GEN_104 = loop_back_R_0_control | _GEN_93; // @[LoopBlock.scala 941:56]
  wire  _GEN_106 = loop_back_R_0_control | _GEN_35; // @[LoopBlock.scala 941:56]
  wire  _GEN_113 = loop_back_R_0_control | _GEN_38; // @[LoopBlock.scala 941:56]
  wire  _GEN_114 = loop_back_R_0_control | _GEN_40; // @[LoopBlock.scala 941:56]
  wire  _GEN_115 = loop_back_R_0_control | _GEN_42; // @[LoopBlock.scala 941:56]
  wire  _GEN_116 = loop_back_R_0_control | _GEN_44; // @[LoopBlock.scala 941:56]
  wire  _GEN_117 = loop_back_R_0_control | _GEN_46; // @[LoopBlock.scala 941:56]
  wire  _GEN_118 = loop_back_R_0_control | _GEN_48; // @[LoopBlock.scala 941:56]
  wire  _T_74 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire  _GEN_335 = ~_T_43; // @[LoopBlock.scala 970:19]
  wire  _GEN_336 = _GEN_335 & _T_51; // @[LoopBlock.scala 970:19]
  wire  _GEN_337 = _GEN_336 & _T_58; // @[LoopBlock.scala 970:19]
  wire  _GEN_338 = _GEN_337 & loop_back_R_0_control; // @[LoopBlock.scala 970:19]
  wire  _GEN_342 = ~loop_back_R_0_control; // @[LoopBlock.scala 988:19]
  wire  _GEN_343 = _GEN_337 & _GEN_342; // @[LoopBlock.scala 988:19]
  wire  _GEN_344 = _GEN_343 & loop_finish_R_0_control; // @[LoopBlock.scala 988:19]
  assign io_enable_ready = ~enable_valid_R; // @[LoopBlock.scala 598:19]
  assign io_InLiveIn_0_ready = ~in_live_in_valid_R_0; // @[LoopBlock.scala 625:26]
  assign io_InLiveIn_1_ready = ~in_live_in_valid_R_1; // @[LoopBlock.scala 625:26]
  assign io_InLiveIn_2_ready = ~in_live_in_valid_R_2; // @[LoopBlock.scala 625:26]
  assign io_InLiveIn_3_ready = ~in_live_in_valid_R_3; // @[LoopBlock.scala 625:26]
  assign io_OutLiveIn_field3_0_valid = out_live_in_valid_R_3_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field3_0_bits_data = in_live_in_R_3_data; // @[LoopBlock.scala 667:49]
  assign io_OutLiveIn_field2_0_valid = out_live_in_valid_R_2_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field2_0_bits_data = in_live_in_R_2_data; // @[LoopBlock.scala 667:49]
  assign io_OutLiveIn_field1_0_valid = out_live_in_valid_R_1_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field1_0_bits_data = in_live_in_R_1_data; // @[LoopBlock.scala 667:49]
  assign io_OutLiveIn_field0_0_valid = out_live_in_valid_R_0_0; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field0_0_bits_data = in_live_in_R_0_data; // @[LoopBlock.scala 667:49]
  assign io_OutLiveIn_field0_1_valid = out_live_in_valid_R_0_1; // @[LoopBlock.scala 668:50]
  assign io_OutLiveIn_field0_1_bits_data = in_live_in_R_0_data; // @[LoopBlock.scala 667:49]
  assign io_activate_loop_start_valid = active_loop_start_valid_R; // @[LoopBlock.scala 692:32]
  assign io_activate_loop_start_bits_taskID = active_loop_start_R_taskID; // @[LoopBlock.scala 691:31]
  assign io_activate_loop_start_bits_control = active_loop_start_R_control; // @[LoopBlock.scala 691:31]
  assign io_activate_loop_back_valid = active_loop_back_valid_R; // @[LoopBlock.scala 695:31]
  assign io_activate_loop_back_bits_taskID = active_loop_back_R_taskID; // @[LoopBlock.scala 694:30]
  assign io_activate_loop_back_bits_control = active_loop_back_R_control; // @[LoopBlock.scala 694:30]
  assign io_loopBack_0_ready = ~loop_back_valid_R_0; // @[LoopBlock.scala 605:26]
  assign io_loopFinish_0_ready = ~loop_finish_valid_R_0; // @[LoopBlock.scala 614:28]
  assign io_CarryDepenIn_0_ready = ~in_carry_in_valid_R_0; // @[LoopBlock.scala 643:30]
  assign io_CarryDepenOut_field0_0_valid = out_carry_out_valid_R_0_0; // @[LoopBlock.scala 684:54]
  assign io_CarryDepenOut_field0_0_bits_taskID = in_carry_in_R_0_taskID; // @[LoopBlock.scala 683:53]
  assign io_CarryDepenOut_field0_0_bits_data = in_carry_in_R_0_data; // @[LoopBlock.scala 683:53]
  assign io_loopExit_0_valid = loop_exit_valid_R_0; // @[LoopBlock.scala 699:26]
  assign io_loopExit_0_bits_taskID = loop_exit_R_0_taskID; // @[LoopBlock.scala 698:25]
  assign io_loopExit_0_bits_control = loop_exit_R_0_control; // @[LoopBlock.scala 698:25]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  loop_back_R_0_taskID = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  loop_back_R_0_control = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  loop_back_valid_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  loop_finish_R_0_control = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  loop_finish_valid_R_0 = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  in_live_in_R_0_data = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  in_live_in_R_1_data = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  in_live_in_R_2_data = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  in_live_in_R_3_data = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  in_live_in_valid_R_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  in_live_in_valid_R_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  in_live_in_valid_R_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  in_live_in_valid_R_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  in_carry_in_R_0_taskID = _RAND_16[4:0];
  _RAND_17 = {2{`RANDOM}};
  in_carry_in_R_0_data = _RAND_17[63:0];
  _RAND_18 = {1{`RANDOM}};
  in_carry_in_valid_R_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  out_live_in_valid_R_0_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  out_live_in_valid_R_0_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  out_live_in_valid_R_1_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  out_live_in_valid_R_2_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  out_live_in_valid_R_3_0 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  out_live_in_fire_R_0_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  out_live_in_fire_R_0_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  out_live_in_fire_R_1_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  out_live_in_fire_R_2_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  out_live_in_fire_R_3_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  out_carry_out_valid_R_0_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  active_loop_start_R_taskID = _RAND_30[4:0];
  _RAND_31 = {1{`RANDOM}};
  active_loop_start_R_control = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  active_loop_start_valid_R = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  active_loop_back_R_taskID = _RAND_33[4:0];
  _RAND_34 = {1{`RANDOM}};
  active_loop_back_R_control = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  active_loop_back_valid_R = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  loop_exit_R_0_taskID = _RAND_36[4:0];
  _RAND_37 = {1{`RANDOM}};
  loop_exit_R_0_control = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  loop_exit_valid_R_0 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  loop_exit_fire_R_0 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  state = _RAND_40[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_43) begin
      if (_T_16) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_51) begin
      if (_T_16) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        enable_R_control <= 1'h0;
      end else if (_T_16) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_16) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_43) begin
      enable_valid_R <= _GEN_5;
    end else if (_T_51) begin
      enable_valid_R <= _GEN_5;
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_5;
      end
    end else begin
      enable_valid_R <= _GEN_5;
    end
    if (reset) begin
      loop_back_R_0_taskID <= 5'h0;
    end else if (_T_43) begin
      if (_T_18) begin
        loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          loop_back_R_0_taskID <= 5'h0;
        end else if (_T_18) begin
          loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
        end
      end else if (_T_18) begin
        loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        loop_back_R_0_taskID <= 5'h0;
      end else if (_T_18) begin
        loop_back_R_0_taskID <= io_loopBack_0_bits_taskID;
      end
    end else begin
      loop_back_R_0_taskID <= _GEN_6;
    end
    if (reset) begin
      loop_back_R_0_control <= 1'h0;
    end else if (_T_43) begin
      if (_T_18) begin
        loop_back_R_0_control <= io_loopBack_0_bits_control;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          loop_back_R_0_control <= 1'h0;
        end else if (_T_18) begin
          loop_back_R_0_control <= io_loopBack_0_bits_control;
        end
      end else if (_T_18) begin
        loop_back_R_0_control <= io_loopBack_0_bits_control;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        loop_back_R_0_control <= 1'h0;
      end else if (_T_18) begin
        loop_back_R_0_control <= io_loopBack_0_bits_control;
      end
    end else begin
      loop_back_R_0_control <= _GEN_7;
    end
    if (reset) begin
      loop_back_valid_R_0 <= 1'h0;
    end else if (_T_43) begin
      loop_back_valid_R_0 <= _GEN_9;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          loop_back_valid_R_0 <= 1'h0;
        end else begin
          loop_back_valid_R_0 <= _GEN_9;
        end
      end else begin
        loop_back_valid_R_0 <= _GEN_9;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        loop_back_valid_R_0 <= 1'h0;
      end else begin
        loop_back_valid_R_0 <= _GEN_9;
      end
    end else begin
      loop_back_valid_R_0 <= _GEN_9;
    end
    if (reset) begin
      loop_finish_R_0_control <= 1'h0;
    end else if (_T_43) begin
      if (_T_20) begin
        loop_finish_R_0_control <= io_loopFinish_0_bits_control;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          loop_finish_R_0_control <= 1'h0;
        end else if (_T_20) begin
          loop_finish_R_0_control <= io_loopFinish_0_bits_control;
        end
      end else if (_T_20) begin
        loop_finish_R_0_control <= io_loopFinish_0_bits_control;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        loop_finish_R_0_control <= 1'h0;
      end else if (_T_20) begin
        loop_finish_R_0_control <= io_loopFinish_0_bits_control;
      end
    end else begin
      loop_finish_R_0_control <= _GEN_11;
    end
    if (reset) begin
      loop_finish_valid_R_0 <= 1'h0;
    end else if (_T_43) begin
      loop_finish_valid_R_0 <= _GEN_13;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          loop_finish_valid_R_0 <= 1'h0;
        end else begin
          loop_finish_valid_R_0 <= _GEN_13;
        end
      end else begin
        loop_finish_valid_R_0 <= _GEN_13;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        loop_finish_valid_R_0 <= 1'h0;
      end else begin
        loop_finish_valid_R_0 <= _GEN_13;
      end
    end else begin
      loop_finish_valid_R_0 <= _GEN_13;
    end
    if (reset) begin
      in_live_in_R_0_data <= 64'h0;
    end else if (_T_43) begin
      if (_T_22) begin
        in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
      end
    end else if (_T_51) begin
      if (_T_22) begin
        in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_0_data <= 64'h0;
      end else if (_T_22) begin
        in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
      end
    end else if (_T_22) begin
      in_live_in_R_0_data <= io_InLiveIn_0_bits_data;
    end
    if (reset) begin
      in_live_in_R_1_data <= 64'h0;
    end else if (_T_43) begin
      if (_T_24) begin
        in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
      end
    end else if (_T_51) begin
      if (_T_24) begin
        in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_1_data <= 64'h0;
      end else if (_T_24) begin
        in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
      end
    end else if (_T_24) begin
      in_live_in_R_1_data <= io_InLiveIn_1_bits_data;
    end
    if (reset) begin
      in_live_in_R_2_data <= 64'h0;
    end else if (_T_43) begin
      if (_T_26) begin
        in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
      end
    end else if (_T_51) begin
      if (_T_26) begin
        in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_2_data <= 64'h0;
      end else if (_T_26) begin
        in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
      end
    end else if (_T_26) begin
      in_live_in_R_2_data <= io_InLiveIn_2_bits_data;
    end
    if (reset) begin
      in_live_in_R_3_data <= 64'h0;
    end else if (_T_43) begin
      if (_T_28) begin
        in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
      end
    end else if (_T_51) begin
      if (_T_28) begin
        in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_R_3_data <= 64'h0;
      end else if (_T_28) begin
        in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
      end
    end else if (_T_28) begin
      in_live_in_R_3_data <= io_InLiveIn_3_bits_data;
    end
    if (reset) begin
      in_live_in_valid_R_0 <= 1'h0;
    end else if (_T_43) begin
      in_live_in_valid_R_0 <= _GEN_17;
    end else if (_T_51) begin
      in_live_in_valid_R_0 <= _GEN_17;
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_0 <= 1'h0;
      end else begin
        in_live_in_valid_R_0 <= _GEN_17;
      end
    end else begin
      in_live_in_valid_R_0 <= _GEN_17;
    end
    if (reset) begin
      in_live_in_valid_R_1 <= 1'h0;
    end else if (_T_43) begin
      in_live_in_valid_R_1 <= _GEN_21;
    end else if (_T_51) begin
      in_live_in_valid_R_1 <= _GEN_21;
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_1 <= 1'h0;
      end else begin
        in_live_in_valid_R_1 <= _GEN_21;
      end
    end else begin
      in_live_in_valid_R_1 <= _GEN_21;
    end
    if (reset) begin
      in_live_in_valid_R_2 <= 1'h0;
    end else if (_T_43) begin
      in_live_in_valid_R_2 <= _GEN_25;
    end else if (_T_51) begin
      in_live_in_valid_R_2 <= _GEN_25;
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_2 <= 1'h0;
      end else begin
        in_live_in_valid_R_2 <= _GEN_25;
      end
    end else begin
      in_live_in_valid_R_2 <= _GEN_25;
    end
    if (reset) begin
      in_live_in_valid_R_3 <= 1'h0;
    end else if (_T_43) begin
      in_live_in_valid_R_3 <= _GEN_29;
    end else if (_T_51) begin
      in_live_in_valid_R_3 <= _GEN_29;
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_live_in_valid_R_3 <= 1'h0;
      end else begin
        in_live_in_valid_R_3 <= _GEN_29;
      end
    end else begin
      in_live_in_valid_R_3 <= _GEN_29;
    end
    if (reset) begin
      in_carry_in_R_0_taskID <= 5'h0;
    end else if (_T_30) begin
      in_carry_in_R_0_taskID <= io_CarryDepenIn_0_bits_taskID;
    end
    if (reset) begin
      in_carry_in_R_0_data <= 64'h0;
    end else if (_T_30) begin
      in_carry_in_R_0_data <= io_CarryDepenIn_0_bits_data;
    end
    if (reset) begin
      in_carry_in_valid_R_0 <= 1'h0;
    end else if (_T_43) begin
      in_carry_in_valid_R_0 <= _GEN_33;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          in_carry_in_valid_R_0 <= 1'h0;
        end else begin
          in_carry_in_valid_R_0 <= _GEN_33;
        end
      end else begin
        in_carry_in_valid_R_0 <= _GEN_33;
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        in_carry_in_valid_R_0 <= 1'h0;
      end else begin
        in_carry_in_valid_R_0 <= _GEN_33;
      end
    end else begin
      in_carry_in_valid_R_0 <= _GEN_33;
    end
    if (reset) begin
      out_live_in_valid_R_0_0 <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        out_live_in_valid_R_0_0 <= _GEN_50;
      end else if (_T_34) begin
        out_live_in_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        out_live_in_valid_R_0_0 <= _GEN_113;
      end else if (_T_34) begin
        out_live_in_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_34) begin
      out_live_in_valid_R_0_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_valid_R_0_1 <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        out_live_in_valid_R_0_1 <= _GEN_51;
      end else if (_T_35) begin
        out_live_in_valid_R_0_1 <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        out_live_in_valid_R_0_1 <= _GEN_114;
      end else if (_T_35) begin
        out_live_in_valid_R_0_1 <= 1'h0;
      end
    end else if (_T_35) begin
      out_live_in_valid_R_0_1 <= 1'h0;
    end
    if (reset) begin
      out_live_in_valid_R_1_0 <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        out_live_in_valid_R_1_0 <= _GEN_52;
      end else if (_T_36) begin
        out_live_in_valid_R_1_0 <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        out_live_in_valid_R_1_0 <= _GEN_115;
      end else if (_T_36) begin
        out_live_in_valid_R_1_0 <= 1'h0;
      end
    end else if (_T_36) begin
      out_live_in_valid_R_1_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_valid_R_2_0 <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        out_live_in_valid_R_2_0 <= _GEN_53;
      end else if (_T_37) begin
        out_live_in_valid_R_2_0 <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        out_live_in_valid_R_2_0 <= _GEN_116;
      end else if (_T_37) begin
        out_live_in_valid_R_2_0 <= 1'h0;
      end
    end else if (_T_37) begin
      out_live_in_valid_R_2_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_valid_R_3_0 <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        out_live_in_valid_R_3_0 <= _GEN_54;
      end else if (_T_38) begin
        out_live_in_valid_R_3_0 <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        out_live_in_valid_R_3_0 <= _GEN_117;
      end else if (_T_38) begin
        out_live_in_valid_R_3_0 <= 1'h0;
      end
    end else if (_T_38) begin
      out_live_in_valid_R_3_0 <= 1'h0;
    end
    if (reset) begin
      out_live_in_fire_R_0_0 <= 1'h0;
    end else if (_T_43) begin
      out_live_in_fire_R_0_0 <= _GEN_39;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_0_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_0_0 <= _GEN_39;
        end
      end else begin
        out_live_in_fire_R_0_0 <= _GEN_39;
      end
    end else begin
      out_live_in_fire_R_0_0 <= _GEN_39;
    end
    if (reset) begin
      out_live_in_fire_R_0_1 <= 1'h0;
    end else if (_T_43) begin
      out_live_in_fire_R_0_1 <= _GEN_41;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_0_1 <= 1'h0;
        end else begin
          out_live_in_fire_R_0_1 <= _GEN_41;
        end
      end else begin
        out_live_in_fire_R_0_1 <= _GEN_41;
      end
    end else begin
      out_live_in_fire_R_0_1 <= _GEN_41;
    end
    if (reset) begin
      out_live_in_fire_R_1_0 <= 1'h0;
    end else if (_T_43) begin
      out_live_in_fire_R_1_0 <= _GEN_43;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_1_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_1_0 <= _GEN_43;
        end
      end else begin
        out_live_in_fire_R_1_0 <= _GEN_43;
      end
    end else begin
      out_live_in_fire_R_1_0 <= _GEN_43;
    end
    if (reset) begin
      out_live_in_fire_R_2_0 <= 1'h0;
    end else if (_T_43) begin
      out_live_in_fire_R_2_0 <= _GEN_45;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_2_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_2_0 <= _GEN_45;
        end
      end else begin
        out_live_in_fire_R_2_0 <= _GEN_45;
      end
    end else begin
      out_live_in_fire_R_2_0 <= _GEN_45;
    end
    if (reset) begin
      out_live_in_fire_R_3_0 <= 1'h0;
    end else if (_T_43) begin
      out_live_in_fire_R_3_0 <= _GEN_47;
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          out_live_in_fire_R_3_0 <= 1'h0;
        end else begin
          out_live_in_fire_R_3_0 <= _GEN_47;
        end
      end else begin
        out_live_in_fire_R_3_0 <= _GEN_47;
      end
    end else begin
      out_live_in_fire_R_3_0 <= _GEN_47;
    end
    if (reset) begin
      out_carry_out_valid_R_0_0 <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        out_carry_out_valid_R_0_0 <= _GEN_55;
      end else if (_T_39) begin
        out_carry_out_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        out_carry_out_valid_R_0_0 <= _GEN_118;
      end else if (_T_39) begin
        out_carry_out_valid_R_0_0 <= 1'h0;
      end
    end else if (_T_39) begin
      out_carry_out_valid_R_0_0 <= 1'h0;
    end
    if (reset) begin
      active_loop_start_R_taskID <= 5'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        if (enable_R_control) begin
          active_loop_start_R_taskID <= 5'h0;
        end
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          active_loop_start_R_taskID <= loop_back_R_0_taskID;
        end else if (loop_finish_R_0_control) begin
          active_loop_start_R_taskID <= 5'h0;
        end
      end
    end
    if (reset) begin
      active_loop_start_R_control <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        active_loop_start_R_control <= _GEN_57;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          active_loop_start_R_control <= 1'h0;
        end else if (loop_finish_R_0_control) begin
          active_loop_start_R_control <= 1'h0;
        end
      end
    end
    if (reset) begin
      active_loop_start_valid_R <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        active_loop_start_valid_R <= _GEN_59;
      end else if (_T_31) begin
        active_loop_start_valid_R <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        active_loop_start_valid_R <= _GEN_102;
      end else if (_T_31) begin
        active_loop_start_valid_R <= 1'h0;
      end
    end else if (_T_31) begin
      active_loop_start_valid_R <= 1'h0;
    end
    if (reset) begin
      active_loop_back_R_taskID <= 5'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        if (enable_R_control) begin
          active_loop_back_R_taskID <= 5'h0;
        end
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          active_loop_back_R_taskID <= loop_back_R_0_taskID;
        end else if (loop_finish_R_0_control) begin
          active_loop_back_R_taskID <= 5'h0;
        end
      end
    end
    if (reset) begin
      active_loop_back_R_control <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        if (enable_R_control) begin
          active_loop_back_R_control <= 1'h0;
        end
      end
    end else if (_T_51) begin
      if (_T_58) begin
        active_loop_back_R_control <= _GEN_104;
      end
    end
    if (reset) begin
      active_loop_back_valid_R <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        active_loop_back_valid_R <= _GEN_63;
      end else if (_T_32) begin
        active_loop_back_valid_R <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        active_loop_back_valid_R <= _GEN_106;
      end else if (_T_32) begin
        active_loop_back_valid_R <= 1'h0;
      end
    end else if (_T_32) begin
      active_loop_back_valid_R <= 1'h0;
    end
    if (reset) begin
      loop_exit_R_0_taskID <= 5'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        if (!(enable_R_control)) begin
          loop_exit_R_0_taskID <= 5'h0;
        end
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (!(loop_back_R_0_control)) begin
          if (loop_finish_R_0_control) begin
            loop_exit_R_0_taskID <= loop_back_R_0_taskID;
          end
        end
      end
    end
    if (reset) begin
      loop_exit_R_0_control <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        loop_exit_R_0_control <= _GEN_66;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (!(loop_back_R_0_control)) begin
          loop_exit_R_0_control <= _GEN_96;
        end
      end
    end
    if (reset) begin
      loop_exit_valid_R_0 <= 1'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        if (enable_R_control) begin
          if (_T_33) begin
            loop_exit_valid_R_0 <= 1'h0;
          end
        end else begin
          loop_exit_valid_R_0 <= 1'h1;
        end
      end else if (_T_33) begin
        loop_exit_valid_R_0 <= 1'h0;
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          if (_T_33) begin
            loop_exit_valid_R_0 <= 1'h0;
          end
        end else begin
          loop_exit_valid_R_0 <= _GEN_88;
        end
      end else if (_T_33) begin
        loop_exit_valid_R_0 <= 1'h0;
      end
    end else begin
      loop_exit_valid_R_0 <= _GEN_36;
    end
    if (reset) begin
      loop_exit_fire_R_0 <= 1'h0;
    end else begin
      loop_exit_fire_R_0 <= _GEN_37;
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_43) begin
      if (_T_47) begin
        if (enable_R_control) begin
          state <= 2'h1;
        end else begin
          state <= 2'h2;
        end
      end
    end else if (_T_51) begin
      if (_T_58) begin
        if (loop_back_R_0_control) begin
          state <= 2'h1;
        end else if (loop_finish_R_0_control) begin
          state <= 2'h2;
        end
      end
    end else if (_T_74) begin
      if (loop_exit_fire_R_0) begin
        state <= 2'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_338 & _T_66) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [LOOP] [Loop_1] [ID: 1] [RESTARTED] [Cycle: %d]\n",io_activate_loop_start_bits_taskID,cycleCount); // @[LoopBlock.scala 970:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_344 & _T_66) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [LOOP] [Loop_1] [ID: 1] [FIRED] [Cycle: %d]\n",io_activate_loop_start_bits_taskID,cycleCount); // @[LoopBlock.scala 988:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_344 & _T_66) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [LOOP] [Loop_1] [ID: 1] [FINAL] [Cycle: %d]\n",io_activate_loop_start_bits_taskID,cycleCount); // @[LoopBlock.scala 1003:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module BasicBlockNoMaskFastNode(
  input   clock,
  input   reset,
  output  io_predicateIn_0_ready,
  input   io_predicateIn_0_valid,
  input   io_predicateIn_0_bits_control,
  input   io_Out_0_ready,
  output  io_Out_0_valid,
  output  io_Out_0_bits_control,
  input   io_Out_1_ready,
  output  io_Out_1_valid,
  output  io_Out_1_bits_control,
  input   io_Out_2_ready,
  output  io_Out_2_valid,
  output  io_Out_2_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  in_data_R_0_control; // @[BasicBlock.scala 224:46]
  reg  in_data_valid_R_0; // @[BasicBlock.scala 225:52]
  reg  output_valid_R_0; // @[BasicBlock.scala 228:49]
  reg  output_valid_R_1; // @[BasicBlock.scala 228:49]
  reg  output_valid_R_2; // @[BasicBlock.scala 228:49]
  reg  output_fire_R_0; // @[BasicBlock.scala 229:48]
  reg  output_fire_R_1; // @[BasicBlock.scala 229:48]
  reg  output_fire_R_2; // @[BasicBlock.scala 229:48]
  wire  _T_7 = io_predicateIn_0_ready & io_predicateIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 234:36]
  wire  _GEN_5 = _T_7 | in_data_valid_R_0; // @[BasicBlock.scala 234:36]
  wire  _T_8 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_6 = _T_8 | output_fire_R_0; // @[BasicBlock.scala 246:28]
  wire  _T_9 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_8 = _T_9 | output_fire_R_1; // @[BasicBlock.scala 246:28]
  wire  _T_10 = io_Out_2_ready & io_Out_2_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_10 = _T_10 | output_fire_R_2; // @[BasicBlock.scala 246:28]
  wire  out_fire_mask_0 = output_fire_R_0 | _T_8; // @[BasicBlock.scala 258:85]
  wire  out_fire_mask_1 = output_fire_R_1 | _T_9; // @[BasicBlock.scala 258:85]
  wire  out_fire_mask_2 = output_fire_R_2 | _T_10; // @[BasicBlock.scala 258:85]
  reg  state; // @[BasicBlock.scala 289:22]
  wire  _T_21 = ~state; // @[Conditional.scala 37:30]
  wire  _T_25 = _T_8 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_26 = _T_9 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_27 = _T_10 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_29 = ~reset; // @[BasicBlock.scala 311:17]
  wire  _GEN_12 = _GEN_5 | output_valid_R_0; // @[BasicBlock.scala 301:9]
  wire  _GEN_13 = _GEN_5 | output_valid_R_1; // @[BasicBlock.scala 301:9]
  wire  _GEN_14 = _GEN_5 | output_valid_R_2; // @[BasicBlock.scala 301:9]
  wire  _GEN_18 = _GEN_5 | state; // @[BasicBlock.scala 301:9]
  wire  _T_31 = out_fire_mask_0 & out_fire_mask_1; // @[BasicBlock.scala 317:35]
  wire  _T_32 = _T_31 & out_fire_mask_2; // @[BasicBlock.scala 317:35]
  wire  _GEN_49 = _T_21 & _GEN_5; // @[BasicBlock.scala 311:17]
  assign io_predicateIn_0_ready = ~in_data_valid_R_0; // @[BasicBlock.scala 233:29]
  assign io_Out_0_valid = _T_21 ? _GEN_12 : output_valid_R_0; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_0_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
  assign io_Out_1_valid = _T_21 ? _GEN_13 : output_valid_R_1; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_1_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
  assign io_Out_2_valid = _T_21 ? _GEN_14 : output_valid_R_2; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_2_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  in_data_R_0_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_data_valid_R_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  output_valid_R_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  output_valid_R_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_fire_R_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  output_fire_R_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  output_fire_R_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      in_data_R_0_control <= 1'h0;
    end else if (_T_21) begin
      if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (state) begin
      if (_T_32) begin
        in_data_R_0_control <= 1'h0;
      end else if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (_T_7) begin
      in_data_R_0_control <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      in_data_valid_R_0 <= 1'h0;
    end else if (_T_21) begin
      in_data_valid_R_0 <= _GEN_5;
    end else if (state) begin
      if (_T_32) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_5;
      end
    end else begin
      in_data_valid_R_0 <= _GEN_5;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_21) begin
      if (_GEN_5) begin
        output_valid_R_0 <= _T_25;
      end else if (_T_8) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_8) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      output_valid_R_1 <= 1'h0;
    end else if (_T_21) begin
      if (_GEN_5) begin
        output_valid_R_1 <= _T_26;
      end else if (_T_9) begin
        output_valid_R_1 <= 1'h0;
      end
    end else if (_T_9) begin
      output_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      output_valid_R_2 <= 1'h0;
    end else if (_T_21) begin
      if (_GEN_5) begin
        output_valid_R_2 <= _T_27;
      end else if (_T_10) begin
        output_valid_R_2 <= 1'h0;
      end
    end else if (_T_10) begin
      output_valid_R_2 <= 1'h0;
    end
    if (reset) begin
      output_fire_R_0 <= 1'h0;
    end else if (_T_21) begin
      output_fire_R_0 <= _GEN_6;
    end else if (state) begin
      if (_T_32) begin
        output_fire_R_0 <= 1'h0;
      end else begin
        output_fire_R_0 <= _GEN_6;
      end
    end else begin
      output_fire_R_0 <= _GEN_6;
    end
    if (reset) begin
      output_fire_R_1 <= 1'h0;
    end else if (_T_21) begin
      output_fire_R_1 <= _GEN_8;
    end else if (state) begin
      if (_T_32) begin
        output_fire_R_1 <= 1'h0;
      end else begin
        output_fire_R_1 <= _GEN_8;
      end
    end else begin
      output_fire_R_1 <= _GEN_8;
    end
    if (reset) begin
      output_fire_R_2 <= 1'h0;
    end else if (_T_21) begin
      output_fire_R_2 <= _GEN_10;
    end else if (state) begin
      if (_T_32) begin
        output_fire_R_2 <= 1'h0;
      end else begin
        output_fire_R_2 <= _GEN_10;
      end
    end else begin
      output_fire_R_2 <= _GEN_10;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_21) begin
      state <= _GEN_18;
    end else if (state) begin
      if (_T_32) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_49 & _T_29) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [BB] [Name: bb_entry1] [BID: 1] [Out: %d] [Cycle: %d]\n",5'h0,_GEN_3,cycleCount); // @[BasicBlock.scala 311:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module BasicBlockNoMaskFastNode_1(
  input   clock,
  input   reset,
  output  io_predicateIn_0_ready,
  input   io_predicateIn_0_valid,
  input   io_predicateIn_0_bits_control,
  input   io_Out_0_ready,
  output  io_Out_0_valid,
  output  io_Out_0_bits_control,
  input   io_Out_1_ready,
  output  io_Out_1_valid,
  output  io_Out_1_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  in_data_R_0_control; // @[BasicBlock.scala 224:46]
  reg  in_data_valid_R_0; // @[BasicBlock.scala 225:52]
  reg  output_valid_R_0; // @[BasicBlock.scala 228:49]
  reg  output_valid_R_1; // @[BasicBlock.scala 228:49]
  reg  output_fire_R_0; // @[BasicBlock.scala 229:48]
  reg  output_fire_R_1; // @[BasicBlock.scala 229:48]
  wire  _T_7 = io_predicateIn_0_ready & io_predicateIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 234:36]
  wire  _GEN_5 = _T_7 | in_data_valid_R_0; // @[BasicBlock.scala 234:36]
  wire  _T_8 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_6 = _T_8 | output_fire_R_0; // @[BasicBlock.scala 246:28]
  wire  _T_9 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_8 = _T_9 | output_fire_R_1; // @[BasicBlock.scala 246:28]
  wire  out_fire_mask_0 = output_fire_R_0 | _T_8; // @[BasicBlock.scala 258:85]
  wire  out_fire_mask_1 = output_fire_R_1 | _T_9; // @[BasicBlock.scala 258:85]
  reg  state; // @[BasicBlock.scala 289:22]
  wire  _T_18 = ~state; // @[Conditional.scala 37:30]
  wire  _T_21 = _T_8 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_22 = _T_9 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_24 = ~reset; // @[BasicBlock.scala 311:17]
  wire  _GEN_10 = _GEN_5 | output_valid_R_0; // @[BasicBlock.scala 301:9]
  wire  _GEN_11 = _GEN_5 | output_valid_R_1; // @[BasicBlock.scala 301:9]
  wire  _GEN_14 = _GEN_5 | state; // @[BasicBlock.scala 301:9]
  wire  _T_26 = out_fire_mask_0 & out_fire_mask_1; // @[BasicBlock.scala 317:35]
  wire  _GEN_40 = _T_18 & _GEN_5; // @[BasicBlock.scala 311:17]
  assign io_predicateIn_0_ready = ~in_data_valid_R_0; // @[BasicBlock.scala 233:29]
  assign io_Out_0_valid = _T_18 ? _GEN_10 : output_valid_R_0; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_0_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
  assign io_Out_1_valid = _T_18 ? _GEN_11 : output_valid_R_1; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_1_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  in_data_R_0_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_data_valid_R_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  output_valid_R_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  output_fire_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_fire_R_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      in_data_R_0_control <= 1'h0;
    end else if (_T_18) begin
      if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (state) begin
      if (_T_26) begin
        in_data_R_0_control <= 1'h0;
      end else if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (_T_7) begin
      in_data_R_0_control <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      in_data_valid_R_0 <= 1'h0;
    end else if (_T_18) begin
      in_data_valid_R_0 <= _GEN_5;
    end else if (state) begin
      if (_T_26) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_5;
      end
    end else begin
      in_data_valid_R_0 <= _GEN_5;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_18) begin
      if (_GEN_5) begin
        output_valid_R_0 <= _T_21;
      end else if (_T_8) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_8) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      output_valid_R_1 <= 1'h0;
    end else if (_T_18) begin
      if (_GEN_5) begin
        output_valid_R_1 <= _T_22;
      end else if (_T_9) begin
        output_valid_R_1 <= 1'h0;
      end
    end else if (_T_9) begin
      output_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      output_fire_R_0 <= 1'h0;
    end else if (_T_18) begin
      output_fire_R_0 <= _GEN_6;
    end else if (state) begin
      if (_T_26) begin
        output_fire_R_0 <= 1'h0;
      end else begin
        output_fire_R_0 <= _GEN_6;
      end
    end else begin
      output_fire_R_0 <= _GEN_6;
    end
    if (reset) begin
      output_fire_R_1 <= 1'h0;
    end else if (_T_18) begin
      output_fire_R_1 <= _GEN_8;
    end else if (state) begin
      if (_T_26) begin
        output_fire_R_1 <= 1'h0;
      end else begin
        output_fire_R_1 <= _GEN_8;
      end
    end else begin
      output_fire_R_1 <= _GEN_8;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_18) begin
      state <= _GEN_14;
    end else if (state) begin
      if (_T_26) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_40 & _T_24) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [BB] [Name: bb_for_body_lr_ph4] [BID: 4] [Out: %d] [Cycle: %d]\n",5'h0,_GEN_3,cycleCount); // @[BasicBlock.scala 311:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module BasicBlockNoMaskFastNode_2(
  input        clock,
  input        reset,
  output       io_predicateIn_0_ready,
  input        io_predicateIn_0_valid,
  input  [4:0] io_predicateIn_0_bits_taskID,
  input        io_predicateIn_0_bits_control,
  input        io_Out_0_ready,
  output       io_Out_0_valid,
  output [4:0] io_Out_0_bits_taskID,
  output       io_Out_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] in_data_R_0_taskID; // @[BasicBlock.scala 224:46]
  reg  in_data_R_0_control; // @[BasicBlock.scala 224:46]
  reg  in_data_valid_R_0; // @[BasicBlock.scala 225:52]
  reg [4:0] output_R_taskID; // @[BasicBlock.scala 227:25]
  reg  output_valid_R_0; // @[BasicBlock.scala 228:49]
  reg  output_fire_R_0; // @[BasicBlock.scala 229:48]
  wire  _T_7 = io_predicateIn_0_ready & io_predicateIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 234:36]
  wire  _GEN_5 = _T_7 | in_data_valid_R_0; // @[BasicBlock.scala 234:36]
  wire [4:0] in_task_ID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 241:34]
  wire  _T_8 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_6 = _T_8 | output_fire_R_0; // @[BasicBlock.scala 246:28]
  wire  out_fire_mask_0 = output_fire_R_0 | _T_8; // @[BasicBlock.scala 258:85]
  reg  state; // @[BasicBlock.scala 289:22]
  wire  _T_15 = ~state; // @[Conditional.scala 37:30]
  wire  _T_17 = _T_8 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_19 = ~reset; // @[BasicBlock.scala 311:17]
  wire  _GEN_8 = _GEN_5 | output_valid_R_0; // @[BasicBlock.scala 301:9]
  wire  _GEN_10 = _GEN_5 | state; // @[BasicBlock.scala 301:9]
  wire  _GEN_31 = _T_15 & _GEN_5; // @[BasicBlock.scala 311:17]
  assign io_predicateIn_0_ready = ~in_data_valid_R_0; // @[BasicBlock.scala 233:29]
  assign io_Out_0_valid = _T_15 ? _GEN_8 : output_valid_R_0; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_0_bits_taskID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 279:22]
  assign io_Out_0_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  in_data_R_0_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  in_data_R_0_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_data_valid_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  output_R_taskID = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_fire_R_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      in_data_R_0_taskID <= 5'h0;
    end else if (_T_15) begin
      if (_T_7) begin
        in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
      end
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_R_0_taskID <= 5'h0;
      end else if (_T_7) begin
        in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
      end
    end else if (_T_7) begin
      in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
    end
    if (reset) begin
      in_data_R_0_control <= 1'h0;
    end else if (_T_15) begin
      if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_R_0_control <= 1'h0;
      end else if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (_T_7) begin
      in_data_R_0_control <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      in_data_valid_R_0 <= 1'h0;
    end else if (_T_15) begin
      in_data_valid_R_0 <= _GEN_5;
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_5;
      end
    end else begin
      in_data_valid_R_0 <= _GEN_5;
    end
    if (reset) begin
      output_R_taskID <= 5'h0;
    end else begin
      output_R_taskID <= in_task_ID;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_15) begin
      if (_GEN_5) begin
        output_valid_R_0 <= _T_17;
      end else if (_T_8) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_8) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      output_fire_R_0 <= 1'h0;
    end else if (_T_15) begin
      output_fire_R_0 <= _GEN_6;
    end else if (state) begin
      if (out_fire_mask_0) begin
        output_fire_R_0 <= 1'h0;
      end else begin
        output_fire_R_0 <= _GEN_6;
      end
    end else begin
      output_fire_R_0 <= _GEN_6;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_15) begin
      state <= _GEN_10;
    end else if (state) begin
      if (out_fire_mask_0) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_31 & _T_19) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [BB] [Name: bb_for_cond_cleanup_loopexit7] [BID: 7] [Out: %d] [Cycle: %d]\n",output_R_taskID,_GEN_3,cycleCount); // @[BasicBlock.scala 311:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module BasicBlockNoMaskFastNode_3(
  input        clock,
  input        reset,
  output       io_predicateIn_0_ready,
  input        io_predicateIn_0_valid,
  input  [4:0] io_predicateIn_0_bits_taskID,
  input        io_predicateIn_0_bits_control,
  output       io_predicateIn_1_ready,
  input        io_predicateIn_1_valid,
  input        io_predicateIn_1_bits_control,
  input        io_Out_0_ready,
  output       io_Out_0_valid,
  output [4:0] io_Out_0_bits_taskID
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] in_data_R_0_taskID; // @[BasicBlock.scala 224:46]
  reg  in_data_R_0_control; // @[BasicBlock.scala 224:46]
  reg  in_data_R_1_control; // @[BasicBlock.scala 224:46]
  reg  in_data_valid_R_0; // @[BasicBlock.scala 225:52]
  reg  in_data_valid_R_1; // @[BasicBlock.scala 225:52]
  reg [4:0] output_R_taskID; // @[BasicBlock.scala 227:25]
  reg  output_valid_R_0; // @[BasicBlock.scala 228:49]
  reg  output_fire_R_0; // @[BasicBlock.scala 229:48]
  wire  _T_8 = io_predicateIn_0_ready & io_predicateIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_8 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 234:36]
  wire  _GEN_5 = _T_8 | in_data_valid_R_0; // @[BasicBlock.scala 234:36]
  wire  _T_10 = io_predicateIn_1_ready & io_predicateIn_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_7 = _T_10 ? io_predicateIn_1_bits_control : in_data_R_1_control; // @[BasicBlock.scala 234:36]
  wire  _GEN_9 = _T_10 | in_data_valid_R_1; // @[BasicBlock.scala 234:36]
  wire [4:0] in_task_ID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 241:34]
  wire  _T_13 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_10 = _T_13 | output_fire_R_0; // @[BasicBlock.scala 246:28]
  wire  out_fire_mask_0 = output_fire_R_0 | _T_13; // @[BasicBlock.scala 258:85]
  wire  predicate_val = _GEN_3 | _GEN_7; // @[BasicBlock.scala 271:48]
  reg  state; // @[BasicBlock.scala 289:22]
  wire  _T_26 = ~state; // @[Conditional.scala 37:30]
  wire  _T_27 = _GEN_5 & _GEN_9; // @[BasicBlock.scala 296:41]
  wire  _T_29 = _T_13 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_31 = ~reset; // @[BasicBlock.scala 311:17]
  wire  _GEN_12 = _T_27 | output_valid_R_0; // @[BasicBlock.scala 301:9]
  wire  _GEN_14 = _T_27 | state; // @[BasicBlock.scala 301:9]
  wire  _GEN_47 = _T_26 & _T_27; // @[BasicBlock.scala 311:17]
  assign io_predicateIn_0_ready = ~in_data_valid_R_0; // @[BasicBlock.scala 233:29]
  assign io_predicateIn_1_ready = ~in_data_valid_R_1; // @[BasicBlock.scala 233:29]
  assign io_Out_0_valid = _T_26 ? _GEN_12 : output_valid_R_0; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_0_bits_taskID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 279:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  in_data_R_0_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  in_data_R_0_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_data_R_1_control = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  in_data_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  in_data_valid_R_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_R_taskID = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  output_fire_R_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      in_data_R_0_taskID <= 5'h0;
    end else if (_T_26) begin
      if (_T_8) begin
        in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
      end
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_R_0_taskID <= 5'h0;
      end else if (_T_8) begin
        in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
      end
    end else if (_T_8) begin
      in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
    end
    if (reset) begin
      in_data_R_0_control <= 1'h0;
    end else if (_T_26) begin
      if (_T_8) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_R_0_control <= 1'h0;
      end else if (_T_8) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (_T_8) begin
      in_data_R_0_control <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      in_data_R_1_control <= 1'h0;
    end else if (_T_26) begin
      if (_T_10) begin
        in_data_R_1_control <= io_predicateIn_1_bits_control;
      end
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_R_1_control <= 1'h0;
      end else if (_T_10) begin
        in_data_R_1_control <= io_predicateIn_1_bits_control;
      end
    end else if (_T_10) begin
      in_data_R_1_control <= io_predicateIn_1_bits_control;
    end
    if (reset) begin
      in_data_valid_R_0 <= 1'h0;
    end else if (_T_26) begin
      in_data_valid_R_0 <= _GEN_5;
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_5;
      end
    end else begin
      in_data_valid_R_0 <= _GEN_5;
    end
    if (reset) begin
      in_data_valid_R_1 <= 1'h0;
    end else if (_T_26) begin
      in_data_valid_R_1 <= _GEN_9;
    end else if (state) begin
      if (out_fire_mask_0) begin
        in_data_valid_R_1 <= 1'h0;
      end else begin
        in_data_valid_R_1 <= _GEN_9;
      end
    end else begin
      in_data_valid_R_1 <= _GEN_9;
    end
    if (reset) begin
      output_R_taskID <= 5'h0;
    end else begin
      output_R_taskID <= in_task_ID;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_26) begin
      if (_T_27) begin
        output_valid_R_0 <= _T_29;
      end else if (_T_13) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_13) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      output_fire_R_0 <= 1'h0;
    end else if (_T_26) begin
      output_fire_R_0 <= _GEN_10;
    end else if (state) begin
      if (out_fire_mask_0) begin
        output_fire_R_0 <= 1'h0;
      end else begin
        output_fire_R_0 <= _GEN_10;
      end
    end else begin
      output_fire_R_0 <= _GEN_10;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_26) begin
      state <= _GEN_14;
    end else if (state) begin
      if (out_fire_mask_0) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_47 & _T_31) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [BB] [Name: bb_for_cond_cleanup9] [BID: 9] [Out: %d] [Cycle: %d]\n",output_R_taskID,predicate_val,cycleCount); // @[BasicBlock.scala 311:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module BasicBlockNode(
  input        clock,
  input        reset,
  input        io_MaskBB_0_ready,
  output       io_MaskBB_0_valid,
  output [1:0] io_MaskBB_0_bits,
  input        io_Out_0_ready,
  output       io_Out_0_valid,
  output [4:0] io_Out_0_bits_taskID,
  output       io_Out_0_bits_control,
  input        io_Out_1_ready,
  output       io_Out_1_valid,
  output       io_Out_1_bits_control,
  input        io_Out_2_ready,
  output       io_Out_2_valid,
  output [4:0] io_Out_2_bits_taskID,
  output       io_Out_2_bits_control,
  input        io_Out_3_ready,
  output       io_Out_3_valid,
  output [4:0] io_Out_3_bits_taskID,
  output       io_Out_3_bits_control,
  output       io_predicateIn_0_ready,
  input        io_predicateIn_0_valid,
  input  [4:0] io_predicateIn_0_bits_taskID,
  input        io_predicateIn_0_bits_control,
  output       io_predicateIn_1_ready,
  input        io_predicateIn_1_valid,
  input  [4:0] io_predicateIn_1_bits_taskID,
  input        io_predicateIn_1_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  reg  out_ready_R_0; // @[HandShaking.scala 780:28]
  reg  out_ready_R_1; // @[HandShaking.scala 780:28]
  reg  out_ready_R_2; // @[HandShaking.scala 780:28]
  reg  out_ready_R_3; // @[HandShaking.scala 780:28]
  reg  out_valid_R_0; // @[HandShaking.scala 781:28]
  reg  out_valid_R_1; // @[HandShaking.scala 781:28]
  reg  out_valid_R_2; // @[HandShaking.scala 781:28]
  reg  out_valid_R_3; // @[HandShaking.scala 781:28]
  reg  mask_valid_R_0; // @[HandShaking.scala 785:46]
  wire  _T_2 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_1 = _T_2 ? 1'h0 : out_valid_R_0; // @[HandShaking.scala 794:29]
  wire  _T_3 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_3 ? 1'h0 : out_valid_R_1; // @[HandShaking.scala 794:29]
  wire  _T_4 = io_Out_2_ready & io_Out_2_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_5 = _T_4 ? 1'h0 : out_valid_R_2; // @[HandShaking.scala 794:29]
  wire  _T_5 = io_Out_3_ready & io_Out_3_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_7 = _T_5 ? 1'h0 : out_valid_R_3; // @[HandShaking.scala 794:29]
  wire  _T_6 = io_MaskBB_0_ready & io_MaskBB_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = _T_6 ? 1'h0 : mask_valid_R_0; // @[HandShaking.scala 805:32]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_10 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] predicate_in_R_0_taskID; // @[BasicBlock.scala 65:51]
  reg  predicate_in_R_0_control; // @[BasicBlock.scala 65:51]
  reg [4:0] predicate_in_R_1_taskID; // @[BasicBlock.scala 65:51]
  reg  predicate_in_R_1_control; // @[BasicBlock.scala 65:51]
  reg  predicate_control_R_0; // @[BasicBlock.scala 66:36]
  reg  predicate_control_R_1; // @[BasicBlock.scala 66:36]
  reg  predicate_valid_R_0; // @[BasicBlock.scala 67:54]
  reg  predicate_valid_R_1; // @[BasicBlock.scala 67:54]
  reg  state; // @[BasicBlock.scala 70:22]
  wire  predicate = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 76:58]
  wire [4:0] predicate_task = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 77:62]
  wire  _T_14 = io_predicateIn_0_ready & io_predicateIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_15 = io_predicateIn_1_ready & io_predicateIn_1_valid; // @[Decoupled.scala 40:37]
  wire  _T_16 = _T_14 | predicate_valid_R_0; // @[BasicBlock.scala 80:91]
  wire  _T_17 = _T_15 | predicate_valid_R_1; // @[BasicBlock.scala 80:91]
  wire  start = _T_16 & _T_17; // @[BasicBlock.scala 80:107]
  wire [1:0] _T_22 = {predicate_control_R_1,predicate_control_R_0}; // @[BasicBlock.scala 105:52]
  wire  _T_23 = ~state; // @[Conditional.scala 37:30]
  wire  _GEN_22 = start | _GEN_1; // @[BasicBlock.scala 115:19]
  wire  _GEN_23 = start | _GEN_3; // @[BasicBlock.scala 115:19]
  wire  _GEN_24 = start | _GEN_5; // @[BasicBlock.scala 115:19]
  wire  _GEN_25 = start | _GEN_7; // @[BasicBlock.scala 115:19]
  wire  _GEN_26 = start | _GEN_9; // @[BasicBlock.scala 115:19]
  wire  _GEN_27 = start | state; // @[BasicBlock.scala 115:19]
  wire [3:0] _T_28 = {out_ready_R_3,out_ready_R_2,out_ready_R_1,out_ready_R_0}; // @[HandShaking.scala 834:17]
  wire  _T_29 = &_T_28; // @[HandShaking.scala 834:24]
  wire  _T_33 = ~reset; // @[BasicBlock.scala 129:19]
  wire  _GEN_57 = ~_T_23; // @[BasicBlock.scala 129:19]
  wire  _GEN_58 = _GEN_57 & state; // @[BasicBlock.scala 129:19]
  wire  _GEN_59 = _GEN_58 & _T_29; // @[BasicBlock.scala 129:19]
  wire  _GEN_60 = _GEN_59 & predicate; // @[BasicBlock.scala 129:19]
  wire  _GEN_64 = ~predicate; // @[BasicBlock.scala 134:19]
  wire  _GEN_65 = _GEN_59 & _GEN_64; // @[BasicBlock.scala 134:19]
  assign io_MaskBB_0_valid = mask_valid_R_0; // @[HandShaking.scala 804:24]
  assign io_MaskBB_0_bits = {predicate_control_R_1,predicate_control_R_0}; // @[BasicBlock.scala 105:23]
  assign io_Out_0_valid = out_valid_R_0; // @[HandShaking.scala 793:21]
  assign io_Out_0_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_0_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_1_valid = out_valid_R_1; // @[HandShaking.scala 793:21]
  assign io_Out_1_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_2_valid = out_valid_R_2; // @[HandShaking.scala 793:21]
  assign io_Out_2_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_2_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_3_valid = out_valid_R_3; // @[HandShaking.scala 793:21]
  assign io_Out_3_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_3_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_predicateIn_0_ready = ~predicate_valid_R_0; // @[BasicBlock.scala 88:29]
  assign io_predicateIn_1_ready = ~predicate_valid_R_1; // @[BasicBlock.scala 88:29]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  out_ready_R_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  out_ready_R_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  out_valid_R_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  out_valid_R_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  out_valid_R_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mask_valid_R_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  cycleCount = _RAND_9[14:0];
  _RAND_10 = {1{`RANDOM}};
  predicate_in_R_0_taskID = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  predicate_in_R_0_control = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  predicate_in_R_1_taskID = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  predicate_in_R_1_control = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  predicate_control_R_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  predicate_control_R_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  predicate_valid_R_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  predicate_valid_R_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  state = _RAND_18[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_23) begin
      if (_T_2) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_29) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_2) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_2) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_ready_R_1 <= 1'h0;
    end else if (_T_23) begin
      if (_T_3) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (state) begin
      if (_T_29) begin
        out_ready_R_1 <= 1'h0;
      end else if (_T_3) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (_T_3) begin
      out_ready_R_1 <= io_Out_1_ready;
    end
    if (reset) begin
      out_ready_R_2 <= 1'h0;
    end else if (_T_23) begin
      if (_T_4) begin
        out_ready_R_2 <= io_Out_2_ready;
      end
    end else if (state) begin
      if (_T_29) begin
        out_ready_R_2 <= 1'h0;
      end else if (_T_4) begin
        out_ready_R_2 <= io_Out_2_ready;
      end
    end else if (_T_4) begin
      out_ready_R_2 <= io_Out_2_ready;
    end
    if (reset) begin
      out_ready_R_3 <= 1'h0;
    end else if (_T_23) begin
      if (_T_5) begin
        out_ready_R_3 <= io_Out_3_ready;
      end
    end else if (state) begin
      if (_T_29) begin
        out_ready_R_3 <= 1'h0;
      end else if (_T_5) begin
        out_ready_R_3 <= io_Out_3_ready;
      end
    end else if (_T_5) begin
      out_ready_R_3 <= io_Out_3_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_23) begin
      out_valid_R_0 <= _GEN_22;
    end else if (_T_2) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_1 <= 1'h0;
    end else if (_T_23) begin
      out_valid_R_1 <= _GEN_23;
    end else if (_T_3) begin
      out_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_2 <= 1'h0;
    end else if (_T_23) begin
      out_valid_R_2 <= _GEN_24;
    end else if (_T_4) begin
      out_valid_R_2 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_3 <= 1'h0;
    end else if (_T_23) begin
      out_valid_R_3 <= _GEN_25;
    end else if (_T_5) begin
      out_valid_R_3 <= 1'h0;
    end
    if (reset) begin
      mask_valid_R_0 <= 1'h0;
    end else if (_T_23) begin
      mask_valid_R_0 <= _GEN_26;
    end else if (_T_6) begin
      mask_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_10;
    end
    if (reset) begin
      predicate_in_R_0_taskID <= 5'h0;
    end else if (_T_14) begin
      predicate_in_R_0_taskID <= io_predicateIn_0_bits_taskID;
    end
    if (reset) begin
      predicate_in_R_0_control <= 1'h0;
    end else if (_T_14) begin
      predicate_in_R_0_control <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      predicate_in_R_1_taskID <= 5'h0;
    end else if (_T_15) begin
      predicate_in_R_1_taskID <= io_predicateIn_1_bits_taskID;
    end
    if (reset) begin
      predicate_in_R_1_control <= 1'h0;
    end else if (_T_15) begin
      predicate_in_R_1_control <= io_predicateIn_1_bits_control;
    end
    if (reset) begin
      predicate_control_R_0 <= 1'h0;
    end else if (_T_14) begin
      predicate_control_R_0 <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      predicate_control_R_1 <= 1'h0;
    end else if (_T_15) begin
      predicate_control_R_1 <= io_predicateIn_1_bits_control;
    end
    if (reset) begin
      predicate_valid_R_0 <= 1'h0;
    end else if (_T_23) begin
      predicate_valid_R_0 <= _T_16;
    end else if (state) begin
      if (_T_29) begin
        predicate_valid_R_0 <= 1'h0;
      end else begin
        predicate_valid_R_0 <= _T_16;
      end
    end else begin
      predicate_valid_R_0 <= _T_16;
    end
    if (reset) begin
      predicate_valid_R_1 <= 1'h0;
    end else if (_T_23) begin
      predicate_valid_R_1 <= _T_17;
    end else if (state) begin
      if (_T_29) begin
        predicate_valid_R_1 <= 1'h0;
      end else begin
        predicate_valid_R_1 <= _T_17;
      end
    end else begin
      predicate_valid_R_1 <= _T_17;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_23) begin
      state <= _GEN_27;
    end else if (state) begin
      if (_T_29) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_33) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [BB] [Name: bb_for_body4_lr_ph11] [BID: 11] [Mask: 0x%x]\n",predicate_task,_T_22); // @[BasicBlock.scala 129:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_33) begin
          $fwrite(32'h80000002,"[LOG] [Relu] bb_for_body4_lr_ph11: Output fired @ %d -> 0 predicate\n",cycleCount); // @[BasicBlock.scala 134:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module BasicBlockNoMaskFastNode_4(
  input        clock,
  input        reset,
  output       io_predicateIn_0_ready,
  input        io_predicateIn_0_valid,
  input  [4:0] io_predicateIn_0_bits_taskID,
  input        io_predicateIn_0_bits_control,
  input        io_Out_0_ready,
  output       io_Out_0_valid,
  output [4:0] io_Out_0_bits_taskID,
  output       io_Out_0_bits_control,
  input        io_Out_1_ready,
  output       io_Out_1_valid,
  output [4:0] io_Out_1_bits_taskID,
  output       io_Out_1_bits_control,
  input        io_Out_2_ready,
  output       io_Out_2_valid,
  output [4:0] io_Out_2_bits_taskID,
  output       io_Out_2_bits_control,
  input        io_Out_3_ready,
  output       io_Out_3_valid,
  output [4:0] io_Out_3_bits_taskID,
  output       io_Out_3_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] in_data_R_0_taskID; // @[BasicBlock.scala 224:46]
  reg  in_data_R_0_control; // @[BasicBlock.scala 224:46]
  reg  in_data_valid_R_0; // @[BasicBlock.scala 225:52]
  reg [4:0] output_R_taskID; // @[BasicBlock.scala 227:25]
  reg  output_valid_R_0; // @[BasicBlock.scala 228:49]
  reg  output_valid_R_1; // @[BasicBlock.scala 228:49]
  reg  output_valid_R_2; // @[BasicBlock.scala 228:49]
  reg  output_valid_R_3; // @[BasicBlock.scala 228:49]
  reg  output_fire_R_0; // @[BasicBlock.scala 229:48]
  reg  output_fire_R_1; // @[BasicBlock.scala 229:48]
  reg  output_fire_R_2; // @[BasicBlock.scala 229:48]
  reg  output_fire_R_3; // @[BasicBlock.scala 229:48]
  wire  _T_7 = io_predicateIn_0_ready & io_predicateIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 234:36]
  wire  _GEN_5 = _T_7 | in_data_valid_R_0; // @[BasicBlock.scala 234:36]
  wire [4:0] in_task_ID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 241:34]
  wire  _T_8 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_6 = _T_8 | output_fire_R_0; // @[BasicBlock.scala 246:28]
  wire  _T_9 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_8 = _T_9 | output_fire_R_1; // @[BasicBlock.scala 246:28]
  wire  _T_10 = io_Out_2_ready & io_Out_2_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_10 = _T_10 | output_fire_R_2; // @[BasicBlock.scala 246:28]
  wire  _T_11 = io_Out_3_ready & io_Out_3_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_12 = _T_11 | output_fire_R_3; // @[BasicBlock.scala 246:28]
  wire  out_fire_mask_0 = output_fire_R_0 | _T_8; // @[BasicBlock.scala 258:85]
  wire  out_fire_mask_1 = output_fire_R_1 | _T_9; // @[BasicBlock.scala 258:85]
  wire  out_fire_mask_2 = output_fire_R_2 | _T_10; // @[BasicBlock.scala 258:85]
  wire  out_fire_mask_3 = output_fire_R_3 | _T_11; // @[BasicBlock.scala 258:85]
  reg  state; // @[BasicBlock.scala 289:22]
  wire  _T_24 = ~state; // @[Conditional.scala 37:30]
  wire  _T_29 = _T_8 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_30 = _T_9 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_31 = _T_10 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_32 = _T_11 ^ 1'h1; // @[BasicBlock.scala 306:81]
  wire  _T_34 = ~reset; // @[BasicBlock.scala 311:17]
  wire  _GEN_14 = _GEN_5 | output_valid_R_0; // @[BasicBlock.scala 301:9]
  wire  _GEN_15 = _GEN_5 | output_valid_R_1; // @[BasicBlock.scala 301:9]
  wire  _GEN_16 = _GEN_5 | output_valid_R_2; // @[BasicBlock.scala 301:9]
  wire  _GEN_17 = _GEN_5 | output_valid_R_3; // @[BasicBlock.scala 301:9]
  wire  _GEN_22 = _GEN_5 | state; // @[BasicBlock.scala 301:9]
  wire  _T_36 = out_fire_mask_0 & out_fire_mask_1; // @[BasicBlock.scala 317:35]
  wire  _T_37 = _T_36 & out_fire_mask_2; // @[BasicBlock.scala 317:35]
  wire  _T_38 = _T_37 & out_fire_mask_3; // @[BasicBlock.scala 317:35]
  wire  _GEN_58 = _T_24 & _GEN_5; // @[BasicBlock.scala 311:17]
  assign io_predicateIn_0_ready = ~in_data_valid_R_0; // @[BasicBlock.scala 233:29]
  assign io_Out_0_valid = _T_24 ? _GEN_14 : output_valid_R_0; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_0_bits_taskID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 279:22]
  assign io_Out_0_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
  assign io_Out_1_valid = _T_24 ? _GEN_15 : output_valid_R_1; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_1_bits_taskID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 279:22]
  assign io_Out_1_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
  assign io_Out_2_valid = _T_24 ? _GEN_16 : output_valid_R_2; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_2_bits_taskID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 279:22]
  assign io_Out_2_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
  assign io_Out_3_valid = _T_24 ? _GEN_17 : output_valid_R_3; // @[BasicBlock.scala 284:21 BasicBlock.scala 303:34]
  assign io_Out_3_bits_taskID = io_predicateIn_0_bits_taskID | in_data_R_0_taskID; // @[BasicBlock.scala 279:22]
  assign io_Out_3_bits_control = _T_7 ? io_predicateIn_0_bits_control : in_data_R_0_control; // @[BasicBlock.scala 279:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  in_data_R_0_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  in_data_R_0_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_data_valid_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  output_R_taskID = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_valid_R_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  output_valid_R_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  output_valid_R_3 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  output_fire_R_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  output_fire_R_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  output_fire_R_2 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  output_fire_R_3 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  state = _RAND_13[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      in_data_R_0_taskID <= 5'h0;
    end else if (_T_24) begin
      if (_T_7) begin
        in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
      end
    end else if (state) begin
      if (_T_38) begin
        in_data_R_0_taskID <= 5'h0;
      end else if (_T_7) begin
        in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
      end
    end else if (_T_7) begin
      in_data_R_0_taskID <= io_predicateIn_0_bits_taskID;
    end
    if (reset) begin
      in_data_R_0_control <= 1'h0;
    end else if (_T_24) begin
      if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (state) begin
      if (_T_38) begin
        in_data_R_0_control <= 1'h0;
      end else if (_T_7) begin
        in_data_R_0_control <= io_predicateIn_0_bits_control;
      end
    end else if (_T_7) begin
      in_data_R_0_control <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      in_data_valid_R_0 <= 1'h0;
    end else if (_T_24) begin
      in_data_valid_R_0 <= _GEN_5;
    end else if (state) begin
      if (_T_38) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_5;
      end
    end else begin
      in_data_valid_R_0 <= _GEN_5;
    end
    if (reset) begin
      output_R_taskID <= 5'h0;
    end else begin
      output_R_taskID <= in_task_ID;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_24) begin
      if (_GEN_5) begin
        output_valid_R_0 <= _T_29;
      end else if (_T_8) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_8) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      output_valid_R_1 <= 1'h0;
    end else if (_T_24) begin
      if (_GEN_5) begin
        output_valid_R_1 <= _T_30;
      end else if (_T_9) begin
        output_valid_R_1 <= 1'h0;
      end
    end else if (_T_9) begin
      output_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      output_valid_R_2 <= 1'h0;
    end else if (_T_24) begin
      if (_GEN_5) begin
        output_valid_R_2 <= _T_31;
      end else if (_T_10) begin
        output_valid_R_2 <= 1'h0;
      end
    end else if (_T_10) begin
      output_valid_R_2 <= 1'h0;
    end
    if (reset) begin
      output_valid_R_3 <= 1'h0;
    end else if (_T_24) begin
      if (_GEN_5) begin
        output_valid_R_3 <= _T_32;
      end else if (_T_11) begin
        output_valid_R_3 <= 1'h0;
      end
    end else if (_T_11) begin
      output_valid_R_3 <= 1'h0;
    end
    if (reset) begin
      output_fire_R_0 <= 1'h0;
    end else if (_T_24) begin
      output_fire_R_0 <= _GEN_6;
    end else if (state) begin
      if (_T_38) begin
        output_fire_R_0 <= 1'h0;
      end else begin
        output_fire_R_0 <= _GEN_6;
      end
    end else begin
      output_fire_R_0 <= _GEN_6;
    end
    if (reset) begin
      output_fire_R_1 <= 1'h0;
    end else if (_T_24) begin
      output_fire_R_1 <= _GEN_8;
    end else if (state) begin
      if (_T_38) begin
        output_fire_R_1 <= 1'h0;
      end else begin
        output_fire_R_1 <= _GEN_8;
      end
    end else begin
      output_fire_R_1 <= _GEN_8;
    end
    if (reset) begin
      output_fire_R_2 <= 1'h0;
    end else if (_T_24) begin
      output_fire_R_2 <= _GEN_10;
    end else if (state) begin
      if (_T_38) begin
        output_fire_R_2 <= 1'h0;
      end else begin
        output_fire_R_2 <= _GEN_10;
      end
    end else begin
      output_fire_R_2 <= _GEN_10;
    end
    if (reset) begin
      output_fire_R_3 <= 1'h0;
    end else if (_T_24) begin
      output_fire_R_3 <= _GEN_12;
    end else if (state) begin
      if (_T_38) begin
        output_fire_R_3 <= 1'h0;
      end else begin
        output_fire_R_3 <= _GEN_12;
      end
    end else begin
      output_fire_R_3 <= _GEN_12;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_24) begin
      state <= _GEN_22;
    end else if (state) begin
      if (_T_38) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_58 & _T_34) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [BB] [Name: bb_for_cond_cleanup315] [BID: 15] [Out: %d] [Cycle: %d]\n",output_R_taskID,_GEN_3,cycleCount); // @[BasicBlock.scala 311:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module BasicBlockNode_1(
  input        clock,
  input        reset,
  input        io_MaskBB_0_ready,
  output       io_MaskBB_0_valid,
  output [1:0] io_MaskBB_0_bits,
  input        io_Out_0_ready,
  output       io_Out_0_valid,
  output [4:0] io_Out_0_bits_taskID,
  output       io_Out_0_bits_control,
  input        io_Out_1_ready,
  output       io_Out_1_valid,
  output [4:0] io_Out_1_bits_taskID,
  output       io_Out_1_bits_control,
  input        io_Out_2_ready,
  output       io_Out_2_valid,
  output [4:0] io_Out_2_bits_taskID,
  output       io_Out_2_bits_control,
  input        io_Out_3_ready,
  output       io_Out_3_valid,
  output [4:0] io_Out_3_bits_taskID,
  output       io_Out_3_bits_control,
  input        io_Out_4_ready,
  output       io_Out_4_valid,
  output       io_Out_4_bits_control,
  input        io_Out_5_ready,
  output       io_Out_5_valid,
  output [4:0] io_Out_5_bits_taskID,
  output       io_Out_5_bits_control,
  input        io_Out_6_ready,
  output       io_Out_6_valid,
  output [4:0] io_Out_6_bits_taskID,
  output       io_Out_6_bits_control,
  input        io_Out_7_ready,
  output       io_Out_7_valid,
  output [4:0] io_Out_7_bits_taskID,
  output       io_Out_7_bits_control,
  input        io_Out_8_ready,
  output       io_Out_8_valid,
  output [4:0] io_Out_8_bits_taskID,
  output       io_Out_8_bits_control,
  input        io_Out_9_ready,
  output       io_Out_9_valid,
  output [4:0] io_Out_9_bits_taskID,
  output       io_Out_9_bits_control,
  input        io_Out_10_ready,
  output       io_Out_10_valid,
  output [4:0] io_Out_10_bits_taskID,
  output       io_Out_10_bits_control,
  input        io_Out_11_ready,
  output       io_Out_11_valid,
  output [4:0] io_Out_11_bits_taskID,
  output       io_Out_11_bits_control,
  input        io_Out_12_ready,
  output       io_Out_12_valid,
  output [4:0] io_Out_12_bits_taskID,
  input        io_Out_13_ready,
  output       io_Out_13_valid,
  output [4:0] io_Out_13_bits_taskID,
  output       io_Out_13_bits_control,
  input        io_Out_14_ready,
  output       io_Out_14_valid,
  output [4:0] io_Out_14_bits_taskID,
  output       io_Out_14_bits_control,
  input        io_Out_15_ready,
  output       io_Out_15_valid,
  output [4:0] io_Out_15_bits_taskID,
  output       io_Out_15_bits_control,
  input        io_Out_16_ready,
  output       io_Out_16_valid,
  output [4:0] io_Out_16_bits_taskID,
  output       io_Out_16_bits_control,
  output       io_predicateIn_0_ready,
  input        io_predicateIn_0_valid,
  input  [4:0] io_predicateIn_0_bits_taskID,
  input        io_predicateIn_0_bits_control,
  output       io_predicateIn_1_ready,
  input        io_predicateIn_1_valid,
  input  [4:0] io_predicateIn_1_bits_taskID,
  input        io_predicateIn_1_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
`endif // RANDOMIZE_REG_INIT
  reg  out_ready_R_0; // @[HandShaking.scala 780:28]
  reg  out_ready_R_1; // @[HandShaking.scala 780:28]
  reg  out_ready_R_2; // @[HandShaking.scala 780:28]
  reg  out_ready_R_3; // @[HandShaking.scala 780:28]
  reg  out_ready_R_4; // @[HandShaking.scala 780:28]
  reg  out_ready_R_5; // @[HandShaking.scala 780:28]
  reg  out_ready_R_6; // @[HandShaking.scala 780:28]
  reg  out_ready_R_7; // @[HandShaking.scala 780:28]
  reg  out_ready_R_8; // @[HandShaking.scala 780:28]
  reg  out_ready_R_9; // @[HandShaking.scala 780:28]
  reg  out_ready_R_10; // @[HandShaking.scala 780:28]
  reg  out_ready_R_11; // @[HandShaking.scala 780:28]
  reg  out_ready_R_12; // @[HandShaking.scala 780:28]
  reg  out_ready_R_13; // @[HandShaking.scala 780:28]
  reg  out_ready_R_14; // @[HandShaking.scala 780:28]
  reg  out_ready_R_15; // @[HandShaking.scala 780:28]
  reg  out_ready_R_16; // @[HandShaking.scala 780:28]
  reg  out_valid_R_0; // @[HandShaking.scala 781:28]
  reg  out_valid_R_1; // @[HandShaking.scala 781:28]
  reg  out_valid_R_2; // @[HandShaking.scala 781:28]
  reg  out_valid_R_3; // @[HandShaking.scala 781:28]
  reg  out_valid_R_4; // @[HandShaking.scala 781:28]
  reg  out_valid_R_5; // @[HandShaking.scala 781:28]
  reg  out_valid_R_6; // @[HandShaking.scala 781:28]
  reg  out_valid_R_7; // @[HandShaking.scala 781:28]
  reg  out_valid_R_8; // @[HandShaking.scala 781:28]
  reg  out_valid_R_9; // @[HandShaking.scala 781:28]
  reg  out_valid_R_10; // @[HandShaking.scala 781:28]
  reg  out_valid_R_11; // @[HandShaking.scala 781:28]
  reg  out_valid_R_12; // @[HandShaking.scala 781:28]
  reg  out_valid_R_13; // @[HandShaking.scala 781:28]
  reg  out_valid_R_14; // @[HandShaking.scala 781:28]
  reg  out_valid_R_15; // @[HandShaking.scala 781:28]
  reg  out_valid_R_16; // @[HandShaking.scala 781:28]
  reg  mask_valid_R_0; // @[HandShaking.scala 785:46]
  wire  _T_2 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_1 = _T_2 ? 1'h0 : out_valid_R_0; // @[HandShaking.scala 794:29]
  wire  _T_3 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_3 ? 1'h0 : out_valid_R_1; // @[HandShaking.scala 794:29]
  wire  _T_4 = io_Out_2_ready & io_Out_2_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_5 = _T_4 ? 1'h0 : out_valid_R_2; // @[HandShaking.scala 794:29]
  wire  _T_5 = io_Out_3_ready & io_Out_3_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_7 = _T_5 ? 1'h0 : out_valid_R_3; // @[HandShaking.scala 794:29]
  wire  _T_6 = io_Out_4_ready & io_Out_4_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = _T_6 ? 1'h0 : out_valid_R_4; // @[HandShaking.scala 794:29]
  wire  _T_7 = io_Out_5_ready & io_Out_5_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_7 ? 1'h0 : out_valid_R_5; // @[HandShaking.scala 794:29]
  wire  _T_8 = io_Out_6_ready & io_Out_6_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_13 = _T_8 ? 1'h0 : out_valid_R_6; // @[HandShaking.scala 794:29]
  wire  _T_9 = io_Out_7_ready & io_Out_7_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_9 ? 1'h0 : out_valid_R_7; // @[HandShaking.scala 794:29]
  wire  _T_10 = io_Out_8_ready & io_Out_8_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_17 = _T_10 ? 1'h0 : out_valid_R_8; // @[HandShaking.scala 794:29]
  wire  _T_11 = io_Out_9_ready & io_Out_9_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_19 = _T_11 ? 1'h0 : out_valid_R_9; // @[HandShaking.scala 794:29]
  wire  _T_12 = io_Out_10_ready & io_Out_10_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_21 = _T_12 ? 1'h0 : out_valid_R_10; // @[HandShaking.scala 794:29]
  wire  _T_13 = io_Out_11_ready & io_Out_11_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_23 = _T_13 ? 1'h0 : out_valid_R_11; // @[HandShaking.scala 794:29]
  wire  _T_14 = io_Out_12_ready & io_Out_12_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_25 = _T_14 ? 1'h0 : out_valid_R_12; // @[HandShaking.scala 794:29]
  wire  _T_15 = io_Out_13_ready & io_Out_13_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_27 = _T_15 ? 1'h0 : out_valid_R_13; // @[HandShaking.scala 794:29]
  wire  _T_16 = io_Out_14_ready & io_Out_14_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_29 = _T_16 ? 1'h0 : out_valid_R_14; // @[HandShaking.scala 794:29]
  wire  _T_17 = io_Out_15_ready & io_Out_15_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_31 = _T_17 ? 1'h0 : out_valid_R_15; // @[HandShaking.scala 794:29]
  wire  _T_18 = io_Out_16_ready & io_Out_16_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_33 = _T_18 ? 1'h0 : out_valid_R_16; // @[HandShaking.scala 794:29]
  wire  _T_19 = io_MaskBB_0_ready & io_MaskBB_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_35 = _T_19 ? 1'h0 : mask_valid_R_0; // @[HandShaking.scala 805:32]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_23 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] predicate_in_R_0_taskID; // @[BasicBlock.scala 65:51]
  reg  predicate_in_R_0_control; // @[BasicBlock.scala 65:51]
  reg [4:0] predicate_in_R_1_taskID; // @[BasicBlock.scala 65:51]
  reg  predicate_in_R_1_control; // @[BasicBlock.scala 65:51]
  reg  predicate_control_R_0; // @[BasicBlock.scala 66:36]
  reg  predicate_control_R_1; // @[BasicBlock.scala 66:36]
  reg  predicate_valid_R_0; // @[BasicBlock.scala 67:54]
  reg  predicate_valid_R_1; // @[BasicBlock.scala 67:54]
  reg  state; // @[BasicBlock.scala 70:22]
  wire  predicate = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 76:58]
  wire [4:0] predicate_task = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 77:62]
  wire  _T_27 = io_predicateIn_0_ready & io_predicateIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_28 = io_predicateIn_1_ready & io_predicateIn_1_valid; // @[Decoupled.scala 40:37]
  wire  _T_29 = _T_27 | predicate_valid_R_0; // @[BasicBlock.scala 80:91]
  wire  _T_30 = _T_28 | predicate_valid_R_1; // @[BasicBlock.scala 80:91]
  wire  start = _T_29 & _T_30; // @[BasicBlock.scala 80:107]
  wire [1:0] _T_35 = {predicate_control_R_1,predicate_control_R_0}; // @[BasicBlock.scala 105:52]
  wire  _T_36 = ~state; // @[Conditional.scala 37:30]
  wire  _GEN_48 = start | _GEN_1; // @[BasicBlock.scala 115:19]
  wire  _GEN_49 = start | _GEN_3; // @[BasicBlock.scala 115:19]
  wire  _GEN_50 = start | _GEN_5; // @[BasicBlock.scala 115:19]
  wire  _GEN_51 = start | _GEN_7; // @[BasicBlock.scala 115:19]
  wire  _GEN_52 = start | _GEN_9; // @[BasicBlock.scala 115:19]
  wire  _GEN_53 = start | _GEN_11; // @[BasicBlock.scala 115:19]
  wire  _GEN_54 = start | _GEN_13; // @[BasicBlock.scala 115:19]
  wire  _GEN_55 = start | _GEN_15; // @[BasicBlock.scala 115:19]
  wire  _GEN_56 = start | _GEN_17; // @[BasicBlock.scala 115:19]
  wire  _GEN_57 = start | _GEN_19; // @[BasicBlock.scala 115:19]
  wire  _GEN_58 = start | _GEN_21; // @[BasicBlock.scala 115:19]
  wire  _GEN_59 = start | _GEN_23; // @[BasicBlock.scala 115:19]
  wire  _GEN_60 = start | _GEN_25; // @[BasicBlock.scala 115:19]
  wire  _GEN_61 = start | _GEN_27; // @[BasicBlock.scala 115:19]
  wire  _GEN_62 = start | _GEN_29; // @[BasicBlock.scala 115:19]
  wire  _GEN_63 = start | _GEN_31; // @[BasicBlock.scala 115:19]
  wire  _GEN_64 = start | _GEN_33; // @[BasicBlock.scala 115:19]
  wire  _GEN_65 = start | _GEN_35; // @[BasicBlock.scala 115:19]
  wire  _GEN_66 = start | state; // @[BasicBlock.scala 115:19]
  wire [7:0] _T_45 = {out_ready_R_7,out_ready_R_6,out_ready_R_5,out_ready_R_4,out_ready_R_3,out_ready_R_2,out_ready_R_1,out_ready_R_0}; // @[HandShaking.scala 834:17]
  wire [16:0] _T_54 = {out_ready_R_16,out_ready_R_15,out_ready_R_14,out_ready_R_13,out_ready_R_12,out_ready_R_11,out_ready_R_10,out_ready_R_9,out_ready_R_8,_T_45}; // @[HandShaking.scala 834:17]
  wire  _T_55 = &_T_54; // @[HandShaking.scala 834:24]
  wire  _T_59 = ~reset; // @[BasicBlock.scala 129:19]
  wire  _GEN_148 = ~_T_36; // @[BasicBlock.scala 129:19]
  wire  _GEN_149 = _GEN_148 & state; // @[BasicBlock.scala 129:19]
  wire  _GEN_150 = _GEN_149 & _T_55; // @[BasicBlock.scala 129:19]
  wire  _GEN_151 = _GEN_150 & predicate; // @[BasicBlock.scala 129:19]
  wire  _GEN_155 = ~predicate; // @[BasicBlock.scala 134:19]
  wire  _GEN_156 = _GEN_150 & _GEN_155; // @[BasicBlock.scala 134:19]
  assign io_MaskBB_0_valid = mask_valid_R_0; // @[HandShaking.scala 804:24]
  assign io_MaskBB_0_bits = {predicate_control_R_1,predicate_control_R_0}; // @[BasicBlock.scala 105:23]
  assign io_Out_0_valid = out_valid_R_0; // @[HandShaking.scala 793:21]
  assign io_Out_0_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_0_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_1_valid = out_valid_R_1; // @[HandShaking.scala 793:21]
  assign io_Out_1_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_1_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_2_valid = out_valid_R_2; // @[HandShaking.scala 793:21]
  assign io_Out_2_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_2_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_3_valid = out_valid_R_3; // @[HandShaking.scala 793:21]
  assign io_Out_3_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_3_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_4_valid = out_valid_R_4; // @[HandShaking.scala 793:21]
  assign io_Out_4_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_5_valid = out_valid_R_5; // @[HandShaking.scala 793:21]
  assign io_Out_5_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_5_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_6_valid = out_valid_R_6; // @[HandShaking.scala 793:21]
  assign io_Out_6_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_6_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_7_valid = out_valid_R_7; // @[HandShaking.scala 793:21]
  assign io_Out_7_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_7_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_8_valid = out_valid_R_8; // @[HandShaking.scala 793:21]
  assign io_Out_8_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_8_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_9_valid = out_valid_R_9; // @[HandShaking.scala 793:21]
  assign io_Out_9_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_9_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_10_valid = out_valid_R_10; // @[HandShaking.scala 793:21]
  assign io_Out_10_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_10_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_11_valid = out_valid_R_11; // @[HandShaking.scala 793:21]
  assign io_Out_11_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_11_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_12_valid = out_valid_R_12; // @[HandShaking.scala 793:21]
  assign io_Out_12_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_13_valid = out_valid_R_13; // @[HandShaking.scala 793:21]
  assign io_Out_13_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_13_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_14_valid = out_valid_R_14; // @[HandShaking.scala 793:21]
  assign io_Out_14_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_14_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_15_valid = out_valid_R_15; // @[HandShaking.scala 793:21]
  assign io_Out_15_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_15_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_Out_16_valid = out_valid_R_16; // @[HandShaking.scala 793:21]
  assign io_Out_16_bits_taskID = predicate_in_R_0_taskID | predicate_in_R_1_taskID; // @[BasicBlock.scala 99:27]
  assign io_Out_16_bits_control = predicate_in_R_0_control | predicate_in_R_1_control; // @[BasicBlock.scala 98:28]
  assign io_predicateIn_0_ready = ~predicate_valid_R_0; // @[BasicBlock.scala 88:29]
  assign io_predicateIn_1_ready = ~predicate_valid_R_1; // @[BasicBlock.scala 88:29]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  out_ready_R_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  out_ready_R_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_ready_R_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  out_ready_R_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  out_ready_R_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  out_ready_R_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  out_ready_R_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  out_ready_R_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  out_ready_R_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  out_ready_R_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  out_ready_R_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  out_ready_R_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  out_ready_R_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  out_ready_R_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  out_ready_R_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  out_valid_R_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  out_valid_R_2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  out_valid_R_3 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  out_valid_R_4 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  out_valid_R_5 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  out_valid_R_6 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  out_valid_R_7 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  out_valid_R_8 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  out_valid_R_9 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  out_valid_R_10 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  out_valid_R_11 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  out_valid_R_12 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  out_valid_R_13 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  out_valid_R_14 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  out_valid_R_15 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  out_valid_R_16 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  mask_valid_R_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  cycleCount = _RAND_35[14:0];
  _RAND_36 = {1{`RANDOM}};
  predicate_in_R_0_taskID = _RAND_36[4:0];
  _RAND_37 = {1{`RANDOM}};
  predicate_in_R_0_control = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  predicate_in_R_1_taskID = _RAND_38[4:0];
  _RAND_39 = {1{`RANDOM}};
  predicate_in_R_1_control = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  predicate_control_R_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  predicate_control_R_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  predicate_valid_R_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  predicate_valid_R_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  state = _RAND_44[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_36) begin
      if (_T_2) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_2) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_2) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_ready_R_1 <= 1'h0;
    end else if (_T_36) begin
      if (_T_3) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_1 <= 1'h0;
      end else if (_T_3) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (_T_3) begin
      out_ready_R_1 <= io_Out_1_ready;
    end
    if (reset) begin
      out_ready_R_2 <= 1'h0;
    end else if (_T_36) begin
      if (_T_4) begin
        out_ready_R_2 <= io_Out_2_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_2 <= 1'h0;
      end else if (_T_4) begin
        out_ready_R_2 <= io_Out_2_ready;
      end
    end else if (_T_4) begin
      out_ready_R_2 <= io_Out_2_ready;
    end
    if (reset) begin
      out_ready_R_3 <= 1'h0;
    end else if (_T_36) begin
      if (_T_5) begin
        out_ready_R_3 <= io_Out_3_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_3 <= 1'h0;
      end else if (_T_5) begin
        out_ready_R_3 <= io_Out_3_ready;
      end
    end else if (_T_5) begin
      out_ready_R_3 <= io_Out_3_ready;
    end
    if (reset) begin
      out_ready_R_4 <= 1'h0;
    end else if (_T_36) begin
      if (_T_6) begin
        out_ready_R_4 <= io_Out_4_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_4 <= 1'h0;
      end else if (_T_6) begin
        out_ready_R_4 <= io_Out_4_ready;
      end
    end else if (_T_6) begin
      out_ready_R_4 <= io_Out_4_ready;
    end
    if (reset) begin
      out_ready_R_5 <= 1'h0;
    end else if (_T_36) begin
      if (_T_7) begin
        out_ready_R_5 <= io_Out_5_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_5 <= 1'h0;
      end else if (_T_7) begin
        out_ready_R_5 <= io_Out_5_ready;
      end
    end else if (_T_7) begin
      out_ready_R_5 <= io_Out_5_ready;
    end
    if (reset) begin
      out_ready_R_6 <= 1'h0;
    end else if (_T_36) begin
      if (_T_8) begin
        out_ready_R_6 <= io_Out_6_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_6 <= 1'h0;
      end else if (_T_8) begin
        out_ready_R_6 <= io_Out_6_ready;
      end
    end else if (_T_8) begin
      out_ready_R_6 <= io_Out_6_ready;
    end
    if (reset) begin
      out_ready_R_7 <= 1'h0;
    end else if (_T_36) begin
      if (_T_9) begin
        out_ready_R_7 <= io_Out_7_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_7 <= 1'h0;
      end else if (_T_9) begin
        out_ready_R_7 <= io_Out_7_ready;
      end
    end else if (_T_9) begin
      out_ready_R_7 <= io_Out_7_ready;
    end
    if (reset) begin
      out_ready_R_8 <= 1'h0;
    end else if (_T_36) begin
      if (_T_10) begin
        out_ready_R_8 <= io_Out_8_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_8 <= 1'h0;
      end else if (_T_10) begin
        out_ready_R_8 <= io_Out_8_ready;
      end
    end else if (_T_10) begin
      out_ready_R_8 <= io_Out_8_ready;
    end
    if (reset) begin
      out_ready_R_9 <= 1'h0;
    end else if (_T_36) begin
      if (_T_11) begin
        out_ready_R_9 <= io_Out_9_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_9 <= 1'h0;
      end else if (_T_11) begin
        out_ready_R_9 <= io_Out_9_ready;
      end
    end else if (_T_11) begin
      out_ready_R_9 <= io_Out_9_ready;
    end
    if (reset) begin
      out_ready_R_10 <= 1'h0;
    end else if (_T_36) begin
      if (_T_12) begin
        out_ready_R_10 <= io_Out_10_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_10 <= 1'h0;
      end else if (_T_12) begin
        out_ready_R_10 <= io_Out_10_ready;
      end
    end else if (_T_12) begin
      out_ready_R_10 <= io_Out_10_ready;
    end
    if (reset) begin
      out_ready_R_11 <= 1'h0;
    end else if (_T_36) begin
      if (_T_13) begin
        out_ready_R_11 <= io_Out_11_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_11 <= 1'h0;
      end else if (_T_13) begin
        out_ready_R_11 <= io_Out_11_ready;
      end
    end else if (_T_13) begin
      out_ready_R_11 <= io_Out_11_ready;
    end
    if (reset) begin
      out_ready_R_12 <= 1'h0;
    end else if (_T_36) begin
      if (_T_14) begin
        out_ready_R_12 <= io_Out_12_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_12 <= 1'h0;
      end else if (_T_14) begin
        out_ready_R_12 <= io_Out_12_ready;
      end
    end else if (_T_14) begin
      out_ready_R_12 <= io_Out_12_ready;
    end
    if (reset) begin
      out_ready_R_13 <= 1'h0;
    end else if (_T_36) begin
      if (_T_15) begin
        out_ready_R_13 <= io_Out_13_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_13 <= 1'h0;
      end else if (_T_15) begin
        out_ready_R_13 <= io_Out_13_ready;
      end
    end else if (_T_15) begin
      out_ready_R_13 <= io_Out_13_ready;
    end
    if (reset) begin
      out_ready_R_14 <= 1'h0;
    end else if (_T_36) begin
      if (_T_16) begin
        out_ready_R_14 <= io_Out_14_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_14 <= 1'h0;
      end else if (_T_16) begin
        out_ready_R_14 <= io_Out_14_ready;
      end
    end else if (_T_16) begin
      out_ready_R_14 <= io_Out_14_ready;
    end
    if (reset) begin
      out_ready_R_15 <= 1'h0;
    end else if (_T_36) begin
      if (_T_17) begin
        out_ready_R_15 <= io_Out_15_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_15 <= 1'h0;
      end else if (_T_17) begin
        out_ready_R_15 <= io_Out_15_ready;
      end
    end else if (_T_17) begin
      out_ready_R_15 <= io_Out_15_ready;
    end
    if (reset) begin
      out_ready_R_16 <= 1'h0;
    end else if (_T_36) begin
      if (_T_18) begin
        out_ready_R_16 <= io_Out_16_ready;
      end
    end else if (state) begin
      if (_T_55) begin
        out_ready_R_16 <= 1'h0;
      end else if (_T_18) begin
        out_ready_R_16 <= io_Out_16_ready;
      end
    end else if (_T_18) begin
      out_ready_R_16 <= io_Out_16_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_0 <= _GEN_48;
    end else if (_T_2) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_1 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_1 <= _GEN_49;
    end else if (_T_3) begin
      out_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_2 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_2 <= _GEN_50;
    end else if (_T_4) begin
      out_valid_R_2 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_3 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_3 <= _GEN_51;
    end else if (_T_5) begin
      out_valid_R_3 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_4 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_4 <= _GEN_52;
    end else if (_T_6) begin
      out_valid_R_4 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_5 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_5 <= _GEN_53;
    end else if (_T_7) begin
      out_valid_R_5 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_6 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_6 <= _GEN_54;
    end else if (_T_8) begin
      out_valid_R_6 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_7 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_7 <= _GEN_55;
    end else if (_T_9) begin
      out_valid_R_7 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_8 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_8 <= _GEN_56;
    end else if (_T_10) begin
      out_valid_R_8 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_9 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_9 <= _GEN_57;
    end else if (_T_11) begin
      out_valid_R_9 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_10 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_10 <= _GEN_58;
    end else if (_T_12) begin
      out_valid_R_10 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_11 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_11 <= _GEN_59;
    end else if (_T_13) begin
      out_valid_R_11 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_12 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_12 <= _GEN_60;
    end else if (_T_14) begin
      out_valid_R_12 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_13 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_13 <= _GEN_61;
    end else if (_T_15) begin
      out_valid_R_13 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_14 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_14 <= _GEN_62;
    end else if (_T_16) begin
      out_valid_R_14 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_15 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_15 <= _GEN_63;
    end else if (_T_17) begin
      out_valid_R_15 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_16 <= 1'h0;
    end else if (_T_36) begin
      out_valid_R_16 <= _GEN_64;
    end else if (_T_18) begin
      out_valid_R_16 <= 1'h0;
    end
    if (reset) begin
      mask_valid_R_0 <= 1'h0;
    end else if (_T_36) begin
      mask_valid_R_0 <= _GEN_65;
    end else if (_T_19) begin
      mask_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_23;
    end
    if (reset) begin
      predicate_in_R_0_taskID <= 5'h0;
    end else if (_T_27) begin
      predicate_in_R_0_taskID <= io_predicateIn_0_bits_taskID;
    end
    if (reset) begin
      predicate_in_R_0_control <= 1'h0;
    end else if (_T_27) begin
      predicate_in_R_0_control <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      predicate_in_R_1_taskID <= 5'h0;
    end else if (_T_28) begin
      predicate_in_R_1_taskID <= io_predicateIn_1_bits_taskID;
    end
    if (reset) begin
      predicate_in_R_1_control <= 1'h0;
    end else if (_T_28) begin
      predicate_in_R_1_control <= io_predicateIn_1_bits_control;
    end
    if (reset) begin
      predicate_control_R_0 <= 1'h0;
    end else if (_T_27) begin
      predicate_control_R_0 <= io_predicateIn_0_bits_control;
    end
    if (reset) begin
      predicate_control_R_1 <= 1'h0;
    end else if (_T_28) begin
      predicate_control_R_1 <= io_predicateIn_1_bits_control;
    end
    if (reset) begin
      predicate_valid_R_0 <= 1'h0;
    end else if (_T_36) begin
      predicate_valid_R_0 <= _T_29;
    end else if (state) begin
      if (_T_55) begin
        predicate_valid_R_0 <= 1'h0;
      end else begin
        predicate_valid_R_0 <= _T_29;
      end
    end else begin
      predicate_valid_R_0 <= _T_29;
    end
    if (reset) begin
      predicate_valid_R_1 <= 1'h0;
    end else if (_T_36) begin
      predicate_valid_R_1 <= _T_30;
    end else if (state) begin
      if (_T_55) begin
        predicate_valid_R_1 <= 1'h0;
      end else begin
        predicate_valid_R_1 <= _T_30;
      end
    end else begin
      predicate_valid_R_1 <= _T_30;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_36) begin
      state <= _GEN_66;
    end else if (state) begin
      if (_T_55) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_59) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [BB] [Name: bb_for_body419] [BID: 19] [Mask: 0x%x]\n",predicate_task,_T_35); // @[BasicBlock.scala 129:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_156 & _T_59) begin
          $fwrite(32'h80000002,"[LOG] [Relu] bb_for_body419: Output fired @ %d -> 0 predicate\n",cycleCount); // @[BasicBlock.scala 134:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UALU(
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_out
);
  wire  _T_21 = io_in1 == io_in2; // @[Alu.scala 189:38]
  assign io_out = {{63'd0}, _T_21}; // @[Alu.scala 235:10]
endmodule
module ComputeNode(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_in2; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire  _T_12 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_12 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_14 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_14 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_22 = ~state; // @[ComputeNode.scala 75:67]
  wire  _T_27 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_28 = _T_27 & right_valid_R; // @[ComputeNode.scala 144:43]
  wire  _T_32 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_34 = ~reset; // @[ComputeNode.scala 174:17]
  wire [63:0] _T_30_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_17 = _T_28 ? _T_30_data : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_20 = _T_28 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_24 = _T_28 | state; // @[ComputeNode.scala 144:81]
  wire  _T_37 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _GEN_47 = _T_22 & _T_28; // @[ComputeNode.scala 174:17]
  UALU FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_in2(FU_io_in2),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_22 ? _GEN_20 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_data = _T_22 ? _GEN_17 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
  assign FU_io_in2 = 64'h0; // @[ComputeNode.scala 102:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_control = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  enable_valid_R = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cycleCount = _RAND_4[14:0];
  _RAND_5 = {2{`RANDOM}};
  left_R_data = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  left_valid_R = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  right_valid_R = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state = _RAND_8[0:0];
  _RAND_9 = {2{`RANDOM}};
  out_data_R = _RAND_9[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_37) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_37) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        out_valid_R_0 <= _T_32;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_12) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_11;
      end
    end else begin
      left_valid_R <= _GEN_11;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_15;
      end
    end else begin
      right_valid_R <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_22) begin
      state <= _GEN_24;
    end else if (state) begin
      if (_T_37) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_22) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_37) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_47 & _T_34) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: icmp_cmp310] [ID: 0] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: eq] [Cycle: %d]\n",5'h0,enable_R_control,left_R_data,64'h0,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module CBranchNodeVariable(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input         io_enable_bits_control,
  output        io_CmpIO_ready,
  input         io_CmpIO_valid,
  input  [63:0] io_CmpIO_bits_data,
  input         io_TrueOutput_0_ready,
  output        io_TrueOutput_0_valid,
  output        io_TrueOutput_0_bits_control,
  input         io_FalseOutput_0_ready,
  output        io_FalseOutput_0_valid,
  output        io_FalseOutput_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  cmp_R_control; // @[BranchNode.scala 1182:22]
  reg  cmp_valid; // @[BranchNode.scala 1183:26]
  reg  enable_R_control; // @[BranchNode.scala 1186:25]
  reg  enable_valid_R; // @[BranchNode.scala 1187:31]
  reg  output_true_R_control; // @[BranchNode.scala 1193:30]
  reg  output_true_valid_R_0; // @[BranchNode.scala 1194:54]
  reg  fire_true_R_0; // @[BranchNode.scala 1195:46]
  reg  output_false_R_control; // @[BranchNode.scala 1197:31]
  reg  output_false_valid_R_0; // @[BranchNode.scala 1198:56]
  reg  fire_false_R_0; // @[BranchNode.scala 1199:48]
  wire  _T_9 = io_CmpIO_ready & io_CmpIO_valid; // @[Decoupled.scala 40:37]
  wire  _T_10 = |io_CmpIO_bits_data; // @[BranchNode.scala 1207:44]
  wire  _GEN_4 = _T_9 | cmp_valid; // @[BranchNode.scala 1206:23]
  wire  _T_12 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_8 = _T_12 | enable_valid_R; // @[BranchNode.scala 1232:24]
  wire  true_output = enable_R_control & cmp_R_control; // @[BranchNode.scala 1238:38]
  wire  _T_13 = ~cmp_R_control; // @[BranchNode.scala 1239:43]
  wire  false_output = enable_R_control & _T_13; // @[BranchNode.scala 1239:39]
  wire  _T_14 = io_TrueOutput_0_ready & io_TrueOutput_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = _T_14 | fire_true_R_0; // @[BranchNode.scala 1250:33]
  wire  _GEN_10 = _T_14 ? 1'h0 : output_true_valid_R_0; // @[BranchNode.scala 1250:33]
  wire  _T_15 = io_FalseOutput_0_ready & io_FalseOutput_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_15 | fire_false_R_0; // @[BranchNode.scala 1266:34]
  wire  _GEN_12 = _T_15 ? 1'h0 : output_false_valid_R_0; // @[BranchNode.scala 1266:34]
  reg  state; // @[BranchNode.scala 1278:22]
  wire  _T_16 = ~state; // @[Conditional.scala 37:30]
  wire  _T_17 = enable_valid_R & cmp_valid; // @[BranchNode.scala 1283:27]
  wire  _T_20 = ~reset; // @[BranchNode.scala 1293:21]
  wire  _GEN_13 = _T_17 | _GEN_10; // @[BranchNode.scala 1283:65]
  wire  _GEN_14 = _T_17 | _GEN_12; // @[BranchNode.scala 1283:65]
  wire  _GEN_15 = _T_17 | state; // @[BranchNode.scala 1283:65]
  wire  _T_26 = fire_true_R_0 & fire_false_R_0; // @[BranchNode.scala 1313:27]
  wire  _GEN_73 = _T_16 & _T_17; // @[BranchNode.scala 1293:21]
  wire  _GEN_74 = _GEN_73 & enable_R_control; // @[BranchNode.scala 1293:21]
  wire  _GEN_75 = _GEN_74 & cmp_R_control; // @[BranchNode.scala 1293:21]
  wire  _GEN_79 = _GEN_74 & _T_13; // @[BranchNode.scala 1298:21]
  wire  _GEN_81 = ~enable_R_control; // @[BranchNode.scala 1304:19]
  wire  _GEN_82 = _GEN_73 & _GEN_81; // @[BranchNode.scala 1304:19]
  assign io_enable_ready = ~enable_valid_R; // @[BranchNode.scala 1231:19]
  assign io_CmpIO_ready = ~cmp_valid; // @[BranchNode.scala 1205:18]
  assign io_TrueOutput_0_valid = output_true_valid_R_0; // @[BranchNode.scala 1246:28]
  assign io_TrueOutput_0_bits_control = output_true_R_control; // @[BranchNode.scala 1245:27]
  assign io_FalseOutput_0_valid = output_false_valid_R_0; // @[BranchNode.scala 1262:29]
  assign io_FalseOutput_0_bits_control = output_false_R_control; // @[BranchNode.scala 1261:28]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  cmp_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  cmp_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_R_control = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  enable_valid_R = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  output_true_R_control = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_true_valid_R_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  fire_true_R_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  output_false_R_control = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  output_false_valid_R_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  fire_false_R_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      cmp_R_control <= 1'h0;
    end else if (_T_16) begin
      if (_T_9) begin
        cmp_R_control <= _T_10;
      end
    end else if (state) begin
      if (_T_26) begin
        cmp_R_control <= 1'h0;
      end else if (_T_9) begin
        cmp_R_control <= _T_10;
      end
    end else if (_T_9) begin
      cmp_R_control <= _T_10;
    end
    if (reset) begin
      cmp_valid <= 1'h0;
    end else if (_T_16) begin
      cmp_valid <= _GEN_4;
    end else if (state) begin
      if (_T_26) begin
        cmp_valid <= 1'h0;
      end else begin
        cmp_valid <= _GEN_4;
      end
    end else begin
      cmp_valid <= _GEN_4;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_16) begin
      if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (_T_26) begin
        enable_R_control <= 1'h0;
      end else if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_12) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_16) begin
      enable_valid_R <= _GEN_8;
    end else if (state) begin
      if (_T_26) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_8;
      end
    end else begin
      enable_valid_R <= _GEN_8;
    end
    if (reset) begin
      output_true_R_control <= 1'h0;
    end else if (_T_16) begin
      output_true_R_control <= true_output;
    end else if (state) begin
      if (_T_26) begin
        output_true_R_control <= 1'h0;
      end else begin
        output_true_R_control <= true_output;
      end
    end else begin
      output_true_R_control <= true_output;
    end
    if (reset) begin
      output_true_valid_R_0 <= 1'h0;
    end else if (_T_16) begin
      output_true_valid_R_0 <= _GEN_13;
    end else if (state) begin
      if (_T_26) begin
        output_true_valid_R_0 <= 1'h0;
      end else if (_T_14) begin
        output_true_valid_R_0 <= 1'h0;
      end
    end else if (_T_14) begin
      output_true_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_true_R_0 <= 1'h0;
    end else if (_T_16) begin
      fire_true_R_0 <= _GEN_9;
    end else if (state) begin
      if (_T_26) begin
        fire_true_R_0 <= 1'h0;
      end else begin
        fire_true_R_0 <= _GEN_9;
      end
    end else begin
      fire_true_R_0 <= _GEN_9;
    end
    if (reset) begin
      output_false_R_control <= 1'h0;
    end else if (_T_16) begin
      output_false_R_control <= false_output;
    end else if (state) begin
      if (_T_26) begin
        output_false_R_control <= 1'h0;
      end else begin
        output_false_R_control <= false_output;
      end
    end else begin
      output_false_R_control <= false_output;
    end
    if (reset) begin
      output_false_valid_R_0 <= 1'h0;
    end else if (_T_16) begin
      output_false_valid_R_0 <= _GEN_14;
    end else if (state) begin
      if (_T_26) begin
        output_false_valid_R_0 <= 1'h0;
      end else if (_T_15) begin
        output_false_valid_R_0 <= 1'h0;
      end
    end else if (_T_15) begin
      output_false_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_false_R_0 <= 1'h0;
    end else if (_T_16) begin
      fire_false_R_0 <= _GEN_11;
    end else if (state) begin
      if (_T_26) begin
        fire_false_R_0 <= 1'h0;
      end else begin
        fire_false_R_0 <= _GEN_11;
      end
    end else begin
      fire_false_R_0 <= _GEN_11;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_16) begin
      state <= _GEN_15;
    end else if (state) begin
      if (_T_26) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_3] [ID: 3] [Out: T:1 - F:0] [Cycle: %d]\n",5'h0,cycleCount); // @[BranchNode.scala 1293:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_3] [ID: 3] [Out: T:0 - F:1] [Cycle: %d]\n",5'h0,cycleCount); // @[BranchNode.scala 1298:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_82 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_3] [ID: 3] [Out: T:0 - F:0] [Cycle: %d]\n",5'h0,cycleCount); // @[BranchNode.scala 1304:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ZextNode(
  input         clock,
  input         reset,
  output        io_Input_ready,
  input         io_Input_valid,
  input  [63:0] io_Input_bits_data,
  output        io_enable_ready,
  input         io_enable_valid,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] input_R_data; // @[ZextNode.scala 42:24]
  reg  input_valid_R; // @[ZextNode.scala 43:30]
  reg  enable_R_control; // @[ZextNode.scala 45:25]
  reg  enable_valid_R; // @[ZextNode.scala 46:31]
  reg  output_valid_R_0; // @[ZextNode.scala 48:49]
  reg  fire_R_0; // @[ZextNode.scala 50:41]
  wire  _T_7 = io_Input_ready & io_Input_valid; // @[Decoupled.scala 40:37]
  wire [63:0] _GEN_4 = _T_7 ? io_Input_bits_data : input_R_data; // @[ZextNode.scala 60:25]
  wire  _GEN_5 = _T_7 | input_valid_R; // @[ZextNode.scala 60:25]
  wire  _T_9 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = _T_9 | enable_valid_R; // @[ZextNode.scala 66:26]
  wire  _T_11 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_10 = _T_11 ? 1'h0 : output_valid_R_0; // @[ZextNode.scala 80:26]
  wire  _GEN_11 = _T_11 | fire_R_0; // @[ZextNode.scala 80:26]
  wire  fire_mask_0 = fire_R_0 | _T_11; // @[ZextNode.scala 86:74]
  reg  state; // @[ZextNode.scala 101:22]
  wire  _T_13 = ~state; // @[Conditional.scala 37:30]
  wire  _T_15 = enable_valid_R | _T_9; // @[ZextNode.scala 89:20]
  wire  _T_17 = input_valid_R | _T_7; // @[ZextNode.scala 93:19]
  wire  _T_18 = _T_15 & _T_17; // @[ZextNode.scala 106:28]
  wire  _T_20 = ~reset; // @[ZextNode.scala 114:17]
  wire  _GEN_12 = _T_18 | output_valid_R_0; // @[ZextNode.scala 106:47]
  wire  _GEN_13 = _T_18 | _GEN_10; // @[ZextNode.scala 106:47]
  wire  _GEN_14 = _T_18 | state; // @[ZextNode.scala 106:47]
  wire  _GEN_49 = _T_13 & _T_18; // @[ZextNode.scala 114:17]
  assign io_Input_ready = ~input_valid_R; // @[ZextNode.scala 59:18]
  assign io_enable_ready = ~enable_valid_R; // @[ZextNode.scala 65:19]
  assign io_Out_0_valid = _T_13 ? _GEN_12 : output_valid_R_0; // @[ZextNode.scala 76:21 ZextNode.scala 108:32]
  assign io_Out_0_bits_data = _T_7 ? io_Input_bits_data : input_R_data; // @[ZextNode.scala 75:20]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {2{`RANDOM}};
  input_R_data = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  input_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_R_control = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  enable_valid_R = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  fire_R_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      input_R_data <= 64'h0;
    end else if (_T_13) begin
      if (_T_7) begin
        input_R_data <= io_Input_bits_data;
      end
    end else if (state) begin
      if (fire_mask_0) begin
        input_R_data <= 64'h0;
      end else if (_T_7) begin
        input_R_data <= io_Input_bits_data;
      end
    end else if (_T_7) begin
      input_R_data <= io_Input_bits_data;
    end
    if (reset) begin
      input_valid_R <= 1'h0;
    end else if (_T_13) begin
      input_valid_R <= _GEN_5;
    end else if (state) begin
      if (fire_mask_0) begin
        input_valid_R <= 1'h0;
      end else begin
        input_valid_R <= _GEN_5;
      end
    end else begin
      input_valid_R <= _GEN_5;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_13) begin
      if (_T_9) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (fire_mask_0) begin
        enable_R_control <= 1'h0;
      end else if (_T_9) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_9) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_13) begin
      enable_valid_R <= _GEN_9;
    end else if (state) begin
      if (fire_mask_0) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_9;
      end
    end else begin
      enable_valid_R <= _GEN_9;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_13) begin
      output_valid_R_0 <= _GEN_13;
    end else if (state) begin
      if (fire_mask_0) begin
        output_valid_R_0 <= 1'h0;
      end else if (_T_11) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_11) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_R_0 <= 1'h0;
    end else if (_T_13) begin
      fire_R_0 <= _GEN_11;
    end else if (state) begin
      if (fire_mask_0) begin
        fire_R_0 <= 1'h0;
      end else begin
        fire_R_0 <= _GEN_11;
      end
    end else begin
      fire_R_0 <= _GEN_11;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_13) begin
      state <= _GEN_14;
    end else if (state) begin
      if (fire_mask_0) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_49 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [ZEXT] [Name: sextwide_trip_count5] [ID: 0] [Pred: %d] [Out: %d] [Cycle: %d]\n",5'h0,enable_R_control,_GEN_4,cycleCount); // @[ZextNode.scala 114:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UBranchNode(
  input   clock,
  input   reset,
  output  io_enable_ready,
  input   io_enable_valid,
  input   io_enable_bits_control,
  input   io_Out_0_ready,
  output  io_Out_0_valid,
  output  io_Out_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg  enable_R_control; // @[HandShaking.scala 592:31]
  reg  enable_valid_R; // @[HandShaking.scala 593:31]
  reg  out_ready_R_0; // @[HandShaking.scala 605:28]
  reg  out_valid_R_0; // @[HandShaking.scala 606:28]
  wire  _T_4 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_6 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_10 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  state; // @[BranchNode.scala 588:22]
  wire  _T_11 = ~state; // @[Conditional.scala 37:30]
  wire  _T_14 = _T_4 ^ 1'h1; // @[HandShaking.scala 729:72]
  wire  _T_16 = ~reset; // @[BranchNode.scala 616:17]
  wire  _GEN_8 = enable_valid_R | state; // @[BranchNode.scala 611:46]
  wire  _GEN_10 = enable_valid_R | out_valid_R_0; // @[BranchNode.scala 611:46]
  wire  _T_18 = &out_ready_R_0; // @[HandShaking.scala 725:24]
  wire  _T_19 = &io_Out_0_ready; // @[HandShaking.scala 725:50]
  wire  _T_20 = _T_18 | _T_19; // @[HandShaking.scala 725:29]
  wire  _GEN_31 = _T_11 & enable_valid_R; // @[BranchNode.scala 616:17]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 650:19]
  assign io_Out_0_valid = _T_11 ? _GEN_10 : out_valid_R_0; // @[HandShaking.scala 630:21 BranchNode.scala 614:32]
  assign io_Out_0_bits_control = enable_R_control; // @[BranchNode.scala 607:25]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_control = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  enable_valid_R = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cycleCount = _RAND_4[14:0];
  _RAND_5 = {1{`RANDOM}};
  state = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_R_control <= 1'h0;
      end else if (_T_6) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_6) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_valid_R <= 1'h0;
      end else if (_T_6) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_6) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_11) begin
      if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_20) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_4) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_11) begin
      if (enable_valid_R) begin
        out_valid_R_0 <= _T_14;
      end else if (_T_4) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_4) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_10;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_11) begin
      state <= _GEN_8;
    end else if (state) begin
      if (_T_20) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_31 & _T_16) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [UBR] [Name: br_6] [ID: 6][Out: %d] [Cycle: %d]\n",5'h0,enable_R_control,cycleCount); // @[BranchNode.scala 616:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UBranchNode_1(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_0_ready,
  output       io_Out_0_valid,
  output [4:0] io_Out_0_bits_taskID,
  output       io_Out_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 592:31]
  reg  enable_R_control; // @[HandShaking.scala 592:31]
  reg  enable_valid_R; // @[HandShaking.scala 593:31]
  reg  out_ready_R_0; // @[HandShaking.scala 605:28]
  reg  out_valid_R_0; // @[HandShaking.scala 606:28]
  wire  _T_4 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_6 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_10 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  state; // @[BranchNode.scala 588:22]
  wire  _T_11 = ~state; // @[Conditional.scala 37:30]
  wire  _T_14 = _T_4 ^ 1'h1; // @[HandShaking.scala 729:72]
  wire  _T_16 = ~reset; // @[BranchNode.scala 616:17]
  wire  _GEN_8 = enable_valid_R | state; // @[BranchNode.scala 611:46]
  wire  _GEN_10 = enable_valid_R | out_valid_R_0; // @[BranchNode.scala 611:46]
  wire  _T_18 = &out_ready_R_0; // @[HandShaking.scala 725:24]
  wire  _T_19 = &io_Out_0_ready; // @[HandShaking.scala 725:50]
  wire  _T_20 = _T_18 | _T_19; // @[HandShaking.scala 725:29]
  wire  _GEN_31 = _T_11 & enable_valid_R; // @[BranchNode.scala 616:17]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 650:19]
  assign io_Out_0_valid = _T_11 ? _GEN_10 : out_valid_R_0; // @[HandShaking.scala 630:21 BranchNode.scala 614:32]
  assign io_Out_0_bits_taskID = enable_R_taskID; // @[BranchNode.scala 607:25]
  assign io_Out_0_bits_control = enable_R_control; // @[BranchNode.scala 607:25]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {1{`RANDOM}};
  state = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_R_taskID <= 5'h0;
      end else if (_T_6) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_6) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_R_control <= 1'h0;
      end else if (_T_6) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_6) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_valid_R <= 1'h0;
      end else if (_T_6) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_6) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_11) begin
      if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_20) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_4) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_11) begin
      if (enable_valid_R) begin
        out_valid_R_0 <= _T_14;
      end else if (_T_4) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_4) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_10;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_11) begin
      state <= _GEN_8;
    end else if (state) begin
      if (_T_20) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_31 & _T_16) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [UBR] [Name: br_8] [ID: 8][Out: %d] [Cycle: %d]\n",enable_R_taskID,enable_R_control,cycleCount); // @[BranchNode.scala 616:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module RetNode2(
  input        clock,
  input        reset,
  output       io_In_enable_ready,
  input        io_In_enable_valid,
  input  [4:0] io_In_enable_bits_taskID,
  input        io_Out_ready,
  output       io_Out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  state; // @[RetNode.scala 141:22]
  reg  enable_valid_R; // @[RetNode.scala 144:31]
  reg [4:0] output_R_enable_taskID; // @[RetNode.scala 150:25]
  reg  out_ready_R; // @[RetNode.scala 151:28]
  reg  out_valid_R; // @[RetNode.scala 152:28]
  wire  _T_6 = io_In_enable_ready & io_In_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_7 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_8 = _T_7 ? 1'h0 : out_valid_R; // @[RetNode.scala 194:23]
  wire  _T_8 = ~state; // @[Conditional.scala 37:30]
  wire  _GEN_11 = enable_valid_R | _GEN_8; // @[RetNode.scala 202:28]
  wire  _GEN_12 = enable_valid_R | state; // @[RetNode.scala 202:28]
  wire  _T_11 = ~reset; // @[RetNode.scala 221:17]
  wire  _GEN_25 = ~_T_8; // @[RetNode.scala 221:17]
  wire  _GEN_26 = _GEN_25 & state; // @[RetNode.scala 221:17]
  wire  _GEN_27 = _GEN_26 & out_ready_R; // @[RetNode.scala 221:17]
  assign io_In_enable_ready = ~enable_valid_R; // @[RetNode.scala 163:22]
  assign io_Out_valid = out_valid_R; // @[RetNode.scala 180:16]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  output_R_enable_taskID = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  out_ready_R = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  out_valid_R = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_8) begin
      state <= _GEN_12;
    end else if (state) begin
      if (out_ready_R) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_8) begin
      if (_T_6) begin
        enable_valid_R <= io_In_enable_valid;
      end
    end else if (state) begin
      if (out_ready_R) begin
        enable_valid_R <= 1'h0;
      end else if (_T_6) begin
        enable_valid_R <= io_In_enable_valid;
      end
    end else if (_T_6) begin
      enable_valid_R <= io_In_enable_valid;
    end
    if (reset) begin
      output_R_enable_taskID <= 5'h0;
    end else if (_T_6) begin
      output_R_enable_taskID <= io_In_enable_bits_taskID;
    end
    if (reset) begin
      out_ready_R <= 1'h0;
    end else if (_T_8) begin
      if (_T_7) begin
        out_ready_R <= io_Out_ready;
      end
    end else if (state) begin
      if (out_ready_R) begin
        out_ready_R <= 1'h0;
      end else if (_T_7) begin
        out_ready_R <= io_Out_ready;
      end
    end else if (_T_7) begin
      out_ready_R <= io_Out_ready;
    end
    if (reset) begin
      out_valid_R <= 1'h0;
    end else if (_T_8) begin
      out_valid_R <= _GEN_11;
    end else if (state) begin
      if (out_ready_R) begin
        out_valid_R <= 1'h0;
      end else if (_T_7) begin
        out_valid_R <= 1'h0;
      end
    end else if (_T_7) begin
      out_valid_R <= 1'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_27 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [Name: ret_10] [ID: 10] [Cycle: %d]\n",output_R_enable_taskID,cycleCount); // @[RetNode.scala 221:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module PhiFastNode(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input         io_enable_bits_control,
  output        io_InData_0_ready,
  input         io_InData_0_valid,
  input  [4:0]  io_InData_0_bits_taskID,
  output        io_InData_1_ready,
  input         io_InData_1_valid,
  input  [4:0]  io_InData_1_bits_taskID,
  input  [63:0] io_InData_1_bits_data,
  output        io_Mask_ready,
  input         io_Mask_valid,
  input  [1:0]  io_Mask_bits,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  input         io_Out_1_ready,
  output        io_Out_1_valid,
  output [63:0] io_Out_1_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] in_data_R_0_taskID; // @[PhiNode.scala 203:26]
  reg [4:0] in_data_R_1_taskID; // @[PhiNode.scala 203:26]
  reg [63:0] in_data_R_1_data; // @[PhiNode.scala 203:26]
  reg  in_data_valid_R_0; // @[PhiNode.scala 204:32]
  reg  in_data_valid_R_1; // @[PhiNode.scala 204:32]
  reg  enable_R_control; // @[PhiNode.scala 207:25]
  reg  enable_valid_R; // @[PhiNode.scala 208:31]
  reg [1:0] mask_R; // @[PhiNode.scala 211:23]
  reg  mask_valid_R; // @[PhiNode.scala 212:29]
  reg [1:0] state; // @[PhiNode.scala 216:22]
  reg  out_valid_R_0; // @[PhiNode.scala 219:49]
  reg  out_valid_R_1; // @[PhiNode.scala 219:49]
  reg  fire_R_0; // @[PhiNode.scala 221:44]
  reg  fire_R_1; // @[PhiNode.scala 221:44]
  wire  _T_10 = io_Mask_ready & io_Mask_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_10 | mask_valid_R; // @[PhiNode.scala 239:24]
  wire  _T_12 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_7 = _T_12 | enable_valid_R; // @[PhiNode.scala 246:26]
  wire  _T_14 = io_InData_0_ready & io_InData_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_14 | in_data_valid_R_0; // @[PhiNode.scala 254:29]
  wire  _T_16 = io_InData_1_ready & io_InData_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_16 | in_data_valid_R_1; // @[PhiNode.scala 254:29]
  wire [1:0] _T_19 = {mask_R[0],mask_R[1]}; // @[Cat.scala 29:58]
  wire  sel = _T_19[1]; // @[CircuitMath.scala 30:8]
  wire  _T_20 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_16 = _T_20 | fire_R_0; // @[PhiNode.scala 276:26]
  wire  _GEN_17 = _T_20 ? 1'h0 : out_valid_R_0; // @[PhiNode.scala 276:26]
  wire  _T_21 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_18 = _T_21 | fire_R_1; // @[PhiNode.scala 276:26]
  wire  _GEN_19 = _T_21 ? 1'h0 : out_valid_R_1; // @[PhiNode.scala 276:26]
  wire  fire_mask_0 = fire_R_0 | _T_20; // @[PhiNode.scala 283:74]
  wire  fire_mask_1 = fire_R_1 | _T_21; // @[PhiNode.scala 283:74]
  wire [63:0] _GEN_28 = sel ? in_data_R_1_data : 64'h0; // @[PhiNode.scala 312:12]
  wire  _T_41 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_42 = in_data_valid_R_0 & in_data_valid_R_1; // @[PhiNode.scala 286:30]
  wire  _T_43 = enable_valid_R & _T_42; // @[PhiNode.scala 327:27]
  reg [6:0] guard_index; // @[Counter.scala 29:33]
  wire [63:0] _GEN_30 = 7'h1 == guard_index ? 64'h1 : 64'h0; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_31 = 7'h2 == guard_index ? 64'h2 : _GEN_30; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_32 = 7'h3 == guard_index ? 64'h3 : _GEN_31; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_33 = 7'h4 == guard_index ? 64'h4 : _GEN_32; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_34 = 7'h5 == guard_index ? 64'h5 : _GEN_33; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_35 = 7'h6 == guard_index ? 64'h6 : _GEN_34; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_36 = 7'h7 == guard_index ? 64'h7 : _GEN_35; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_37 = 7'h8 == guard_index ? 64'h8 : _GEN_36; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_38 = 7'h9 == guard_index ? 64'h9 : _GEN_37; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_39 = 7'ha == guard_index ? 64'ha : _GEN_38; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_40 = 7'hb == guard_index ? 64'hb : _GEN_39; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_41 = 7'hc == guard_index ? 64'hc : _GEN_40; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_42 = 7'hd == guard_index ? 64'hd : _GEN_41; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_43 = 7'he == guard_index ? 64'he : _GEN_42; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_44 = 7'hf == guard_index ? 64'hf : _GEN_43; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_45 = 7'h10 == guard_index ? 64'h10 : _GEN_44; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_46 = 7'h11 == guard_index ? 64'h11 : _GEN_45; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_47 = 7'h12 == guard_index ? 64'h12 : _GEN_46; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_48 = 7'h13 == guard_index ? 64'h13 : _GEN_47; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_49 = 7'h14 == guard_index ? 64'h14 : _GEN_48; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_50 = 7'h15 == guard_index ? 64'h15 : _GEN_49; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_51 = 7'h16 == guard_index ? 64'h16 : _GEN_50; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_52 = 7'h17 == guard_index ? 64'h17 : _GEN_51; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_53 = 7'h18 == guard_index ? 64'h18 : _GEN_52; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_54 = 7'h19 == guard_index ? 64'h19 : _GEN_53; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_55 = 7'h1a == guard_index ? 64'h1a : _GEN_54; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_56 = 7'h1b == guard_index ? 64'h1b : _GEN_55; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_57 = 7'h1c == guard_index ? 64'h1c : _GEN_56; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_58 = 7'h1d == guard_index ? 64'h1d : _GEN_57; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_59 = 7'h1e == guard_index ? 64'h1e : _GEN_58; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_60 = 7'h1f == guard_index ? 64'h1f : _GEN_59; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_61 = 7'h20 == guard_index ? 64'h20 : _GEN_60; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_62 = 7'h21 == guard_index ? 64'h21 : _GEN_61; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_63 = 7'h22 == guard_index ? 64'h22 : _GEN_62; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_64 = 7'h23 == guard_index ? 64'h23 : _GEN_63; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_65 = 7'h24 == guard_index ? 64'h24 : _GEN_64; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_66 = 7'h25 == guard_index ? 64'h25 : _GEN_65; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_67 = 7'h26 == guard_index ? 64'h26 : _GEN_66; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_68 = 7'h27 == guard_index ? 64'h27 : _GEN_67; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_69 = 7'h28 == guard_index ? 64'h28 : _GEN_68; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_70 = 7'h29 == guard_index ? 64'h29 : _GEN_69; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_71 = 7'h2a == guard_index ? 64'h2a : _GEN_70; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_72 = 7'h2b == guard_index ? 64'h2b : _GEN_71; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_73 = 7'h2c == guard_index ? 64'h2c : _GEN_72; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_74 = 7'h2d == guard_index ? 64'h2d : _GEN_73; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_75 = 7'h2e == guard_index ? 64'h2e : _GEN_74; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_76 = 7'h2f == guard_index ? 64'h2f : _GEN_75; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_77 = 7'h30 == guard_index ? 64'h30 : _GEN_76; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_78 = 7'h31 == guard_index ? 64'h31 : _GEN_77; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_79 = 7'h32 == guard_index ? 64'h32 : _GEN_78; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_80 = 7'h33 == guard_index ? 64'h33 : _GEN_79; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_81 = 7'h34 == guard_index ? 64'h34 : _GEN_80; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_82 = 7'h35 == guard_index ? 64'h35 : _GEN_81; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_83 = 7'h36 == guard_index ? 64'h36 : _GEN_82; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_84 = 7'h37 == guard_index ? 64'h37 : _GEN_83; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_85 = 7'h38 == guard_index ? 64'h38 : _GEN_84; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_86 = 7'h39 == guard_index ? 64'h39 : _GEN_85; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_87 = 7'h3a == guard_index ? 64'h3a : _GEN_86; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_88 = 7'h3b == guard_index ? 64'h3b : _GEN_87; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_89 = 7'h3c == guard_index ? 64'h3c : _GEN_88; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_90 = 7'h3d == guard_index ? 64'h3d : _GEN_89; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_91 = 7'h3e == guard_index ? 64'h3e : _GEN_90; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_92 = 7'h3f == guard_index ? 64'h3f : _GEN_91; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_93 = 7'h40 == guard_index ? 64'h40 : _GEN_92; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_94 = 7'h41 == guard_index ? 64'h41 : _GEN_93; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_95 = 7'h42 == guard_index ? 64'h42 : _GEN_94; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_96 = 7'h43 == guard_index ? 64'h43 : _GEN_95; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_97 = 7'h44 == guard_index ? 64'h44 : _GEN_96; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_98 = 7'h45 == guard_index ? 64'h45 : _GEN_97; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_99 = 7'h46 == guard_index ? 64'h46 : _GEN_98; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_100 = 7'h47 == guard_index ? 64'h47 : _GEN_99; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_101 = 7'h48 == guard_index ? 64'h48 : _GEN_100; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_102 = 7'h49 == guard_index ? 64'h49 : _GEN_101; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_103 = 7'h4a == guard_index ? 64'h4a : _GEN_102; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_104 = 7'h4b == guard_index ? 64'h4b : _GEN_103; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_105 = 7'h4c == guard_index ? 64'h4c : _GEN_104; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_106 = 7'h4d == guard_index ? 64'h4d : _GEN_105; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_107 = 7'h4e == guard_index ? 64'h4e : _GEN_106; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_108 = 7'h4f == guard_index ? 64'h4f : _GEN_107; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_109 = 7'h50 == guard_index ? 64'h50 : _GEN_108; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_110 = 7'h51 == guard_index ? 64'h51 : _GEN_109; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_111 = 7'h52 == guard_index ? 64'h52 : _GEN_110; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_112 = 7'h53 == guard_index ? 64'h53 : _GEN_111; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_113 = 7'h54 == guard_index ? 64'h54 : _GEN_112; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_114 = 7'h55 == guard_index ? 64'h55 : _GEN_113; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_115 = 7'h56 == guard_index ? 64'h56 : _GEN_114; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_116 = 7'h57 == guard_index ? 64'h57 : _GEN_115; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_117 = 7'h58 == guard_index ? 64'h58 : _GEN_116; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_118 = 7'h59 == guard_index ? 64'h59 : _GEN_117; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_119 = 7'h5a == guard_index ? 64'h5a : _GEN_118; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_120 = 7'h5b == guard_index ? 64'h5b : _GEN_119; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_121 = 7'h5c == guard_index ? 64'h5c : _GEN_120; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_122 = 7'h5d == guard_index ? 64'h5d : _GEN_121; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_123 = 7'h5e == guard_index ? 64'h5e : _GEN_122; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_124 = 7'h5f == guard_index ? 64'h5f : _GEN_123; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_125 = 7'h60 == guard_index ? 64'h60 : _GEN_124; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_126 = 7'h61 == guard_index ? 64'h61 : _GEN_125; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_127 = 7'h62 == guard_index ? 64'h62 : _GEN_126; // @[PhiNode.scala 336:38]
  wire [63:0] _GEN_128 = 7'h63 == guard_index ? 64'h63 : _GEN_127; // @[PhiNode.scala 336:38]
  wire  _T_45 = _GEN_28 != _GEN_128; // @[PhiNode.scala 336:38]
  wire  _T_34 = _T_43 & enable_R_control; // @[PhiNode.scala 290:38]
  wire  _T_35 = state == 2'h0; // @[PhiNode.scala 290:67]
  wire  _T_36 = _T_34 & _T_35; // @[PhiNode.scala 290:58]
  wire  _T_38 = guard_index == 7'h63; // @[Counter.scala 38:24]
  wire [6:0] _T_40 = guard_index + 7'h1; // @[Counter.scala 39:22]
  wire [4:0] _GEN_27 = sel ? in_data_R_1_taskID : in_data_R_0_taskID; // @[PhiNode.scala 312:12]
  wire  _T_47 = ~reset; // @[PhiNode.scala 341:23]
  wire [4:0] _GEN_139 = sel ? io_InData_1_bits_taskID : io_InData_0_bits_taskID; // @[PhiNode.scala 350:19]
  wire  _GEN_144 = _T_43 | _GEN_17; // @[PhiNode.scala 327:66]
  wire  _GEN_145 = _T_43 | _GEN_19; // @[PhiNode.scala 327:66]
  wire  _T_52 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_53 = fire_mask_0 & fire_mask_1; // @[PhiNode.scala 364:31]
  wire  _T_57 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_184 = _T_57 ? 64'h0 : _GEN_28; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_225 = _T_52 ? _GEN_28 : _GEN_184; // @[Conditional.scala 39:67]
  wire  _GEN_258 = _T_41 & _T_43; // @[PhiNode.scala 341:23]
  wire  _GEN_259 = _GEN_258 & enable_R_control; // @[PhiNode.scala 341:23]
  wire  _GEN_260 = _GEN_259 & _T_45; // @[PhiNode.scala 341:23]
  wire  _GEN_264 = ~enable_R_control; // @[PhiNode.scala 357:19]
  wire  _GEN_265 = _GEN_258 & _GEN_264; // @[PhiNode.scala 357:19]
  assign io_enable_ready = ~enable_valid_R; // @[PhiNode.scala 245:19]
  assign io_InData_0_ready = ~in_data_valid_R_0; // @[PhiNode.scala 253:24]
  assign io_InData_1_ready = ~in_data_valid_R_1; // @[PhiNode.scala 253:24]
  assign io_Mask_ready = ~mask_valid_R; // @[PhiNode.scala 238:17]
  assign io_Out_0_valid = out_valid_R_0; // @[PhiNode.scala 322:21]
  assign io_Out_0_bits_data = _T_41 ? _GEN_28 : _GEN_225; // @[PhiNode.scala 321:20 PhiNode.scala 392:42]
  assign io_Out_1_valid = out_valid_R_1; // @[PhiNode.scala 322:21]
  assign io_Out_1_bits_data = _T_41 ? _GEN_28 : _GEN_225; // @[PhiNode.scala 321:20 PhiNode.scala 392:42]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  in_data_R_0_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  in_data_R_1_taskID = _RAND_2[4:0];
  _RAND_3 = {2{`RANDOM}};
  in_data_R_1_data = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  in_data_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  in_data_valid_R_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  enable_R_control = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  enable_valid_R = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mask_R = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  mask_valid_R = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  out_valid_R_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  fire_R_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  fire_R_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  guard_index = _RAND_15[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      in_data_R_0_taskID <= 5'h0;
    end else if (_T_41) begin
      if (_T_14) begin
        in_data_R_0_taskID <= io_InData_0_bits_taskID;
      end
    end else if (_T_52) begin
      if (_T_53) begin
        in_data_R_0_taskID <= 5'h0;
      end else if (_T_14) begin
        in_data_R_0_taskID <= io_InData_0_bits_taskID;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        in_data_R_0_taskID <= 5'h0;
      end else if (_T_14) begin
        in_data_R_0_taskID <= io_InData_0_bits_taskID;
      end
    end else if (_T_14) begin
      in_data_R_0_taskID <= io_InData_0_bits_taskID;
    end
    if (reset) begin
      in_data_R_1_taskID <= 5'h0;
    end else if (_T_41) begin
      if (_T_16) begin
        in_data_R_1_taskID <= io_InData_1_bits_taskID;
      end
    end else if (_T_52) begin
      if (_T_53) begin
        in_data_R_1_taskID <= 5'h0;
      end else if (_T_16) begin
        in_data_R_1_taskID <= io_InData_1_bits_taskID;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        in_data_R_1_taskID <= 5'h0;
      end else if (_T_16) begin
        in_data_R_1_taskID <= io_InData_1_bits_taskID;
      end
    end else if (_T_16) begin
      in_data_R_1_taskID <= io_InData_1_bits_taskID;
    end
    if (reset) begin
      in_data_R_1_data <= 64'h0;
    end else if (_T_41) begin
      if (_T_16) begin
        in_data_R_1_data <= io_InData_1_bits_data;
      end
    end else if (_T_52) begin
      if (_T_53) begin
        in_data_R_1_data <= 64'h0;
      end else if (_T_16) begin
        in_data_R_1_data <= io_InData_1_bits_data;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        in_data_R_1_data <= 64'h0;
      end else if (_T_16) begin
        in_data_R_1_data <= io_InData_1_bits_data;
      end
    end else if (_T_16) begin
      in_data_R_1_data <= io_InData_1_bits_data;
    end
    if (reset) begin
      in_data_valid_R_0 <= 1'h0;
    end else if (_T_41) begin
      in_data_valid_R_0 <= _GEN_11;
    end else if (_T_52) begin
      if (_T_53) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_11;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_11;
      end
    end else begin
      in_data_valid_R_0 <= _GEN_11;
    end
    if (reset) begin
      in_data_valid_R_1 <= 1'h0;
    end else if (_T_41) begin
      in_data_valid_R_1 <= _GEN_15;
    end else if (_T_52) begin
      if (_T_53) begin
        in_data_valid_R_1 <= 1'h0;
      end else begin
        in_data_valid_R_1 <= _GEN_15;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        in_data_valid_R_1 <= 1'h0;
      end else begin
        in_data_valid_R_1 <= _GEN_15;
      end
    end else begin
      in_data_valid_R_1 <= _GEN_15;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_41) begin
      if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_52) begin
      if (_T_53) begin
        enable_R_control <= 1'h0;
      end else if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        enable_R_control <= 1'h0;
      end else if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_12) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_41) begin
      enable_valid_R <= _GEN_7;
    end else if (_T_52) begin
      if (_T_53) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_7;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_7;
      end
    end else begin
      enable_valid_R <= _GEN_7;
    end
    if (reset) begin
      mask_R <= 2'h0;
    end else if (_T_41) begin
      if (_T_10) begin
        mask_R <= io_Mask_bits;
      end
    end else if (_T_52) begin
      if (_T_53) begin
        mask_R <= 2'h0;
      end else if (_T_10) begin
        mask_R <= io_Mask_bits;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        mask_R <= 2'h0;
      end else if (_T_10) begin
        mask_R <= io_Mask_bits;
      end
    end else if (_T_10) begin
      mask_R <= io_Mask_bits;
    end
    if (reset) begin
      mask_valid_R <= 1'h0;
    end else if (_T_41) begin
      mask_valid_R <= _GEN_3;
    end else if (_T_52) begin
      if (_T_53) begin
        mask_valid_R <= 1'h0;
      end else begin
        mask_valid_R <= _GEN_3;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        mask_valid_R <= 1'h0;
      end else begin
        mask_valid_R <= _GEN_3;
      end
    end else begin
      mask_valid_R <= _GEN_3;
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_41) begin
      if (_T_43) begin
        if (enable_R_control) begin
          state <= 2'h1;
        end else begin
          state <= 2'h2;
        end
      end
    end else if (_T_52) begin
      if (_T_53) begin
        state <= 2'h0;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        state <= 2'h0;
      end
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_41) begin
      out_valid_R_0 <= _GEN_144;
    end else if (_T_20) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_1 <= 1'h0;
    end else if (_T_41) begin
      out_valid_R_1 <= _GEN_145;
    end else if (_T_21) begin
      out_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      fire_R_0 <= 1'h0;
    end else if (_T_41) begin
      fire_R_0 <= _GEN_16;
    end else if (_T_52) begin
      if (_T_53) begin
        fire_R_0 <= 1'h0;
      end else begin
        fire_R_0 <= _GEN_16;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        fire_R_0 <= 1'h0;
      end else begin
        fire_R_0 <= _GEN_16;
      end
    end else begin
      fire_R_0 <= _GEN_16;
    end
    if (reset) begin
      fire_R_1 <= 1'h0;
    end else if (_T_41) begin
      fire_R_1 <= _GEN_18;
    end else if (_T_52) begin
      if (_T_53) begin
        fire_R_1 <= 1'h0;
      end else begin
        fire_R_1 <= _GEN_18;
      end
    end else if (_T_57) begin
      if (_T_53) begin
        fire_R_1 <= 1'h0;
      end else begin
        fire_R_1 <= _GEN_18;
      end
    end else begin
      fire_R_1 <= _GEN_18;
    end
    if (reset) begin
      guard_index <= 7'h0;
    end else if (_T_36) begin
      if (_T_38) begin
        guard_index <= 7'h0;
      end else begin
        guard_index <= _T_40;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_47) begin
          $fwrite(32'h80000002,"[DEBUG] [Relu] [TID->%d] [PHI] phij_03212 Produced value: %d, correct value: %d\n",_GEN_27,_GEN_28,_GEN_128); // @[PhiNode.scala 341:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_259 & _T_47) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [PHI] [Name: phij_03212] [ID: 12] [Pred: %d] [Out: %d] [Cycle: %d]\n",_GEN_139,enable_R_control,_GEN_28,cycleCount); // @[PhiNode.scala 350:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_265 & _T_47) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [PHI] [Name: phij_03212] [ID: 12] [Pred: %d] [Out: %d] [Cycle: %d]\n",_GEN_139,enable_R_control,_GEN_28,cycleCount); // @[PhiNode.scala 357:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UALU_1(
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_out
);
  wire [127:0] _T_24 = io_in1 * io_in2; // @[Alu.scala 194:32]
  assign io_out = _T_24[63:0]; // @[Alu.scala 235:10]
endmodule
module ComputeNode_1(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid,
  input  [63:0] io_RightIO_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_in2; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg [63:0] right_R_data; // @[ComputeNode.scala 57:24]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 91:19]
  wire  _T_12 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_12 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_14 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_14 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_32 = ~state; // @[Conditional.scala 37:30]
  wire  _T_33 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_34 = _T_33 & right_valid_R; // @[ComputeNode.scala 144:43]
  reg [2:0] guard_index; // @[Counter.scala 29:33]
  wire [63:0] _GEN_19 = 3'h1 == guard_index ? 64'h8 : 64'h0; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_20 = 3'h2 == guard_index ? 64'h10 : _GEN_19; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_21 = 3'h3 == guard_index ? 64'h18 : _GEN_20; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_22 = 3'h4 == guard_index ? 64'h20 : _GEN_21; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_23 = 3'h5 == guard_index ? 64'h28 : _GEN_22; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_24 = 3'h6 == guard_index ? 64'h30 : _GEN_23; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_25 = 3'h7 == guard_index ? 64'h38 : _GEN_24; // @[ComputeNode.scala 151:26]
  wire  _T_36 = FU_io_out != _GEN_25; // @[ComputeNode.scala 151:26]
  wire  _T_22 = right_valid_R & left_valid_R; // @[ComputeNode.scala 71:19]
  wire  _T_23 = enable_valid_R & _T_22; // @[ComputeNode.scala 75:20]
  wire  _T_24 = _T_23 & enable_R_control; // @[ComputeNode.scala 75:38]
  wire  _T_26 = _T_24 & _T_32; // @[ComputeNode.scala 75:58]
  wire [2:0] _T_30 = guard_index + 3'h1; // @[Counter.scala 39:22]
  wire  _T_39 = ~reset; // @[ComputeNode.scala 157:21]
  wire [63:0] _T_40_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_28 = _T_36 ? _GEN_25 : _T_40_data; // @[ComputeNode.scala 151:61]
  wire  _T_42 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire [63:0] _GEN_33 = _T_34 ? _GEN_28 : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_36 = _T_34 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_40 = _T_34 | state; // @[ComputeNode.scala 144:81]
  wire  _T_47 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _GEN_64 = _T_32 & _T_34; // @[ComputeNode.scala 157:21]
  wire  _GEN_65 = _GEN_64 & _T_36; // @[ComputeNode.scala 157:21]
  UALU_1 FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_in2(FU_io_in2),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_32 ? _GEN_36 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_data = _T_32 ? _GEN_33 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 154:35 ComputeNode.scala 162:35]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
  assign FU_io_in2 = right_R_data; // @[ComputeNode.scala 102:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  left_R_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  left_valid_R = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  right_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  right_valid_R = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
  _RAND_11 = {2{`RANDOM}};
  out_data_R = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  guard_index = _RAND_12[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_32) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_47) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_32) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_47) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_32) begin
      if (_T_34) begin
        out_valid_R_0 <= _T_42;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_12) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_32) begin
      if (_T_34) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_11;
      end
    end else begin
      left_valid_R <= _GEN_11;
    end
    if (reset) begin
      right_R_data <= 64'h0;
    end else if (_T_14) begin
      right_R_data <= io_RightIO_bits_data;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_32) begin
      if (_T_34) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_15;
      end
    end else begin
      right_valid_R <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_32) begin
      state <= _GEN_40;
    end else if (state) begin
      if (_T_47) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_32) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_47) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    if (reset) begin
      guard_index <= 3'h0;
    end else if (_T_26) begin
      guard_index <= _T_30;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_39) begin
          $fwrite(32'h80000002,"[LOG] [DEBUG] [Relu] [TID: %d] [COMPUTE] [binaryOp_mul13]  [Out:%d ] [Correct:%d ] [Cycle: %d]\n",taskID,FU_io_out,_GEN_25,cycleCount); // @[ComputeNode.scala 157:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_64 & _T_39) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: binaryOp_mul13] [ID: 13] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: mul] [Cycle: %d]\n",taskID,enable_R_control,left_R_data,right_R_data,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UBranchNode_2(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_0_ready,
  output       io_Out_0_valid,
  output [4:0] io_Out_0_bits_taskID,
  output       io_Out_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 592:31]
  reg  enable_R_control; // @[HandShaking.scala 592:31]
  reg  enable_valid_R; // @[HandShaking.scala 593:31]
  reg  out_ready_R_0; // @[HandShaking.scala 605:28]
  reg  out_valid_R_0; // @[HandShaking.scala 606:28]
  wire  _T_4 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_6 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_10 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  state; // @[BranchNode.scala 588:22]
  wire  _T_11 = ~state; // @[Conditional.scala 37:30]
  wire  _T_14 = _T_4 ^ 1'h1; // @[HandShaking.scala 729:72]
  wire  _T_16 = ~reset; // @[BranchNode.scala 616:17]
  wire  _GEN_8 = enable_valid_R | state; // @[BranchNode.scala 611:46]
  wire  _GEN_10 = enable_valid_R | out_valid_R_0; // @[BranchNode.scala 611:46]
  wire  _T_18 = &out_ready_R_0; // @[HandShaking.scala 725:24]
  wire  _T_19 = &io_Out_0_ready; // @[HandShaking.scala 725:50]
  wire  _T_20 = _T_18 | _T_19; // @[HandShaking.scala 725:29]
  wire  _GEN_31 = _T_11 & enable_valid_R; // @[BranchNode.scala 616:17]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 650:19]
  assign io_Out_0_valid = _T_11 ? _GEN_10 : out_valid_R_0; // @[HandShaking.scala 630:21 BranchNode.scala 614:32]
  assign io_Out_0_bits_taskID = enable_R_taskID; // @[BranchNode.scala 607:25]
  assign io_Out_0_bits_control = enable_R_control; // @[BranchNode.scala 607:25]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {1{`RANDOM}};
  state = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_R_taskID <= 5'h0;
      end else if (_T_6) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_6) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_R_control <= 1'h0;
      end else if (_T_6) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_6) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_11) begin
      if (_T_6) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_20) begin
        enable_valid_R <= 1'h0;
      end else if (_T_6) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_6) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_11) begin
      if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_20) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_4) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_11) begin
      if (enable_valid_R) begin
        out_valid_R_0 <= _T_14;
      end else if (_T_4) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_4) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_10;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_11) begin
      state <= _GEN_8;
    end else if (state) begin
      if (_T_20) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_31 & _T_16) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [UBR] [Name: br_14] [ID: 14][Out: %d] [Cycle: %d]\n",enable_R_taskID,enable_R_control,cycleCount); // @[BranchNode.scala 616:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UALU_2(
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_out
);
  assign io_out = io_in1 + io_in2; // @[Alu.scala 235:10]
endmodule
module ComputeNode_2(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [4:0]  io_Out_0_bits_taskID,
  output [63:0] io_Out_0_bits_data,
  input         io_Out_1_ready,
  output        io_Out_1_valid,
  output [63:0] io_Out_1_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_in2; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_ready_R_1; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  reg  out_valid_R_1; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_2 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _T_4 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_8 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg [63:0] right_R_data; // @[ComputeNode.scala 57:24]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 91:19]
  wire  _T_13 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_13 = _T_13 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_15 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_17 = _T_15 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_34 = ~state; // @[Conditional.scala 37:30]
  wire  _T_35 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_36 = _T_35 & right_valid_R; // @[ComputeNode.scala 144:43]
  reg [2:0] guard_index; // @[Counter.scala 29:33]
  wire [63:0] _GEN_21 = 3'h1 == guard_index ? 64'h2 : 64'h1; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_22 = 3'h2 == guard_index ? 64'h3 : _GEN_21; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_23 = 3'h3 == guard_index ? 64'h4 : _GEN_22; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_24 = 3'h4 == guard_index ? 64'h5 : _GEN_23; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_25 = 3'h5 == guard_index ? 64'h6 : _GEN_24; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_26 = 3'h6 == guard_index ? 64'h7 : _GEN_25; // @[ComputeNode.scala 151:26]
  wire [63:0] _GEN_27 = 3'h7 == guard_index ? 64'h8 : _GEN_26; // @[ComputeNode.scala 151:26]
  wire  _T_38 = FU_io_out != _GEN_27; // @[ComputeNode.scala 151:26]
  wire  _T_23 = right_valid_R & left_valid_R; // @[ComputeNode.scala 71:19]
  wire  _T_24 = enable_valid_R & _T_23; // @[ComputeNode.scala 75:20]
  wire  _T_25 = _T_24 & enable_R_control; // @[ComputeNode.scala 75:38]
  wire  _T_27 = _T_25 & _T_34; // @[ComputeNode.scala 75:58]
  wire [2:0] _T_31 = guard_index + 3'h1; // @[Counter.scala 39:22]
  wire  _T_42 = ~reset; // @[ComputeNode.scala 157:21]
  wire [63:0] _T_43_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_30 = _T_38 ? _GEN_27 : _T_43_data; // @[ComputeNode.scala 151:61]
  wire  _T_47 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_48 = _T_2 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire [63:0] _GEN_38 = _T_36 ? _GEN_30 : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_44 = _T_36 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_45 = _T_36 | out_valid_R_1; // @[ComputeNode.scala 144:81]
  wire  _GEN_50 = _T_36 | state; // @[ComputeNode.scala 144:81]
  wire  _T_54 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _T_55 = out_ready_R_1 | _T_2; // @[HandShaking.scala 251:83]
  wire  _T_56 = _T_54 & _T_55; // @[HandShaking.scala 252:27]
  wire  _GEN_82 = _T_34 & _T_36; // @[ComputeNode.scala 157:21]
  wire  _GEN_83 = _GEN_82 & _T_38; // @[ComputeNode.scala 157:21]
  UALU_2 FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_in2(FU_io_in2),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_34 ? _GEN_44 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 137:25 ComputeNode.scala 154:35 ComputeNode.scala 162:35]
  assign io_Out_0_bits_data = _T_34 ? _GEN_38 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 154:35 ComputeNode.scala 162:35]
  assign io_Out_1_valid = _T_34 ? _GEN_45 : out_valid_R_1; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_1_bits_data = _T_34 ? _GEN_38 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 154:35 ComputeNode.scala 162:35]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
  assign FU_io_in2 = right_R_data; // @[ComputeNode.scala 102:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_ready_R_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  out_valid_R_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  cycleCount = _RAND_7[14:0];
  _RAND_8 = {2{`RANDOM}};
  left_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  left_valid_R = _RAND_9[0:0];
  _RAND_10 = {2{`RANDOM}};
  right_R_data = _RAND_10[63:0];
  _RAND_11 = {1{`RANDOM}};
  right_valid_R = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  state = _RAND_12[0:0];
  _RAND_13 = {2{`RANDOM}};
  out_data_R = _RAND_13[63:0];
  _RAND_14 = {1{`RANDOM}};
  guard_index = _RAND_14[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_4) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_4) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_34) begin
      if (_T_4) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_56) begin
        enable_valid_R <= 1'h0;
      end else if (_T_4) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_4) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_34) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_56) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_ready_R_1 <= 1'h0;
    end else if (_T_34) begin
      if (_T_2) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (state) begin
      if (_T_56) begin
        out_ready_R_1 <= 1'h0;
      end else if (_T_2) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (_T_2) begin
      out_ready_R_1 <= io_Out_1_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_34) begin
      if (_T_36) begin
        out_valid_R_0 <= _T_47;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_1 <= 1'h0;
    end else if (_T_34) begin
      if (_T_36) begin
        out_valid_R_1 <= _T_48;
      end else if (_T_2) begin
        out_valid_R_1 <= 1'h0;
      end
    end else if (_T_2) begin
      out_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_8;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_13) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_34) begin
      if (_T_36) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_13;
      end
    end else begin
      left_valid_R <= _GEN_13;
    end
    if (reset) begin
      right_R_data <= 64'h0;
    end else if (_T_15) begin
      right_R_data <= 64'h1;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_34) begin
      if (_T_36) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_17;
      end
    end else begin
      right_valid_R <= _GEN_17;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_34) begin
      state <= _GEN_50;
    end else if (state) begin
      if (_T_56) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_34) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_56) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    if (reset) begin
      guard_index <= 3'h0;
    end else if (_T_27) begin
      guard_index <= _T_31;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_83 & _T_42) begin
          $fwrite(32'h80000002,"[LOG] [DEBUG] [Relu] [TID: %d] [COMPUTE] [binaryOp_inc1316]  [Out:%d ] [Correct:%d ] [Cycle: %d]\n",taskID,FU_io_out,_GEN_27,cycleCount); // @[ComputeNode.scala 157:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_82 & _T_42) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: binaryOp_inc1316] [ID: 16] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: add] [Cycle: %d]\n",taskID,enable_R_control,left_R_data,right_R_data,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ComputeNode_3(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [4:0]  io_Out_0_bits_taskID,
  output [63:0] io_Out_0_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid,
  input  [63:0] io_RightIO_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_in2; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg [63:0] right_R_data; // @[ComputeNode.scala 57:24]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 91:19]
  wire  _T_12 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_12 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_14 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_14 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_22 = ~state; // @[ComputeNode.scala 75:67]
  wire  _T_27 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_28 = _T_27 & right_valid_R; // @[ComputeNode.scala 144:43]
  wire  _T_32 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_34 = ~reset; // @[ComputeNode.scala 174:17]
  wire [63:0] _T_30_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_17 = _T_28 ? _T_30_data : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_20 = _T_28 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_24 = _T_28 | state; // @[ComputeNode.scala 144:81]
  wire  _T_37 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _GEN_47 = _T_22 & _T_28; // @[ComputeNode.scala 174:17]
  UALU FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_in2(FU_io_in2),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_22 ? _GEN_20 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_Out_0_bits_data = _T_22 ? _GEN_17 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
  assign FU_io_in2 = right_R_data; // @[ComputeNode.scala 102:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  left_R_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  left_valid_R = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  right_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  right_valid_R = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
  _RAND_11 = {2{`RANDOM}};
  out_data_R = _RAND_11[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_37) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_37) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        out_valid_R_0 <= _T_32;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_12) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_11;
      end
    end else begin
      left_valid_R <= _GEN_11;
    end
    if (reset) begin
      right_R_data <= 64'h0;
    end else if (_T_14) begin
      right_R_data <= io_RightIO_bits_data;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_15;
      end
    end else begin
      right_valid_R <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_22) begin
      state <= _GEN_24;
    end else if (state) begin
      if (_T_37) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_22) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_37) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_47 & _T_34) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: icmp_exitcond3310] [ID: 10] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: eq] [Cycle: %d]\n",taskID,enable_R_control,left_R_data,right_R_data,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module CBranchNodeVariable_1(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  output        io_CmpIO_ready,
  input         io_CmpIO_valid,
  input  [4:0]  io_CmpIO_bits_taskID,
  input  [63:0] io_CmpIO_bits_data,
  input         io_TrueOutput_0_ready,
  output        io_TrueOutput_0_valid,
  output        io_TrueOutput_0_bits_control,
  input         io_FalseOutput_0_ready,
  output        io_FalseOutput_0_valid,
  output [4:0]  io_FalseOutput_0_bits_taskID,
  output        io_FalseOutput_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] cmp_R_taskID; // @[BranchNode.scala 1182:22]
  reg  cmp_R_control; // @[BranchNode.scala 1182:22]
  reg  cmp_valid; // @[BranchNode.scala 1183:26]
  reg [4:0] enable_R_taskID; // @[BranchNode.scala 1186:25]
  reg  enable_R_control; // @[BranchNode.scala 1186:25]
  reg  enable_valid_R; // @[BranchNode.scala 1187:31]
  reg  output_true_R_control; // @[BranchNode.scala 1193:30]
  reg  output_true_valid_R_0; // @[BranchNode.scala 1194:54]
  reg  fire_true_R_0; // @[BranchNode.scala 1195:46]
  reg [4:0] output_false_R_taskID; // @[BranchNode.scala 1197:31]
  reg  output_false_R_control; // @[BranchNode.scala 1197:31]
  reg  output_false_valid_R_0; // @[BranchNode.scala 1198:56]
  reg  fire_false_R_0; // @[BranchNode.scala 1199:48]
  wire [4:0] task_id = enable_R_taskID | cmp_R_taskID; // @[BranchNode.scala 1201:33]
  wire  _T_9 = io_CmpIO_ready & io_CmpIO_valid; // @[Decoupled.scala 40:37]
  wire  _T_10 = |io_CmpIO_bits_data; // @[BranchNode.scala 1207:44]
  wire  _GEN_4 = _T_9 | cmp_valid; // @[BranchNode.scala 1206:23]
  wire  _T_12 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_8 = _T_12 | enable_valid_R; // @[BranchNode.scala 1232:24]
  wire  true_output = enable_R_control & cmp_R_control; // @[BranchNode.scala 1238:38]
  wire  _T_13 = ~cmp_R_control; // @[BranchNode.scala 1239:43]
  wire  false_output = enable_R_control & _T_13; // @[BranchNode.scala 1239:39]
  wire  _T_14 = io_TrueOutput_0_ready & io_TrueOutput_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = _T_14 | fire_true_R_0; // @[BranchNode.scala 1250:33]
  wire  _GEN_10 = _T_14 ? 1'h0 : output_true_valid_R_0; // @[BranchNode.scala 1250:33]
  wire  _T_15 = io_FalseOutput_0_ready & io_FalseOutput_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_15 | fire_false_R_0; // @[BranchNode.scala 1266:34]
  wire  _GEN_12 = _T_15 ? 1'h0 : output_false_valid_R_0; // @[BranchNode.scala 1266:34]
  reg  state; // @[BranchNode.scala 1278:22]
  wire  _T_16 = ~state; // @[Conditional.scala 37:30]
  wire  _T_17 = enable_valid_R & cmp_valid; // @[BranchNode.scala 1283:27]
  wire  _T_20 = ~reset; // @[BranchNode.scala 1293:21]
  wire  _GEN_13 = _T_17 | _GEN_10; // @[BranchNode.scala 1283:65]
  wire  _GEN_14 = _T_17 | _GEN_12; // @[BranchNode.scala 1283:65]
  wire  _GEN_15 = _T_17 | state; // @[BranchNode.scala 1283:65]
  wire  _T_26 = fire_true_R_0 & fire_false_R_0; // @[BranchNode.scala 1313:27]
  wire  _GEN_73 = _T_16 & _T_17; // @[BranchNode.scala 1293:21]
  wire  _GEN_74 = _GEN_73 & enable_R_control; // @[BranchNode.scala 1293:21]
  wire  _GEN_75 = _GEN_74 & cmp_R_control; // @[BranchNode.scala 1293:21]
  wire  _GEN_79 = _GEN_74 & _T_13; // @[BranchNode.scala 1298:21]
  wire  _GEN_81 = ~enable_R_control; // @[BranchNode.scala 1304:19]
  wire  _GEN_82 = _GEN_73 & _GEN_81; // @[BranchNode.scala 1304:19]
  assign io_enable_ready = ~enable_valid_R; // @[BranchNode.scala 1231:19]
  assign io_CmpIO_ready = ~cmp_valid; // @[BranchNode.scala 1205:18]
  assign io_TrueOutput_0_valid = output_true_valid_R_0; // @[BranchNode.scala 1246:28]
  assign io_TrueOutput_0_bits_control = output_true_R_control; // @[BranchNode.scala 1245:27]
  assign io_FalseOutput_0_valid = output_false_valid_R_0; // @[BranchNode.scala 1262:29]
  assign io_FalseOutput_0_bits_taskID = output_false_R_taskID; // @[BranchNode.scala 1261:28]
  assign io_FalseOutput_0_bits_control = output_false_R_control; // @[BranchNode.scala 1261:28]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  cmp_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  cmp_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cmp_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  enable_R_taskID = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  enable_R_control = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  enable_valid_R = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  output_true_R_control = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  output_true_valid_R_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  fire_true_R_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  output_false_R_taskID = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  output_false_R_control = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  output_false_valid_R_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  fire_false_R_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  state = _RAND_14[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      cmp_R_taskID <= 5'h0;
    end else if (_T_16) begin
      if (_T_9) begin
        cmp_R_taskID <= io_CmpIO_bits_taskID;
      end
    end else if (state) begin
      if (_T_26) begin
        cmp_R_taskID <= 5'h0;
      end else if (_T_9) begin
        cmp_R_taskID <= io_CmpIO_bits_taskID;
      end
    end else if (_T_9) begin
      cmp_R_taskID <= io_CmpIO_bits_taskID;
    end
    if (reset) begin
      cmp_R_control <= 1'h0;
    end else if (_T_16) begin
      if (_T_9) begin
        cmp_R_control <= _T_10;
      end
    end else if (state) begin
      if (_T_26) begin
        cmp_R_control <= 1'h0;
      end else if (_T_9) begin
        cmp_R_control <= _T_10;
      end
    end else if (_T_9) begin
      cmp_R_control <= _T_10;
    end
    if (reset) begin
      cmp_valid <= 1'h0;
    end else if (_T_16) begin
      cmp_valid <= _GEN_4;
    end else if (state) begin
      if (_T_26) begin
        cmp_valid <= 1'h0;
      end else begin
        cmp_valid <= _GEN_4;
      end
    end else begin
      cmp_valid <= _GEN_4;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_16) begin
      if (_T_12) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (state) begin
      if (_T_26) begin
        enable_R_taskID <= 5'h0;
      end else if (_T_12) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_12) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_16) begin
      if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (_T_26) begin
        enable_R_control <= 1'h0;
      end else if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_12) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_16) begin
      enable_valid_R <= _GEN_8;
    end else if (state) begin
      if (_T_26) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_8;
      end
    end else begin
      enable_valid_R <= _GEN_8;
    end
    if (reset) begin
      output_true_R_control <= 1'h0;
    end else if (_T_16) begin
      output_true_R_control <= true_output;
    end else if (state) begin
      if (_T_26) begin
        output_true_R_control <= 1'h0;
      end else begin
        output_true_R_control <= true_output;
      end
    end else begin
      output_true_R_control <= true_output;
    end
    if (reset) begin
      output_true_valid_R_0 <= 1'h0;
    end else if (_T_16) begin
      output_true_valid_R_0 <= _GEN_13;
    end else if (state) begin
      if (_T_26) begin
        output_true_valid_R_0 <= 1'h0;
      end else if (_T_14) begin
        output_true_valid_R_0 <= 1'h0;
      end
    end else if (_T_14) begin
      output_true_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_true_R_0 <= 1'h0;
    end else if (_T_16) begin
      fire_true_R_0 <= _GEN_9;
    end else if (state) begin
      if (_T_26) begin
        fire_true_R_0 <= 1'h0;
      end else begin
        fire_true_R_0 <= _GEN_9;
      end
    end else begin
      fire_true_R_0 <= _GEN_9;
    end
    if (reset) begin
      output_false_R_taskID <= 5'h0;
    end else if (_T_16) begin
      output_false_R_taskID <= task_id;
    end else if (state) begin
      if (_T_26) begin
        output_false_R_taskID <= 5'h0;
      end else begin
        output_false_R_taskID <= task_id;
      end
    end else begin
      output_false_R_taskID <= task_id;
    end
    if (reset) begin
      output_false_R_control <= 1'h0;
    end else if (_T_16) begin
      output_false_R_control <= false_output;
    end else if (state) begin
      if (_T_26) begin
        output_false_R_control <= 1'h0;
      end else begin
        output_false_R_control <= false_output;
      end
    end else begin
      output_false_R_control <= false_output;
    end
    if (reset) begin
      output_false_valid_R_0 <= 1'h0;
    end else if (_T_16) begin
      output_false_valid_R_0 <= _GEN_14;
    end else if (state) begin
      if (_T_26) begin
        output_false_valid_R_0 <= 1'h0;
      end else if (_T_15) begin
        output_false_valid_R_0 <= 1'h0;
      end
    end else if (_T_15) begin
      output_false_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_false_R_0 <= 1'h0;
    end else if (_T_16) begin
      fire_false_R_0 <= _GEN_11;
    end else if (state) begin
      if (_T_26) begin
        fire_false_R_0 <= 1'h0;
      end else begin
        fire_false_R_0 <= _GEN_11;
      end
    end else begin
      fire_false_R_0 <= _GEN_11;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_16) begin
      state <= _GEN_15;
    end else if (state) begin
      if (_T_26) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_18] [ID: 18] [Out: T:1 - F:0] [Cycle: %d]\n",task_id,cycleCount); // @[BranchNode.scala 1293:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_18] [ID: 18] [Out: T:0 - F:1] [Cycle: %d]\n",task_id,cycleCount); // @[BranchNode.scala 1298:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_82 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_18] [ID: 18] [Out: T:0 - F:0] [Cycle: %d]\n",task_id,cycleCount); // @[BranchNode.scala 1304:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module PhiFastNode_1(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input         io_enable_bits_control,
  output        io_InData_0_ready,
  input         io_InData_0_valid,
  input  [4:0]  io_InData_0_bits_taskID,
  output        io_InData_1_ready,
  input         io_InData_1_valid,
  input  [4:0]  io_InData_1_bits_taskID,
  input  [63:0] io_InData_1_bits_data,
  output        io_Mask_ready,
  input         io_Mask_valid,
  input  [1:0]  io_Mask_bits,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  input         io_Out_1_ready,
  output        io_Out_1_valid,
  output [63:0] io_Out_1_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] in_data_R_1_data; // @[PhiNode.scala 203:26]
  reg  in_data_valid_R_0; // @[PhiNode.scala 204:32]
  reg  in_data_valid_R_1; // @[PhiNode.scala 204:32]
  reg  enable_R_control; // @[PhiNode.scala 207:25]
  reg  enable_valid_R; // @[PhiNode.scala 208:31]
  reg [1:0] mask_R; // @[PhiNode.scala 211:23]
  reg  mask_valid_R; // @[PhiNode.scala 212:29]
  reg [1:0] state; // @[PhiNode.scala 216:22]
  reg  out_valid_R_0; // @[PhiNode.scala 219:49]
  reg  out_valid_R_1; // @[PhiNode.scala 219:49]
  reg  fire_R_0; // @[PhiNode.scala 221:44]
  reg  fire_R_1; // @[PhiNode.scala 221:44]
  wire  _T_10 = io_Mask_ready & io_Mask_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_10 | mask_valid_R; // @[PhiNode.scala 239:24]
  wire  _T_12 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_7 = _T_12 | enable_valid_R; // @[PhiNode.scala 246:26]
  wire  _T_14 = io_InData_0_ready & io_InData_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_14 | in_data_valid_R_0; // @[PhiNode.scala 254:29]
  wire  _T_16 = io_InData_1_ready & io_InData_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_16 | in_data_valid_R_1; // @[PhiNode.scala 254:29]
  wire [1:0] _T_19 = {mask_R[0],mask_R[1]}; // @[Cat.scala 29:58]
  wire  sel = _T_19[1]; // @[CircuitMath.scala 30:8]
  wire  _T_20 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_16 = _T_20 | fire_R_0; // @[PhiNode.scala 276:26]
  wire  _GEN_17 = _T_20 ? 1'h0 : out_valid_R_0; // @[PhiNode.scala 276:26]
  wire  _T_21 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_18 = _T_21 | fire_R_1; // @[PhiNode.scala 276:26]
  wire  _GEN_19 = _T_21 ? 1'h0 : out_valid_R_1; // @[PhiNode.scala 276:26]
  wire  fire_mask_0 = fire_R_0 | _T_20; // @[PhiNode.scala 283:74]
  wire  fire_mask_1 = fire_R_1 | _T_21; // @[PhiNode.scala 283:74]
  wire [63:0] _GEN_26 = sel ? in_data_R_1_data : 64'h0; // @[PhiNode.scala 312:12]
  wire  _T_29 = in_data_valid_R_0 & in_data_valid_R_1; // @[PhiNode.scala 286:30]
  wire  _T_30 = enable_valid_R & _T_29; // @[PhiNode.scala 290:20]
  wire  _T_35 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_40 = ~reset; // @[PhiNode.scala 350:19]
  wire [4:0] _GEN_35 = sel ? io_InData_1_bits_taskID : io_InData_0_bits_taskID; // @[PhiNode.scala 350:19]
  wire  _GEN_38 = _T_30 | _GEN_17; // @[PhiNode.scala 327:66]
  wire  _GEN_39 = _T_30 | _GEN_19; // @[PhiNode.scala 327:66]
  wire  _T_43 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_44 = fire_mask_0 & fire_mask_1; // @[PhiNode.scala 364:31]
  wire  _T_48 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_76 = _T_48 ? 64'h0 : _GEN_26; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_117 = _T_43 ? _GEN_26 : _GEN_76; // @[Conditional.scala 39:67]
  wire  _GEN_149 = _T_35 & _T_30; // @[PhiNode.scala 350:19]
  wire  _GEN_150 = _GEN_149 & enable_R_control; // @[PhiNode.scala 350:19]
  wire  _GEN_152 = ~enable_R_control; // @[PhiNode.scala 357:19]
  wire  _GEN_153 = _GEN_149 & _GEN_152; // @[PhiNode.scala 357:19]
  assign io_enable_ready = ~enable_valid_R; // @[PhiNode.scala 245:19]
  assign io_InData_0_ready = ~in_data_valid_R_0; // @[PhiNode.scala 253:24]
  assign io_InData_1_ready = ~in_data_valid_R_1; // @[PhiNode.scala 253:24]
  assign io_Mask_ready = ~mask_valid_R; // @[PhiNode.scala 238:17]
  assign io_Out_0_valid = out_valid_R_0; // @[PhiNode.scala 322:21]
  assign io_Out_0_bits_data = _T_35 ? _GEN_26 : _GEN_117; // @[PhiNode.scala 321:20 PhiNode.scala 392:42]
  assign io_Out_1_valid = out_valid_R_1; // @[PhiNode.scala 322:21]
  assign io_Out_1_bits_data = _T_35 ? _GEN_26 : _GEN_117; // @[PhiNode.scala 321:20 PhiNode.scala 392:42]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {2{`RANDOM}};
  in_data_R_1_data = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  in_data_valid_R_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_data_valid_R_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  enable_R_control = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  enable_valid_R = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mask_R = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  mask_valid_R = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  out_valid_R_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  fire_R_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  fire_R_1 = _RAND_12[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      in_data_R_1_data <= 64'h0;
    end else if (_T_35) begin
      if (_T_16) begin
        in_data_R_1_data <= io_InData_1_bits_data;
      end
    end else if (_T_43) begin
      if (_T_44) begin
        in_data_R_1_data <= 64'h0;
      end else if (_T_16) begin
        in_data_R_1_data <= io_InData_1_bits_data;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        in_data_R_1_data <= 64'h0;
      end else if (_T_16) begin
        in_data_R_1_data <= io_InData_1_bits_data;
      end
    end else if (_T_16) begin
      in_data_R_1_data <= io_InData_1_bits_data;
    end
    if (reset) begin
      in_data_valid_R_0 <= 1'h0;
    end else if (_T_35) begin
      in_data_valid_R_0 <= _GEN_11;
    end else if (_T_43) begin
      if (_T_44) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_11;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        in_data_valid_R_0 <= 1'h0;
      end else begin
        in_data_valid_R_0 <= _GEN_11;
      end
    end else begin
      in_data_valid_R_0 <= _GEN_11;
    end
    if (reset) begin
      in_data_valid_R_1 <= 1'h0;
    end else if (_T_35) begin
      in_data_valid_R_1 <= _GEN_15;
    end else if (_T_43) begin
      if (_T_44) begin
        in_data_valid_R_1 <= 1'h0;
      end else begin
        in_data_valid_R_1 <= _GEN_15;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        in_data_valid_R_1 <= 1'h0;
      end else begin
        in_data_valid_R_1 <= _GEN_15;
      end
    end else begin
      in_data_valid_R_1 <= _GEN_15;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_35) begin
      if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_43) begin
      if (_T_44) begin
        enable_R_control <= 1'h0;
      end else if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        enable_R_control <= 1'h0;
      end else if (_T_12) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_12) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_35) begin
      enable_valid_R <= _GEN_7;
    end else if (_T_43) begin
      if (_T_44) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_7;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_7;
      end
    end else begin
      enable_valid_R <= _GEN_7;
    end
    if (reset) begin
      mask_R <= 2'h0;
    end else if (_T_35) begin
      if (_T_10) begin
        mask_R <= io_Mask_bits;
      end
    end else if (_T_43) begin
      if (_T_44) begin
        mask_R <= 2'h0;
      end else if (_T_10) begin
        mask_R <= io_Mask_bits;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        mask_R <= 2'h0;
      end else if (_T_10) begin
        mask_R <= io_Mask_bits;
      end
    end else if (_T_10) begin
      mask_R <= io_Mask_bits;
    end
    if (reset) begin
      mask_valid_R <= 1'h0;
    end else if (_T_35) begin
      mask_valid_R <= _GEN_3;
    end else if (_T_43) begin
      if (_T_44) begin
        mask_valid_R <= 1'h0;
      end else begin
        mask_valid_R <= _GEN_3;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        mask_valid_R <= 1'h0;
      end else begin
        mask_valid_R <= _GEN_3;
      end
    end else begin
      mask_valid_R <= _GEN_3;
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_35) begin
      if (_T_30) begin
        if (enable_R_control) begin
          state <= 2'h1;
        end else begin
          state <= 2'h2;
        end
      end
    end else if (_T_43) begin
      if (_T_44) begin
        state <= 2'h0;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        state <= 2'h0;
      end
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_35) begin
      out_valid_R_0 <= _GEN_38;
    end else if (_T_20) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_1 <= 1'h0;
    end else if (_T_35) begin
      out_valid_R_1 <= _GEN_39;
    end else if (_T_21) begin
      out_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      fire_R_0 <= 1'h0;
    end else if (_T_35) begin
      fire_R_0 <= _GEN_16;
    end else if (_T_43) begin
      if (_T_44) begin
        fire_R_0 <= 1'h0;
      end else begin
        fire_R_0 <= _GEN_16;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        fire_R_0 <= 1'h0;
      end else begin
        fire_R_0 <= _GEN_16;
      end
    end else begin
      fire_R_0 <= _GEN_16;
    end
    if (reset) begin
      fire_R_1 <= 1'h0;
    end else if (_T_35) begin
      fire_R_1 <= _GEN_18;
    end else if (_T_43) begin
      if (_T_44) begin
        fire_R_1 <= 1'h0;
      end else begin
        fire_R_1 <= _GEN_18;
      end
    end else if (_T_48) begin
      if (_T_44) begin
        fire_R_1 <= 1'h0;
      end else begin
        fire_R_1 <= _GEN_18;
      end
    end else begin
      fire_R_1 <= _GEN_18;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_150 & _T_40) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [PHI] [Name: phiindvars_iv20] [ID: 20] [Pred: %d] [Out: %d] [Cycle: %d]\n",_GEN_35,enable_R_control,_GEN_26,cycleCount); // @[PhiNode.scala 350:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_40) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [PHI] [Name: phiindvars_iv20] [ID: 20] [Pred: %d] [Out: %d] [Cycle: %d]\n",_GEN_35,enable_R_control,_GEN_26,cycleCount); // @[PhiNode.scala 357:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module TruncNode(
  input         clock,
  input         reset,
  output        io_Input_ready,
  input         io_Input_valid,
  input  [63:0] io_Input_bits_data,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] input_R_data; // @[TruncNode.scala 49:24]
  reg  input_valid_R; // @[TruncNode.scala 50:30]
  reg [4:0] enable_R_taskID; // @[TruncNode.scala 52:25]
  reg  enable_R_control; // @[TruncNode.scala 52:25]
  reg  enable_valid_R; // @[TruncNode.scala 53:31]
  reg  output_valid_R_0; // @[TruncNode.scala 55:49]
  reg  fire_R_0; // @[TruncNode.scala 57:41]
  wire [4:0] task_input = io_enable_bits_taskID | enable_R_taskID; // @[TruncNode.scala 59:43]
  wire  _T_7 = io_Input_ready & io_Input_valid; // @[Decoupled.scala 40:37]
  wire [63:0] _GEN_4 = _T_7 ? io_Input_bits_data : input_R_data; // @[TruncNode.scala 67:25]
  wire  _GEN_5 = _T_7 | input_valid_R; // @[TruncNode.scala 67:25]
  wire  _T_9 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = _T_9 | enable_valid_R; // @[TruncNode.scala 73:26]
  wire  _T_11 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_10 = _T_11 ? 1'h0 : output_valid_R_0; // @[TruncNode.scala 86:26]
  wire  _GEN_11 = _T_11 | fire_R_0; // @[TruncNode.scala 86:26]
  wire  fire_mask_0 = fire_R_0 | _T_11; // @[TruncNode.scala 92:74]
  reg  state; // @[TruncNode.scala 107:22]
  wire  _T_13 = ~state; // @[Conditional.scala 37:30]
  wire  _T_15 = enable_valid_R | _T_9; // @[TruncNode.scala 95:20]
  wire  _T_17 = input_valid_R | _T_7; // @[TruncNode.scala 99:19]
  wire  _T_18 = _T_15 & _T_17; // @[TruncNode.scala 112:28]
  wire  _T_20 = ~reset; // @[TruncNode.scala 120:17]
  wire  _GEN_12 = _T_18 | output_valid_R_0; // @[TruncNode.scala 112:47]
  wire  _GEN_13 = _T_18 | _GEN_10; // @[TruncNode.scala 112:47]
  wire  _GEN_14 = _T_18 | state; // @[TruncNode.scala 112:47]
  wire  _GEN_49 = _T_13 & _T_18; // @[TruncNode.scala 120:17]
  assign io_Input_ready = ~input_valid_R; // @[TruncNode.scala 66:18]
  assign io_enable_ready = ~enable_valid_R; // @[TruncNode.scala 72:19]
  assign io_Out_0_valid = _T_13 ? _GEN_12 : output_valid_R_0; // @[TruncNode.scala 82:21 TruncNode.scala 114:32]
  assign io_Out_0_bits_data = _T_7 ? io_Input_bits_data : input_R_data; // @[TruncNode.scala 81:20]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {2{`RANDOM}};
  input_R_data = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  input_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_R_taskID = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  enable_R_control = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  enable_valid_R = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  fire_R_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      input_R_data <= 64'h0;
    end else if (_T_13) begin
      if (_T_7) begin
        input_R_data <= io_Input_bits_data;
      end
    end else if (state) begin
      if (fire_mask_0) begin
        input_R_data <= 64'h0;
      end else if (_T_7) begin
        input_R_data <= io_Input_bits_data;
      end
    end else if (_T_7) begin
      input_R_data <= io_Input_bits_data;
    end
    if (reset) begin
      input_valid_R <= 1'h0;
    end else if (_T_13) begin
      input_valid_R <= _GEN_5;
    end else if (state) begin
      if (fire_mask_0) begin
        input_valid_R <= 1'h0;
      end else begin
        input_valid_R <= _GEN_5;
      end
    end else begin
      input_valid_R <= _GEN_5;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_13) begin
      if (_T_9) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (state) begin
      if (fire_mask_0) begin
        enable_R_taskID <= 5'h0;
      end else if (_T_9) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_9) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_13) begin
      if (_T_9) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (fire_mask_0) begin
        enable_R_control <= 1'h0;
      end else if (_T_9) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_9) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_13) begin
      enable_valid_R <= _GEN_9;
    end else if (state) begin
      if (fire_mask_0) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_9;
      end
    end else begin
      enable_valid_R <= _GEN_9;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_13) begin
      output_valid_R_0 <= _GEN_13;
    end else if (state) begin
      if (fire_mask_0) begin
        output_valid_R_0 <= 1'h0;
      end else if (_T_11) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_11) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_R_0 <= 1'h0;
    end else if (_T_13) begin
      fire_R_0 <= _GEN_11;
    end else if (state) begin
      if (fire_mask_0) begin
        fire_R_0 <= 1'h0;
      end else begin
        fire_R_0 <= _GEN_11;
      end
    end else begin
      fire_R_0 <= _GEN_11;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_13) begin
      state <= _GEN_14;
    end else if (state) begin
      if (fire_mask_0) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_49 & _T_20) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [Name: trunc21] [ID: 0] [Pred: %d] [Out: %d] [Cycle: %d]\n",task_input,enable_R_control,_GEN_4,cycleCount); // @[TruncNode.scala 120:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ComputeNode_4(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid,
  input  [63:0] io_RightIO_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_in2; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg [63:0] right_R_data; // @[ComputeNode.scala 57:24]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 91:19]
  wire  _T_12 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_12 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_14 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_14 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_22 = ~state; // @[ComputeNode.scala 75:67]
  wire  _T_27 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_28 = _T_27 & right_valid_R; // @[ComputeNode.scala 144:43]
  wire  _T_32 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_34 = ~reset; // @[ComputeNode.scala 174:17]
  wire [63:0] _T_30_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_17 = _T_28 ? _T_30_data : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_20 = _T_28 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_24 = _T_28 | state; // @[ComputeNode.scala 144:81]
  wire  _T_37 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _GEN_47 = _T_22 & _T_28; // @[ComputeNode.scala 174:17]
  UALU_2 FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_in2(FU_io_in2),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_22 ? _GEN_20 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_data = _T_22 ? _GEN_17 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
  assign FU_io_in2 = right_R_data; // @[ComputeNode.scala 102:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  left_R_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  left_valid_R = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  right_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  right_valid_R = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
  _RAND_11 = {2{`RANDOM}};
  out_data_R = _RAND_11[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_37) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_37) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        out_valid_R_0 <= _T_32;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_12) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_11;
      end
    end else begin
      left_valid_R <= _GEN_11;
    end
    if (reset) begin
      right_R_data <= 64'h0;
    end else if (_T_14) begin
      right_R_data <= io_RightIO_bits_data;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_15;
      end
    end else begin
      right_valid_R <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_22) begin
      state <= _GEN_24;
    end else if (state) begin
      if (_T_37) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_22) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_37) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_47 & _T_34) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: binaryOp_add22] [ID: 22] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: add] [Cycle: %d]\n",taskID,enable_R_control,left_R_data,right_R_data,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ZextNode_1(
  input         clock,
  input         reset,
  output        io_Input_ready,
  input         io_Input_valid,
  input  [63:0] io_Input_bits_data,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  input         io_Out_1_ready,
  output        io_Out_1_valid,
  output [63:0] io_Out_1_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] input_R_data; // @[ZextNode.scala 42:24]
  reg  input_valid_R; // @[ZextNode.scala 43:30]
  reg [4:0] enable_R_taskID; // @[ZextNode.scala 45:25]
  reg  enable_R_control; // @[ZextNode.scala 45:25]
  reg  enable_valid_R; // @[ZextNode.scala 46:31]
  reg  output_valid_R_0; // @[ZextNode.scala 48:49]
  reg  output_valid_R_1; // @[ZextNode.scala 48:49]
  reg  fire_R_0; // @[ZextNode.scala 50:41]
  reg  fire_R_1; // @[ZextNode.scala 50:41]
  wire [4:0] task_input = io_enable_bits_taskID | enable_R_taskID; // @[ZextNode.scala 52:43]
  wire  _T_7 = io_Input_ready & io_Input_valid; // @[Decoupled.scala 40:37]
  wire [63:0] _GEN_4 = _T_7 ? io_Input_bits_data : input_R_data; // @[ZextNode.scala 60:25]
  wire  _GEN_5 = _T_7 | input_valid_R; // @[ZextNode.scala 60:25]
  wire  _T_9 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = _T_9 | enable_valid_R; // @[ZextNode.scala 66:26]
  wire  _T_11 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_10 = _T_11 ? 1'h0 : output_valid_R_0; // @[ZextNode.scala 80:26]
  wire  _GEN_11 = _T_11 | fire_R_0; // @[ZextNode.scala 80:26]
  wire  _T_12 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_12 = _T_12 ? 1'h0 : output_valid_R_1; // @[ZextNode.scala 80:26]
  wire  _GEN_13 = _T_12 | fire_R_1; // @[ZextNode.scala 80:26]
  wire  fire_mask_0 = fire_R_0 | _T_11; // @[ZextNode.scala 86:74]
  wire  fire_mask_1 = fire_R_1 | _T_12; // @[ZextNode.scala 86:74]
  reg  state; // @[ZextNode.scala 101:22]
  wire  _T_15 = ~state; // @[Conditional.scala 37:30]
  wire  _T_17 = enable_valid_R | _T_9; // @[ZextNode.scala 89:20]
  wire  _T_19 = input_valid_R | _T_7; // @[ZextNode.scala 93:19]
  wire  _T_20 = _T_17 & _T_19; // @[ZextNode.scala 106:28]
  wire  _T_22 = ~reset; // @[ZextNode.scala 114:17]
  wire  _GEN_14 = _T_20 | output_valid_R_0; // @[ZextNode.scala 106:47]
  wire  _GEN_15 = _T_20 | output_valid_R_1; // @[ZextNode.scala 106:47]
  wire  _GEN_16 = _T_20 | _GEN_10; // @[ZextNode.scala 106:47]
  wire  _GEN_17 = _T_20 | _GEN_12; // @[ZextNode.scala 106:47]
  wire  _GEN_18 = _T_20 | state; // @[ZextNode.scala 106:47]
  wire  _T_24 = fire_mask_0 & fire_mask_1; // @[ZextNode.scala 126:31]
  wire  _GEN_60 = _T_15 & _T_20; // @[ZextNode.scala 114:17]
  assign io_Input_ready = ~input_valid_R; // @[ZextNode.scala 59:18]
  assign io_enable_ready = ~enable_valid_R; // @[ZextNode.scala 65:19]
  assign io_Out_0_valid = _T_15 ? _GEN_14 : output_valid_R_0; // @[ZextNode.scala 76:21 ZextNode.scala 108:32]
  assign io_Out_0_bits_data = _T_7 ? io_Input_bits_data : input_R_data; // @[ZextNode.scala 75:20]
  assign io_Out_1_valid = _T_15 ? _GEN_15 : output_valid_R_1; // @[ZextNode.scala 76:21 ZextNode.scala 108:32]
  assign io_Out_1_bits_data = _T_7 ? io_Input_bits_data : input_R_data; // @[ZextNode.scala 75:20]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {2{`RANDOM}};
  input_R_data = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  input_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_R_taskID = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  enable_R_control = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  enable_valid_R = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  output_valid_R_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  output_valid_R_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  fire_R_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  fire_R_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      input_R_data <= 64'h0;
    end else if (_T_15) begin
      if (_T_7) begin
        input_R_data <= io_Input_bits_data;
      end
    end else if (state) begin
      if (_T_24) begin
        input_R_data <= 64'h0;
      end else if (_T_7) begin
        input_R_data <= io_Input_bits_data;
      end
    end else if (_T_7) begin
      input_R_data <= io_Input_bits_data;
    end
    if (reset) begin
      input_valid_R <= 1'h0;
    end else if (_T_15) begin
      input_valid_R <= _GEN_5;
    end else if (state) begin
      if (_T_24) begin
        input_valid_R <= 1'h0;
      end else begin
        input_valid_R <= _GEN_5;
      end
    end else begin
      input_valid_R <= _GEN_5;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_15) begin
      if (_T_9) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (state) begin
      if (_T_24) begin
        enable_R_taskID <= 5'h0;
      end else if (_T_9) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_9) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_15) begin
      if (_T_9) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (_T_24) begin
        enable_R_control <= 1'h0;
      end else if (_T_9) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_9) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_15) begin
      enable_valid_R <= _GEN_9;
    end else if (state) begin
      if (_T_24) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_9;
      end
    end else begin
      enable_valid_R <= _GEN_9;
    end
    if (reset) begin
      output_valid_R_0 <= 1'h0;
    end else if (_T_15) begin
      output_valid_R_0 <= _GEN_16;
    end else if (state) begin
      if (_T_24) begin
        output_valid_R_0 <= 1'h0;
      end else if (_T_11) begin
        output_valid_R_0 <= 1'h0;
      end
    end else if (_T_11) begin
      output_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      output_valid_R_1 <= 1'h0;
    end else if (_T_15) begin
      output_valid_R_1 <= _GEN_17;
    end else if (state) begin
      if (_T_24) begin
        output_valid_R_1 <= 1'h0;
      end else if (_T_12) begin
        output_valid_R_1 <= 1'h0;
      end
    end else if (_T_12) begin
      output_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      fire_R_0 <= 1'h0;
    end else if (_T_15) begin
      fire_R_0 <= _GEN_11;
    end else if (state) begin
      if (_T_24) begin
        fire_R_0 <= 1'h0;
      end else begin
        fire_R_0 <= _GEN_11;
      end
    end else begin
      fire_R_0 <= _GEN_11;
    end
    if (reset) begin
      fire_R_1 <= 1'h0;
    end else if (_T_15) begin
      fire_R_1 <= _GEN_13;
    end else if (state) begin
      if (_T_24) begin
        fire_R_1 <= 1'h0;
      end else begin
        fire_R_1 <= _GEN_13;
      end
    end else begin
      fire_R_1 <= _GEN_13;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_15) begin
      state <= _GEN_18;
    end else if (state) begin
      if (_T_24) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_22) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [ZEXT] [Name: sextidxprom23] [ID: 0] [Pred: %d] [Out: %d] [Cycle: %d]\n",task_input,enable_R_control,_GEN_4,cycleCount); // @[ZextNode.scala 114:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module GepNode(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  output        io_baseAddress_ready,
  input         io_baseAddress_valid,
  input  [63:0] io_baseAddress_bits_data,
  output        io_idx_0_ready,
  input         io_idx_0_valid,
  input  [63:0] io_idx_0_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] base_addr_R_data; // @[GepNode.scala 884:28]
  reg  base_addr_valid_R; // @[GepNode.scala 885:34]
  reg [63:0] idx_R_0_data; // @[GepNode.scala 888:39]
  reg  idx_valid_R_0; // @[GepNode.scala 889:45]
  reg  state; // @[GepNode.scala 893:22]
  wire  _T_11 = io_baseAddress_ready & io_baseAddress_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_11 | base_addr_valid_R; // @[GepNode.scala 909:31]
  wire  _T_13 = io_idx_0_ready & io_idx_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_13 | idx_valid_R_0; // @[GepNode.scala 916:28]
  wire [67:0] seek_value = idx_R_0_data * 64'h8; // @[GepNode.scala 924:21]
  wire [67:0] _GEN_52 = {{4'd0}, base_addr_R_data}; // @[GepNode.scala 932:35]
  wire [67:0] data_out = _GEN_52 + seek_value; // @[GepNode.scala 932:35]
  wire  _T_15 = ~state; // @[Conditional.scala 37:30]
  wire  _T_16 = enable_valid_R & base_addr_valid_R; // @[GepNode.scala 948:27]
  wire  _T_17 = _T_16 & idx_valid_R_0; // @[GepNode.scala 948:48]
  wire  _T_19 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _GEN_17 = _T_17 | state; // @[GepNode.scala 948:78]
  wire  _T_22 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _T_26 = ~reset; // @[GepNode.scala 968:17]
  wire  _GEN_53 = ~_T_15; // @[GepNode.scala 968:17]
  wire  _GEN_54 = _GEN_53 & state; // @[GepNode.scala 968:17]
  wire  _GEN_55 = _GEN_54 & _T_22; // @[GepNode.scala 968:17]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = out_valid_R_0; // @[HandShaking.scala 194:21]
  assign io_Out_0_bits_data = data_out[63:0]; // @[GepNode.scala 936:25]
  assign io_baseAddress_ready = ~base_addr_valid_R; // @[GepNode.scala 908:24]
  assign io_idx_0_ready = ~idx_valid_R_0; // @[GepNode.scala 915:21]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  base_addr_R_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  base_addr_valid_R = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  idx_R_0_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  idx_valid_R_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_15) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_22) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_15) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_22) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_15) begin
      if (_T_17) begin
        out_valid_R_0 <= _T_19;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      base_addr_R_data <= 64'h0;
    end else if (_T_15) begin
      if (_T_11) begin
        base_addr_R_data <= io_baseAddress_bits_data;
      end
    end else if (state) begin
      if (_T_22) begin
        base_addr_R_data <= 64'h0;
      end else if (_T_11) begin
        base_addr_R_data <= io_baseAddress_bits_data;
      end
    end else if (_T_11) begin
      base_addr_R_data <= io_baseAddress_bits_data;
    end
    if (reset) begin
      base_addr_valid_R <= 1'h0;
    end else if (_T_15) begin
      base_addr_valid_R <= _GEN_11;
    end else if (state) begin
      if (_T_22) begin
        base_addr_valid_R <= 1'h0;
      end else begin
        base_addr_valid_R <= _GEN_11;
      end
    end else begin
      base_addr_valid_R <= _GEN_11;
    end
    if (reset) begin
      idx_R_0_data <= 64'h0;
    end else if (_T_15) begin
      if (_T_13) begin
        idx_R_0_data <= io_idx_0_bits_data;
      end
    end else if (state) begin
      if (_T_22) begin
        idx_R_0_data <= 64'h0;
      end else if (_T_13) begin
        idx_R_0_data <= io_idx_0_bits_data;
      end
    end else if (_T_13) begin
      idx_R_0_data <= io_idx_0_bits_data;
    end
    if (reset) begin
      idx_valid_R_0 <= 1'h0;
    end else if (_T_15) begin
      idx_valid_R_0 <= _GEN_15;
    end else if (state) begin
      if (_T_22) begin
        idx_valid_R_0 <= 1'h0;
      end else begin
        idx_valid_R_0 <= _GEN_15;
      end
    end else begin
      idx_valid_R_0 <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_15) begin
      state <= _GEN_17;
    end else if (state) begin
      if (_T_22) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_55 & _T_26) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [GEP] [Name: Gep_arrayidx24] [ID: 24] [Pred: %d] [Out: 0x%x] [Cycle: %d]\n",enable_R_taskID,enable_R_control,data_out,cycleCount); // @[GepNode.scala 968:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UnTypLoadCache(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  input         io_Out_1_ready,
  output        io_Out_1_valid,
  output [63:0] io_Out_1_bits_data,
  output        io_GepAddr_ready,
  input         io_GepAddr_valid,
  input  [63:0] io_GepAddr_bits_data,
  input         io_MemReq_ready,
  output        io_MemReq_valid,
  output [63:0] io_MemReq_bits_addr,
  input         io_MemResp_valid,
  input  [63:0] io_MemResp_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 592:31]
  reg  enable_R_control; // @[HandShaking.scala 592:31]
  reg  enable_valid_R; // @[HandShaking.scala 593:31]
  reg  out_ready_R_0; // @[HandShaking.scala 605:28]
  reg  out_ready_R_1; // @[HandShaking.scala 605:28]
  reg  out_valid_R_0; // @[HandShaking.scala 606:28]
  reg  out_valid_R_1; // @[HandShaking.scala 606:28]
  wire  _T_4 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_1 = _T_4 ? 1'h0 : out_valid_R_0; // @[HandShaking.scala 632:29]
  wire  _T_5 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_3 = _T_5 ? 1'h0 : out_valid_R_1; // @[HandShaking.scala 632:29]
  wire  _T_7 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_11 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] addr_R_data; // @[LoadCache.scala 56:23]
  reg  addr_valid_R; // @[LoadCache.scala 57:29]
  reg [63:0] data_R_data; // @[LoadCache.scala 60:23]
  reg [1:0] state; // @[LoadCache.scala 65:22]
  wire  _T_15 = io_GepAddr_ready & io_GepAddr_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_13 = _T_15 | addr_valid_R; // @[LoadCache.scala 74:27]
  wire  _T_16 = enable_valid_R & addr_valid_R; // @[LoadCache.scala 93:20]
  wire  _T_17 = _T_16 & enable_R_control; // @[LoadCache.scala 93:36]
  wire [1:0] _T_24 = {out_ready_R_1,out_ready_R_0}; // @[HandShaking.scala 725:17]
  wire  _T_25 = &_T_24; // @[HandShaking.scala 725:24]
  wire [1:0] _T_26 = {io_Out_1_ready,io_Out_0_ready}; // @[HandShaking.scala 725:43]
  wire  _T_27 = &_T_26; // @[HandShaking.scala 725:50]
  wire  _T_28 = _T_25 | _T_27; // @[HandShaking.scala 725:29]
  wire  _T_48 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_54 = _T_4 ^ 1'h1; // @[HandShaking.scala 729:72]
  wire  _T_55 = _T_5 ^ 1'h1; // @[HandShaking.scala 729:72]
  wire  _T_56 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire  _GEN_29 = io_MemResp_valid | _GEN_1; // @[LoadCache.scala 212:30]
  wire  _GEN_30 = io_MemResp_valid | _GEN_3; // @[LoadCache.scala 212:30]
  wire  _T_57 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire  _T_69 = ~reset; // @[LoadCache.scala 251:17]
  wire  _GEN_85 = ~_T_48; // @[LoadCache.scala 251:17]
  wire  _GEN_86 = ~_T_56; // @[LoadCache.scala 251:17]
  wire  _GEN_87 = _GEN_85 & _GEN_86; // @[LoadCache.scala 251:17]
  wire  _GEN_88 = _GEN_87 & _T_57; // @[LoadCache.scala 251:17]
  wire  _GEN_89 = _GEN_88 & _T_28; // @[LoadCache.scala 251:17]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 650:19]
  assign io_Out_0_valid = out_valid_R_0; // @[HandShaking.scala 630:21]
  assign io_Out_0_bits_data = data_R_data; // @[LoadCache.scala 156:20]
  assign io_Out_1_valid = out_valid_R_1; // @[HandShaking.scala 630:21]
  assign io_Out_1_bits_data = data_R_data; // @[LoadCache.scala 156:20]
  assign io_GepAddr_ready = ~addr_valid_R; // @[LoadCache.scala 73:20]
  assign io_MemReq_valid = _T_48 & _T_17; // @[LoadCache.scala 160:19 LoadCache.scala 183:27]
  assign io_MemReq_bits_addr = addr_R_data; // @[LoadCache.scala 162:23]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_ready_R_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  out_valid_R_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  cycleCount = _RAND_7[14:0];
  _RAND_8 = {2{`RANDOM}};
  addr_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  addr_valid_R = _RAND_9[0:0];
  _RAND_10 = {2{`RANDOM}};
  data_R_data = _RAND_10[63:0];
  _RAND_11 = {1{`RANDOM}};
  state = _RAND_11[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_7) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_48) begin
      if (_T_7) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_56) begin
      if (_T_7) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_57) begin
      if (_T_28) begin
        enable_valid_R <= 1'h0;
      end else if (_T_7) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_7) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_48) begin
      if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_56) begin
      if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_57) begin
      if (_T_28) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_4) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_4) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_ready_R_1 <= 1'h0;
    end else if (_T_48) begin
      if (_T_5) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (_T_56) begin
      if (_T_5) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (_T_57) begin
      if (_T_28) begin
        out_ready_R_1 <= 1'h0;
      end else if (_T_5) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (_T_5) begin
      out_ready_R_1 <= io_Out_1_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_48) begin
      if (_T_16) begin
        if (enable_R_control) begin
          if (_T_4) begin
            out_valid_R_0 <= 1'h0;
          end
        end else begin
          out_valid_R_0 <= _T_54;
        end
      end else if (_T_4) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_56) begin
      out_valid_R_0 <= _GEN_29;
    end else if (_T_4) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_1 <= 1'h0;
    end else if (_T_48) begin
      if (_T_16) begin
        if (enable_R_control) begin
          if (_T_5) begin
            out_valid_R_1 <= 1'h0;
          end
        end else begin
          out_valid_R_1 <= _T_55;
        end
      end else if (_T_5) begin
        out_valid_R_1 <= 1'h0;
      end
    end else if (_T_56) begin
      out_valid_R_1 <= _GEN_30;
    end else if (_T_5) begin
      out_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_11;
    end
    if (reset) begin
      addr_R_data <= 64'h0;
    end else if (_T_48) begin
      if (_T_15) begin
        addr_R_data <= io_GepAddr_bits_data;
      end
    end else if (_T_56) begin
      if (_T_15) begin
        addr_R_data <= io_GepAddr_bits_data;
      end
    end else if (_T_57) begin
      if (_T_28) begin
        addr_R_data <= 64'h0;
      end else if (_T_15) begin
        addr_R_data <= io_GepAddr_bits_data;
      end
    end else if (_T_15) begin
      addr_R_data <= io_GepAddr_bits_data;
    end
    if (reset) begin
      addr_valid_R <= 1'h0;
    end else if (_T_48) begin
      addr_valid_R <= _GEN_13;
    end else if (_T_56) begin
      addr_valid_R <= _GEN_13;
    end else if (_T_57) begin
      if (_T_28) begin
        addr_valid_R <= 1'h0;
      end else begin
        addr_valid_R <= _GEN_13;
      end
    end else begin
      addr_valid_R <= _GEN_13;
    end
    if (reset) begin
      data_R_data <= 64'h0;
    end else if (!(_T_48)) begin
      if (_T_56) begin
        if (io_MemResp_valid) begin
          data_R_data <= io_MemResp_bits_data;
        end
      end else if (_T_57) begin
        if (_T_28) begin
          data_R_data <= 64'h0;
        end
      end
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_48) begin
      if (_T_16) begin
        if (enable_R_control) begin
          if (io_MemReq_ready) begin
            state <= 2'h1;
          end
        end else begin
          state <= 2'h2;
        end
      end
    end else if (_T_56) begin
      if (io_MemResp_valid) begin
        state <= 2'h2;
      end
    end else if (_T_57) begin
      if (_T_28) begin
        state <= 2'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_69) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [LOAD] [Name: ld_25] [ID: 25] [Pred: %d] [Addr: 0x%x] [Data: 0x%x] [Cycle: %d]\n",enable_R_taskID,enable_R_control,addr_R_data,data_R_data,cycleCount); // @[LoadCache.scala 251:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module GepNode_1(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  output        io_baseAddress_ready,
  input         io_baseAddress_valid,
  input  [63:0] io_baseAddress_bits_data,
  output        io_idx_0_ready,
  input         io_idx_0_valid,
  input  [63:0] io_idx_0_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] base_addr_R_data; // @[GepNode.scala 884:28]
  reg  base_addr_valid_R; // @[GepNode.scala 885:34]
  reg [63:0] idx_R_0_data; // @[GepNode.scala 888:39]
  reg  idx_valid_R_0; // @[GepNode.scala 889:45]
  reg  state; // @[GepNode.scala 893:22]
  wire  _T_11 = io_baseAddress_ready & io_baseAddress_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_11 | base_addr_valid_R; // @[GepNode.scala 909:31]
  wire  _T_13 = io_idx_0_ready & io_idx_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_13 | idx_valid_R_0; // @[GepNode.scala 916:28]
  wire [67:0] seek_value = idx_R_0_data * 64'h8; // @[GepNode.scala 924:21]
  wire [67:0] _GEN_52 = {{4'd0}, base_addr_R_data}; // @[GepNode.scala 932:35]
  wire [67:0] data_out = _GEN_52 + seek_value; // @[GepNode.scala 932:35]
  wire  _T_15 = ~state; // @[Conditional.scala 37:30]
  wire  _T_16 = enable_valid_R & base_addr_valid_R; // @[GepNode.scala 948:27]
  wire  _T_17 = _T_16 & idx_valid_R_0; // @[GepNode.scala 948:48]
  wire  _T_19 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _GEN_17 = _T_17 | state; // @[GepNode.scala 948:78]
  wire  _T_22 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _T_26 = ~reset; // @[GepNode.scala 968:17]
  wire  _GEN_53 = ~_T_15; // @[GepNode.scala 968:17]
  wire  _GEN_54 = _GEN_53 & state; // @[GepNode.scala 968:17]
  wire  _GEN_55 = _GEN_54 & _T_22; // @[GepNode.scala 968:17]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = out_valid_R_0; // @[HandShaking.scala 194:21]
  assign io_Out_0_bits_data = data_out[63:0]; // @[GepNode.scala 936:25]
  assign io_baseAddress_ready = ~base_addr_valid_R; // @[GepNode.scala 908:24]
  assign io_idx_0_ready = ~idx_valid_R_0; // @[GepNode.scala 915:21]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  base_addr_R_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  base_addr_valid_R = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  idx_R_0_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  idx_valid_R_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_15) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_22) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_15) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_22) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_15) begin
      if (_T_17) begin
        out_valid_R_0 <= _T_19;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      base_addr_R_data <= 64'h0;
    end else if (_T_15) begin
      if (_T_11) begin
        base_addr_R_data <= io_baseAddress_bits_data;
      end
    end else if (state) begin
      if (_T_22) begin
        base_addr_R_data <= 64'h0;
      end else if (_T_11) begin
        base_addr_R_data <= io_baseAddress_bits_data;
      end
    end else if (_T_11) begin
      base_addr_R_data <= io_baseAddress_bits_data;
    end
    if (reset) begin
      base_addr_valid_R <= 1'h0;
    end else if (_T_15) begin
      base_addr_valid_R <= _GEN_11;
    end else if (state) begin
      if (_T_22) begin
        base_addr_valid_R <= 1'h0;
      end else begin
        base_addr_valid_R <= _GEN_11;
      end
    end else begin
      base_addr_valid_R <= _GEN_11;
    end
    if (reset) begin
      idx_R_0_data <= 64'h0;
    end else if (_T_15) begin
      if (_T_13) begin
        idx_R_0_data <= io_idx_0_bits_data;
      end
    end else if (state) begin
      if (_T_22) begin
        idx_R_0_data <= 64'h0;
      end else if (_T_13) begin
        idx_R_0_data <= io_idx_0_bits_data;
      end
    end else if (_T_13) begin
      idx_R_0_data <= io_idx_0_bits_data;
    end
    if (reset) begin
      idx_valid_R_0 <= 1'h0;
    end else if (_T_15) begin
      idx_valid_R_0 <= _GEN_15;
    end else if (state) begin
      if (_T_22) begin
        idx_valid_R_0 <= 1'h0;
      end else begin
        idx_valid_R_0 <= _GEN_15;
      end
    end else begin
      idx_valid_R_0 <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_15) begin
      state <= _GEN_17;
    end else if (state) begin
      if (_T_22) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_55 & _T_26) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [GEP] [Name: Gep_arrayidx726] [ID: 26] [Pred: %d] [Out: 0x%x] [Cycle: %d]\n",enable_R_taskID,enable_R_control,data_out,cycleCount); // @[GepNode.scala 968:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UALU_5(
  input  [63:0] io_in1,
  output [63:0] io_out
);
  wire  _T_31 = $signed(io_in1) > 64'sh0; // @[Alu.scala 213:38]
  assign io_out = {{63'd0}, _T_31}; // @[Alu.scala 235:10]
endmodule
module ComputeNode_5(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 91:19]
  wire  _T_12 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_12 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_14 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_14 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_22 = ~state; // @[ComputeNode.scala 75:67]
  wire  _T_27 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_28 = _T_27 & right_valid_R; // @[ComputeNode.scala 144:43]
  wire  _T_32 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_34 = ~reset; // @[ComputeNode.scala 174:17]
  wire [63:0] _T_30_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_17 = _T_28 ? _T_30_data : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_20 = _T_28 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_24 = _T_28 | state; // @[ComputeNode.scala 144:81]
  wire  _T_37 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _GEN_47 = _T_22 & _T_28; // @[ComputeNode.scala 174:17]
  UALU_5 FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_22 ? _GEN_20 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_data = _T_22 ? _GEN_17 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  left_R_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  left_valid_R = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  right_valid_R = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state = _RAND_9[0:0];
  _RAND_10 = {2{`RANDOM}};
  out_data_R = _RAND_10[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_37) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_37) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        out_valid_R_0 <= _T_32;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_12) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_11;
      end
    end else begin
      left_valid_R <= _GEN_11;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_15;
      end
    end else begin
      right_valid_R <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_22) begin
      state <= _GEN_24;
    end else if (state) begin
      if (_T_37) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_22) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_37) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_47 & _T_34) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: icmp_19] [ID: 19] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: sgt] [Cycle: %d]\n",taskID,enable_R_control,left_R_data,64'h0,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module SelectNode(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [63:0] io_Out_0_bits_data,
  output        io_InData1_ready,
  input         io_InData1_valid,
  input  [63:0] io_InData1_bits_data,
  output        io_InData2_ready,
  input         io_InData2_valid,
  output        io_Select_ready,
  input         io_Select_valid,
  input  [63:0] io_Select_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] indata1_R_data; // @[SelectNode.scala 52:26]
  reg  indata1_valid_R; // @[SelectNode.scala 53:32]
  reg  indata2_valid_R; // @[SelectNode.scala 57:32]
  reg [63:0] select_R_data; // @[SelectNode.scala 60:25]
  reg  select_valid_R; // @[SelectNode.scala 61:31]
  reg  state; // @[SelectNode.scala 64:22]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[SelectNode.scala 68:19]
  wire  _T_12 = io_InData1_ready & io_InData1_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_12 | indata1_valid_R; // @[SelectNode.scala 75:27]
  wire  _T_14 = io_InData2_ready & io_InData2_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_14 | indata2_valid_R; // @[SelectNode.scala 81:27]
  wire  _T_16 = io_Select_ready & io_Select_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_19 = _T_16 | select_valid_R; // @[SelectNode.scala 87:26]
  wire  _T_17 = |select_R_data; // @[SelectNode.scala 93:39]
  wire [63:0] output_data = _T_17 ? indata1_R_data : 64'h0; // @[SelectNode.scala 93:24]
  wire  _T_19 = ~state; // @[Conditional.scala 37:30]
  wire  _T_20 = enable_valid_R & indata1_valid_R; // @[SelectNode.scala 107:29]
  wire  _T_21 = _T_20 & indata2_valid_R; // @[SelectNode.scala 107:48]
  wire  _T_22 = _T_21 & select_valid_R; // @[SelectNode.scala 107:67]
  wire  _T_24 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_26 = ~reset; // @[SelectNode.scala 112:19]
  wire  _GEN_20 = _T_22 | out_valid_R_0; // @[SelectNode.scala 107:86]
  wire  _GEN_22 = _T_22 | state; // @[SelectNode.scala 107:86]
  wire  _T_29 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _GEN_61 = _T_19 & _T_22; // @[SelectNode.scala 112:19]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_19 ? _GEN_20 : out_valid_R_0; // @[HandShaking.scala 194:21 SelectNode.scala 108:35]
  assign io_Out_0_bits_data = _T_17 ? indata1_R_data : 64'h0; // @[SelectNode.scala 100:27]
  assign io_InData1_ready = ~indata1_valid_R; // @[SelectNode.scala 74:20]
  assign io_InData2_ready = ~indata2_valid_R; // @[SelectNode.scala 80:20]
  assign io_Select_ready = ~select_valid_R; // @[SelectNode.scala 86:19]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_valid_R = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cycleCount = _RAND_4[14:0];
  _RAND_5 = {2{`RANDOM}};
  indata1_R_data = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  indata1_valid_R = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  indata2_valid_R = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  select_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  select_valid_R = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_19) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_29) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_19) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_29) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_19) begin
      if (_T_22) begin
        out_valid_R_0 <= _T_24;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      indata1_R_data <= 64'h0;
    end else if (_T_19) begin
      if (_T_12) begin
        indata1_R_data <= io_InData1_bits_data;
      end
    end else if (state) begin
      if (_T_29) begin
        indata1_R_data <= 64'h0;
      end else if (_T_12) begin
        indata1_R_data <= io_InData1_bits_data;
      end
    end else if (_T_12) begin
      indata1_R_data <= io_InData1_bits_data;
    end
    if (reset) begin
      indata1_valid_R <= 1'h0;
    end else if (_T_19) begin
      indata1_valid_R <= _GEN_11;
    end else if (state) begin
      if (_T_29) begin
        indata1_valid_R <= 1'h0;
      end else begin
        indata1_valid_R <= _GEN_11;
      end
    end else begin
      indata1_valid_R <= _GEN_11;
    end
    if (reset) begin
      indata2_valid_R <= 1'h0;
    end else if (_T_19) begin
      indata2_valid_R <= _GEN_15;
    end else if (state) begin
      if (_T_29) begin
        indata2_valid_R <= 1'h0;
      end else begin
        indata2_valid_R <= _GEN_15;
      end
    end else begin
      indata2_valid_R <= _GEN_15;
    end
    if (reset) begin
      select_R_data <= 64'h0;
    end else if (_T_16) begin
      select_R_data <= io_Select_bits_data;
    end
    if (reset) begin
      select_valid_R <= 1'h0;
    end else if (_T_19) begin
      select_valid_R <= _GEN_19;
    end else if (state) begin
      if (_T_29) begin
        select_valid_R <= 1'h0;
      end else begin
        select_valid_R <= _GEN_19;
      end
    end else begin
      select_valid_R <= _GEN_19;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_19) begin
      state <= _GEN_22;
    end else if (state) begin
      if (_T_29) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_26) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [SELECT] [select__28] [ID: 28] [Out: %d] [Cycle: %d]\n",taskID,output_data,cycleCount); // @[SelectNode.scala 112:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module UnTypStoreCache(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_SuccOp_0_ready,
  output        io_SuccOp_0_valid,
  output        io_GepAddr_ready,
  input         io_GepAddr_valid,
  input  [63:0] io_GepAddr_bits_data,
  output        io_inData_ready,
  input         io_inData_valid,
  input  [63:0] io_inData_bits_data,
  input         io_MemReq_ready,
  output        io_MemReq_valid,
  output [63:0] io_MemReq_bits_addr,
  output [63:0] io_MemReq_bits_data,
  input         io_MemResp_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 592:31]
  reg  enable_R_control; // @[HandShaking.scala 592:31]
  reg  enable_valid_R; // @[HandShaking.scala 593:31]
  reg  succ_ready_R_0; // @[HandShaking.scala 600:51]
  reg  succ_valid_R_0; // @[HandShaking.scala 601:51]
  wire  _T_5 = io_SuccOp_0_ready & io_SuccOp_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_1 = _T_5 ? 1'h0 : succ_valid_R_0; // @[HandShaking.scala 622:32]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_12 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] addr_R_data; // @[StoreCache.scala 57:23]
  reg [63:0] data_R_data; // @[StoreCache.scala 58:23]
  reg  addr_valid_R; // @[StoreCache.scala 59:29]
  reg  data_valid_R; // @[StoreCache.scala 60:29]
  reg [1:0] state; // @[StoreCache.scala 64:22]
  wire  _T_18 = io_GepAddr_ready & io_GepAddr_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_13 = _T_18 | addr_valid_R; // @[StoreCache.scala 78:27]
  wire  _T_19 = io_inData_ready & io_inData_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_17 = _T_19 | data_valid_R; // @[StoreCache.scala 83:26]
  wire  mem_req_fire = addr_valid_R & data_valid_R; // @[StoreCache.scala 100:51]
  wire  _T_38 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_40 = data_valid_R & addr_valid_R; // @[StoreCache.scala 152:27]
  wire  _T_41 = enable_R_control & mem_req_fire; // @[StoreCache.scala 153:33]
  wire  _GEN_28 = _T_40 & _T_41; // @[StoreCache.scala 152:44]
  wire  _GEN_33 = enable_valid_R & _GEN_28; // @[StoreCache.scala 151:51]
  wire  _T_44 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire  _GEN_38 = io_MemResp_valid | _GEN_1; // @[StoreCache.scala 186:30]
  wire  _T_47 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire  _T_49 = &succ_ready_R_0; // @[HandShaking.scala 707:36]
  wire  _T_51 = &io_SuccOp_0_ready; // @[HandShaking.scala 707:72]
  wire  _T_52 = _T_49 | _T_51; // @[HandShaking.scala 707:41]
  wire  _T_61 = ~reset; // @[StoreCache.scala 207:17]
  wire  _GEN_94 = ~_T_38; // @[StoreCache.scala 207:17]
  wire  _GEN_95 = ~_T_44; // @[StoreCache.scala 207:17]
  wire  _GEN_96 = _GEN_94 & _GEN_95; // @[StoreCache.scala 207:17]
  wire  _GEN_97 = _GEN_96 & _T_47; // @[StoreCache.scala 207:17]
  wire  _GEN_98 = _GEN_97 & _T_52; // @[StoreCache.scala 207:17]
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 650:19]
  assign io_SuccOp_0_valid = succ_valid_R_0; // @[HandShaking.scala 619:24]
  assign io_GepAddr_ready = ~addr_valid_R; // @[StoreCache.scala 73:20 StoreCache.scala 77:20]
  assign io_inData_ready = ~data_valid_R; // @[StoreCache.scala 74:19]
  assign io_MemReq_valid = _T_38 & _GEN_33; // @[StoreCache.scala 143:19 StoreCache.scala 154:29]
  assign io_MemReq_bits_addr = addr_R_data; // @[StoreCache.scala 137:23]
  assign io_MemReq_bits_data = data_R_data; // @[StoreCache.scala 138:23]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  succ_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  succ_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  addr_R_data = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  data_R_data = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  addr_valid_R = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_valid_R = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_8) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_8) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_38) begin
      if (_T_8) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_44) begin
      if (_T_8) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_47) begin
      if (_T_52) begin
        enable_valid_R <= 1'h0;
      end else if (_T_8) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_8) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      succ_ready_R_0 <= 1'h0;
    end else if (_T_38) begin
      if (_T_5) begin
        succ_ready_R_0 <= io_SuccOp_0_ready;
      end
    end else if (_T_44) begin
      if (_T_5) begin
        succ_ready_R_0 <= io_SuccOp_0_ready;
      end
    end else if (_T_47) begin
      if (_T_52) begin
        succ_ready_R_0 <= 1'h0;
      end else if (_T_5) begin
        succ_ready_R_0 <= io_SuccOp_0_ready;
      end
    end else if (_T_5) begin
      succ_ready_R_0 <= io_SuccOp_0_ready;
    end
    if (reset) begin
      succ_valid_R_0 <= 1'h0;
    end else if (_T_38) begin
      if (enable_valid_R) begin
        if (_T_40) begin
          if (_T_41) begin
            if (_T_5) begin
              succ_valid_R_0 <= 1'h0;
            end
          end else begin
            succ_valid_R_0 <= 1'h1;
          end
        end else if (_T_5) begin
          succ_valid_R_0 <= 1'h0;
        end
      end else if (_T_5) begin
        succ_valid_R_0 <= 1'h0;
      end
    end else if (_T_44) begin
      succ_valid_R_0 <= _GEN_38;
    end else if (_T_5) begin
      succ_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_12;
    end
    if (reset) begin
      addr_R_data <= 64'h0;
    end else if (_T_38) begin
      if (_T_18) begin
        addr_R_data <= io_GepAddr_bits_data;
      end
    end else if (_T_44) begin
      if (_T_18) begin
        addr_R_data <= io_GepAddr_bits_data;
      end
    end else if (_T_47) begin
      if (_T_52) begin
        addr_R_data <= 64'h0;
      end else if (_T_18) begin
        addr_R_data <= io_GepAddr_bits_data;
      end
    end else if (_T_18) begin
      addr_R_data <= io_GepAddr_bits_data;
    end
    if (reset) begin
      data_R_data <= 64'h0;
    end else if (_T_38) begin
      if (_T_19) begin
        data_R_data <= io_inData_bits_data;
      end
    end else if (_T_44) begin
      if (_T_19) begin
        data_R_data <= io_inData_bits_data;
      end
    end else if (_T_47) begin
      if (_T_52) begin
        data_R_data <= 64'h0;
      end else if (_T_19) begin
        data_R_data <= io_inData_bits_data;
      end
    end else if (_T_19) begin
      data_R_data <= io_inData_bits_data;
    end
    if (reset) begin
      addr_valid_R <= 1'h0;
    end else if (_T_38) begin
      addr_valid_R <= _GEN_13;
    end else if (_T_44) begin
      addr_valid_R <= _GEN_13;
    end else if (_T_47) begin
      if (_T_52) begin
        addr_valid_R <= 1'h0;
      end else begin
        addr_valid_R <= _GEN_13;
      end
    end else begin
      addr_valid_R <= _GEN_13;
    end
    if (reset) begin
      data_valid_R <= 1'h0;
    end else if (_T_38) begin
      data_valid_R <= _GEN_17;
    end else if (_T_44) begin
      data_valid_R <= _GEN_17;
    end else if (_T_47) begin
      if (_T_52) begin
        data_valid_R <= 1'h0;
      end else begin
        data_valid_R <= _GEN_17;
      end
    end else begin
      data_valid_R <= _GEN_17;
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_38) begin
      if (enable_valid_R) begin
        if (_T_40) begin
          if (_T_41) begin
            if (io_MemReq_ready) begin
              state <= 2'h1;
            end
          end else begin
            state <= 2'h2;
          end
        end
      end
    end else if (_T_44) begin
      if (io_MemResp_valid) begin
        state <= 2'h2;
      end
    end else if (_T_47) begin
      if (_T_52) begin
        state <= 2'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_98 & _T_61) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [STORE] [Name: st_29] [ID: 29] [Pred: %d] [Addr: 0x%x] [Data: 0x%x] [Cycle: %d]\n",enable_R_taskID,enable_R_control,addr_R_data,data_R_data,cycleCount); // @[StoreCache.scala 207:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ComputeNode_6(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [4:0]  io_Out_0_bits_taskID,
  output [63:0] io_Out_0_bits_data,
  input         io_Out_1_ready,
  output        io_Out_1_valid,
  output [63:0] io_Out_1_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [63:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_in2; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_ready_R_1; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  reg  out_valid_R_1; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_2 = io_Out_1_ready & io_Out_1_valid; // @[Decoupled.scala 40:37]
  wire  _T_4 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_8 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg [63:0] right_R_data; // @[ComputeNode.scala 57:24]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 91:19]
  wire  _T_13 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_13 = _T_13 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_15 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_17 = _T_15 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_23 = ~state; // @[ComputeNode.scala 75:67]
  wire  _T_29 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_30 = _T_29 & right_valid_R; // @[ComputeNode.scala 144:43]
  wire  _T_36 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_37 = _T_2 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_39 = ~reset; // @[ComputeNode.scala 174:17]
  wire [63:0] _T_32_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_19 = _T_30 ? _T_32_data : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_25 = _T_30 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_26 = _T_30 | out_valid_R_1; // @[ComputeNode.scala 144:81]
  wire  _GEN_31 = _T_30 | state; // @[ComputeNode.scala 144:81]
  wire  _T_43 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _T_44 = out_ready_R_1 | _T_2; // @[HandShaking.scala 251:83]
  wire  _T_45 = _T_43 & _T_44; // @[HandShaking.scala 252:27]
  wire  _GEN_62 = _T_23 & _T_30; // @[ComputeNode.scala 174:17]
  UALU_2 FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_in2(FU_io_in2),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_23 ? _GEN_25 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_Out_0_bits_data = _T_23 ? _GEN_19 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_Out_1_valid = _T_23 ? _GEN_26 : out_valid_R_1; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_1_bits_data = _T_23 ? _GEN_19 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
  assign FU_io_in2 = right_R_data; // @[ComputeNode.scala 102:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_ready_R_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  out_valid_R_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  cycleCount = _RAND_7[14:0];
  _RAND_8 = {2{`RANDOM}};
  left_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  left_valid_R = _RAND_9[0:0];
  _RAND_10 = {2{`RANDOM}};
  right_R_data = _RAND_10[63:0];
  _RAND_11 = {1{`RANDOM}};
  right_valid_R = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  state = _RAND_12[0:0];
  _RAND_13 = {2{`RANDOM}};
  out_data_R = _RAND_13[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_4) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_4) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_23) begin
      if (_T_4) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_45) begin
        enable_valid_R <= 1'h0;
      end else if (_T_4) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_4) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_23) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_45) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_ready_R_1 <= 1'h0;
    end else if (_T_23) begin
      if (_T_2) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (state) begin
      if (_T_45) begin
        out_ready_R_1 <= 1'h0;
      end else if (_T_2) begin
        out_ready_R_1 <= io_Out_1_ready;
      end
    end else if (_T_2) begin
      out_ready_R_1 <= io_Out_1_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_23) begin
      if (_T_30) begin
        out_valid_R_0 <= _T_36;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      out_valid_R_1 <= 1'h0;
    end else if (_T_23) begin
      if (_T_30) begin
        out_valid_R_1 <= _T_37;
      end else if (_T_2) begin
        out_valid_R_1 <= 1'h0;
      end
    end else if (_T_2) begin
      out_valid_R_1 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_8;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_13) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_23) begin
      if (_T_30) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_13;
      end
    end else begin
      left_valid_R <= _GEN_13;
    end
    if (reset) begin
      right_R_data <= 64'h0;
    end else if (_T_15) begin
      right_R_data <= 64'h1;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_23) begin
      if (_T_30) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_17;
      end
    end else begin
      right_valid_R <= _GEN_17;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_23) begin
      state <= _GEN_31;
    end else if (state) begin
      if (_T_45) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_23) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_45) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_39) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: binaryOp_indvars_iv_next30] [ID: 30] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: add] [Cycle: %d]\n",taskID,enable_R_control,left_R_data,right_R_data,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ComputeNode_7(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  input         io_Out_0_ready,
  output        io_Out_0_valid,
  output [4:0]  io_Out_0_bits_taskID,
  output [63:0] io_Out_0_bits_data,
  output        io_LeftIO_ready,
  input         io_LeftIO_valid,
  input  [63:0] io_LeftIO_bits_data,
  output        io_RightIO_ready,
  input         io_RightIO_valid,
  input  [63:0] io_RightIO_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] FU_io_in1; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_in2; // @[ComputeNode.scala 61:18]
  wire [63:0] FU_io_out; // @[ComputeNode.scala 61:18]
  reg [4:0] enable_R_taskID; // @[HandShaking.scala 181:31]
  reg  enable_R_control; // @[HandShaking.scala 181:31]
  reg  enable_valid_R; // @[HandShaking.scala 182:31]
  reg  out_ready_R_0; // @[HandShaking.scala 185:46]
  reg  out_valid_R_0; // @[HandShaking.scala 186:46]
  wire  _T_1 = io_Out_0_ready & io_Out_0_valid; // @[Decoupled.scala 40:37]
  wire  _T_3 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_7 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [63:0] left_R_data; // @[ComputeNode.scala 53:23]
  reg  left_valid_R; // @[ComputeNode.scala 54:29]
  reg [63:0] right_R_data; // @[ComputeNode.scala 57:24]
  reg  right_valid_R; // @[ComputeNode.scala 58:30]
  reg  state; // @[ComputeNode.scala 64:22]
  reg [63:0] out_data_R; // @[ComputeNode.scala 89:27]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 91:19]
  wire  _T_12 = io_LeftIO_ready & io_LeftIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_11 = _T_12 | left_valid_R; // @[ComputeNode.scala 105:26]
  wire  _T_14 = io_RightIO_ready & io_RightIO_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_14 | right_valid_R; // @[ComputeNode.scala 111:27]
  wire  _T_22 = ~state; // @[ComputeNode.scala 75:67]
  wire  _T_27 = enable_valid_R & left_valid_R; // @[ComputeNode.scala 144:27]
  wire  _T_28 = _T_27 & right_valid_R; // @[ComputeNode.scala 144:43]
  wire  _T_32 = _T_1 ^ 1'h1; // @[HandShaking.scala 274:72]
  wire  _T_34 = ~reset; // @[ComputeNode.scala 174:17]
  wire [63:0] _T_30_data = FU_io_out; // @[interfaces.scala 289:20 interfaces.scala 290:15]
  wire [63:0] _GEN_17 = _T_28 ? _T_30_data : out_data_R; // @[ComputeNode.scala 144:81]
  wire  _GEN_20 = _T_28 | out_valid_R_0; // @[ComputeNode.scala 144:81]
  wire  _GEN_24 = _T_28 | state; // @[ComputeNode.scala 144:81]
  wire  _T_37 = out_ready_R_0 | _T_1; // @[HandShaking.scala 251:83]
  wire  _GEN_47 = _T_22 & _T_28; // @[ComputeNode.scala 174:17]
  UALU FU ( // @[ComputeNode.scala 61:18]
    .io_in1(FU_io_in1),
    .io_in2(FU_io_in2),
    .io_out(FU_io_out)
  );
  assign io_enable_ready = ~enable_valid_R; // @[HandShaking.scala 205:19]
  assign io_Out_0_valid = _T_22 ? _GEN_20 : out_valid_R_0; // @[HandShaking.scala 194:21 ComputeNode.scala 168:32]
  assign io_Out_0_bits_taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_Out_0_bits_data = _T_22 ? _GEN_17 : out_data_R; // @[ComputeNode.scala 137:25 ComputeNode.scala 166:33]
  assign io_LeftIO_ready = ~left_valid_R; // @[ComputeNode.scala 104:19]
  assign io_RightIO_ready = ~right_valid_R; // @[ComputeNode.scala 110:20]
  assign FU_io_in1 = left_R_data; // @[ComputeNode.scala 101:13]
  assign FU_io_in2 = right_R_data; // @[ComputeNode.scala 102:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enable_R_taskID = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_ready_R_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_valid_R_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cycleCount = _RAND_5[14:0];
  _RAND_6 = {2{`RANDOM}};
  left_R_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  left_valid_R = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  right_R_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  right_valid_R = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[0:0];
  _RAND_11 = {2{`RANDOM}};
  out_data_R = _RAND_11[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_3) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_3) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (state) begin
      if (_T_37) begin
        enable_valid_R <= 1'h0;
      end else if (_T_3) begin
        enable_valid_R <= io_enable_valid;
      end
    end else if (_T_3) begin
      enable_valid_R <= io_enable_valid;
    end
    if (reset) begin
      out_ready_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (state) begin
      if (_T_37) begin
        out_ready_R_0 <= 1'h0;
      end else if (_T_1) begin
        out_ready_R_0 <= io_Out_0_ready;
      end
    end else if (_T_1) begin
      out_ready_R_0 <= io_Out_0_ready;
    end
    if (reset) begin
      out_valid_R_0 <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        out_valid_R_0 <= _T_32;
      end else if (_T_1) begin
        out_valid_R_0 <= 1'h0;
      end
    end else if (_T_1) begin
      out_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_7;
    end
    if (reset) begin
      left_R_data <= 64'h0;
    end else if (_T_12) begin
      left_R_data <= io_LeftIO_bits_data;
    end
    if (reset) begin
      left_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        left_valid_R <= 1'h0;
      end else begin
        left_valid_R <= _GEN_11;
      end
    end else begin
      left_valid_R <= _GEN_11;
    end
    if (reset) begin
      right_R_data <= 64'h0;
    end else if (_T_14) begin
      right_R_data <= io_RightIO_bits_data;
    end
    if (reset) begin
      right_valid_R <= 1'h0;
    end else if (_T_22) begin
      if (_T_28) begin
        right_valid_R <= 1'h0;
      end else begin
        right_valid_R <= _GEN_15;
      end
    end else begin
      right_valid_R <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_22) begin
      state <= _GEN_24;
    end else if (state) begin
      if (_T_37) begin
        state <= 1'h0;
      end
    end
    if (reset) begin
      out_data_R <= 64'h0;
    end else if (_T_22) begin
      if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (state) begin
      if (_T_37) begin
        out_data_R <= 64'h0;
      end else if (enable_R_control) begin
        out_data_R <= FU_io_out;
      end else begin
        out_data_R <= 64'h0;
      end
    end else if (enable_R_control) begin
      out_data_R <= FU_io_out;
    end else begin
      out_data_R <= 64'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_47 & _T_34) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [COMPUTE] [Name: icmp_exitcond23] [ID: 23] [Pred: %d] [In(0): 0x%x] [In(1) 0x%x] [Out: 0x%x] [OpCode: eq] [Cycle: %d]\n",taskID,enable_R_control,left_R_data,right_R_data,FU_io_out,cycleCount); // @[ComputeNode.scala 174:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module CBranchNodeVariable_2(
  input         clock,
  input         reset,
  output        io_enable_ready,
  input         io_enable_valid,
  input  [4:0]  io_enable_bits_taskID,
  input         io_enable_bits_control,
  output        io_CmpIO_ready,
  input         io_CmpIO_valid,
  input  [4:0]  io_CmpIO_bits_taskID,
  input  [63:0] io_CmpIO_bits_data,
  output        io_PredOp_0_ready,
  input         io_PredOp_0_valid,
  input         io_TrueOutput_0_ready,
  output        io_TrueOutput_0_valid,
  output        io_TrueOutput_0_bits_control,
  input         io_FalseOutput_0_ready,
  output        io_FalseOutput_0_valid,
  output [4:0]  io_FalseOutput_0_bits_taskID,
  output        io_FalseOutput_0_bits_control
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] cmp_R_taskID; // @[BranchNode.scala 1182:22]
  reg  cmp_R_control; // @[BranchNode.scala 1182:22]
  reg  cmp_valid; // @[BranchNode.scala 1183:26]
  reg [4:0] enable_R_taskID; // @[BranchNode.scala 1186:25]
  reg  enable_R_control; // @[BranchNode.scala 1186:25]
  reg  enable_valid_R; // @[BranchNode.scala 1187:31]
  reg  predecessor_valid_R_0; // @[BranchNode.scala 1191:61]
  reg  output_true_R_control; // @[BranchNode.scala 1193:30]
  reg  output_true_valid_R_0; // @[BranchNode.scala 1194:54]
  reg  fire_true_R_0; // @[BranchNode.scala 1195:46]
  reg [4:0] output_false_R_taskID; // @[BranchNode.scala 1197:31]
  reg  output_false_R_control; // @[BranchNode.scala 1197:31]
  reg  output_false_valid_R_0; // @[BranchNode.scala 1198:56]
  reg  fire_false_R_0; // @[BranchNode.scala 1199:48]
  wire [4:0] task_id = enable_R_taskID | cmp_R_taskID; // @[BranchNode.scala 1201:33]
  wire  _T_10 = io_CmpIO_ready & io_CmpIO_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = |io_CmpIO_bits_data; // @[BranchNode.scala 1207:44]
  wire  _GEN_4 = _T_10 | cmp_valid; // @[BranchNode.scala 1206:23]
  wire  _T_13 = io_PredOp_0_ready & io_PredOp_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_8 = _T_13 | predecessor_valid_R_0; // @[BranchNode.scala 1214:29]
  wire  _T_15 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_12 = _T_15 | enable_valid_R; // @[BranchNode.scala 1232:24]
  wire  true_output = enable_R_control & cmp_R_control; // @[BranchNode.scala 1238:38]
  wire  _T_16 = ~cmp_R_control; // @[BranchNode.scala 1239:43]
  wire  false_output = enable_R_control & _T_16; // @[BranchNode.scala 1239:39]
  wire  _T_17 = io_TrueOutput_0_ready & io_TrueOutput_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_13 = _T_17 | fire_true_R_0; // @[BranchNode.scala 1250:33]
  wire  _GEN_14 = _T_17 ? 1'h0 : output_true_valid_R_0; // @[BranchNode.scala 1250:33]
  wire  _T_18 = io_FalseOutput_0_ready & io_FalseOutput_0_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_18 | fire_false_R_0; // @[BranchNode.scala 1266:34]
  wire  _GEN_16 = _T_18 ? 1'h0 : output_false_valid_R_0; // @[BranchNode.scala 1266:34]
  reg  state; // @[BranchNode.scala 1278:22]
  wire  _T_19 = ~state; // @[Conditional.scala 37:30]
  wire  _T_20 = enable_valid_R & cmp_valid; // @[BranchNode.scala 1283:27]
  wire  _T_21 = _T_20 & predecessor_valid_R_0; // @[BranchNode.scala 1283:40]
  wire  _T_23 = ~reset; // @[BranchNode.scala 1293:21]
  wire  _GEN_17 = _T_21 | _GEN_14; // @[BranchNode.scala 1283:65]
  wire  _GEN_18 = _T_21 | _GEN_16; // @[BranchNode.scala 1283:65]
  wire  _GEN_19 = _T_21 | state; // @[BranchNode.scala 1283:65]
  wire  _T_29 = fire_true_R_0 & fire_false_R_0; // @[BranchNode.scala 1313:27]
  wire  _GEN_80 = _T_19 & _T_21; // @[BranchNode.scala 1293:21]
  wire  _GEN_81 = _GEN_80 & enable_R_control; // @[BranchNode.scala 1293:21]
  wire  _GEN_82 = _GEN_81 & cmp_R_control; // @[BranchNode.scala 1293:21]
  wire  _GEN_86 = _GEN_81 & _T_16; // @[BranchNode.scala 1298:21]
  wire  _GEN_88 = ~enable_R_control; // @[BranchNode.scala 1304:19]
  wire  _GEN_89 = _GEN_80 & _GEN_88; // @[BranchNode.scala 1304:19]
  assign io_enable_ready = ~enable_valid_R; // @[BranchNode.scala 1231:19]
  assign io_CmpIO_ready = ~cmp_valid; // @[BranchNode.scala 1205:18]
  assign io_PredOp_0_ready = ~predecessor_valid_R_0; // @[BranchNode.scala 1213:24]
  assign io_TrueOutput_0_valid = output_true_valid_R_0; // @[BranchNode.scala 1246:28]
  assign io_TrueOutput_0_bits_control = output_true_R_control; // @[BranchNode.scala 1245:27]
  assign io_FalseOutput_0_valid = output_false_valid_R_0; // @[BranchNode.scala 1262:29]
  assign io_FalseOutput_0_bits_taskID = output_false_R_taskID; // @[BranchNode.scala 1261:28]
  assign io_FalseOutput_0_bits_control = output_false_R_control; // @[BranchNode.scala 1261:28]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  cmp_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  cmp_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cmp_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  enable_R_taskID = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  enable_R_control = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  enable_valid_R = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  predecessor_valid_R_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  output_true_R_control = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  output_true_valid_R_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  fire_true_R_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  output_false_R_taskID = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  output_false_R_control = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  output_false_valid_R_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  fire_false_R_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      cmp_R_taskID <= 5'h0;
    end else if (_T_19) begin
      if (_T_10) begin
        cmp_R_taskID <= io_CmpIO_bits_taskID;
      end
    end else if (state) begin
      if (_T_29) begin
        cmp_R_taskID <= 5'h0;
      end else if (_T_10) begin
        cmp_R_taskID <= io_CmpIO_bits_taskID;
      end
    end else if (_T_10) begin
      cmp_R_taskID <= io_CmpIO_bits_taskID;
    end
    if (reset) begin
      cmp_R_control <= 1'h0;
    end else if (_T_19) begin
      if (_T_10) begin
        cmp_R_control <= _T_11;
      end
    end else if (state) begin
      if (_T_29) begin
        cmp_R_control <= 1'h0;
      end else if (_T_10) begin
        cmp_R_control <= _T_11;
      end
    end else if (_T_10) begin
      cmp_R_control <= _T_11;
    end
    if (reset) begin
      cmp_valid <= 1'h0;
    end else if (_T_19) begin
      cmp_valid <= _GEN_4;
    end else if (state) begin
      if (_T_29) begin
        cmp_valid <= 1'h0;
      end else begin
        cmp_valid <= _GEN_4;
      end
    end else begin
      cmp_valid <= _GEN_4;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_19) begin
      if (_T_15) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (state) begin
      if (_T_29) begin
        enable_R_taskID <= 5'h0;
      end else if (_T_15) begin
        enable_R_taskID <= io_enable_bits_taskID;
      end
    end else if (_T_15) begin
      enable_R_taskID <= io_enable_bits_taskID;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_19) begin
      if (_T_15) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (state) begin
      if (_T_29) begin
        enable_R_control <= 1'h0;
      end else if (_T_15) begin
        enable_R_control <= io_enable_bits_control;
      end
    end else if (_T_15) begin
      enable_R_control <= io_enable_bits_control;
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_19) begin
      enable_valid_R <= _GEN_12;
    end else if (state) begin
      if (_T_29) begin
        enable_valid_R <= 1'h0;
      end else begin
        enable_valid_R <= _GEN_12;
      end
    end else begin
      enable_valid_R <= _GEN_12;
    end
    if (reset) begin
      predecessor_valid_R_0 <= 1'h0;
    end else if (_T_19) begin
      predecessor_valid_R_0 <= _GEN_8;
    end else if (state) begin
      if (_T_29) begin
        predecessor_valid_R_0 <= 1'h0;
      end else begin
        predecessor_valid_R_0 <= _GEN_8;
      end
    end else begin
      predecessor_valid_R_0 <= _GEN_8;
    end
    if (reset) begin
      output_true_R_control <= 1'h0;
    end else if (_T_19) begin
      output_true_R_control <= true_output;
    end else if (state) begin
      if (_T_29) begin
        output_true_R_control <= 1'h0;
      end else begin
        output_true_R_control <= true_output;
      end
    end else begin
      output_true_R_control <= true_output;
    end
    if (reset) begin
      output_true_valid_R_0 <= 1'h0;
    end else if (_T_19) begin
      output_true_valid_R_0 <= _GEN_17;
    end else if (state) begin
      if (_T_29) begin
        output_true_valid_R_0 <= 1'h0;
      end else if (_T_17) begin
        output_true_valid_R_0 <= 1'h0;
      end
    end else if (_T_17) begin
      output_true_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_true_R_0 <= 1'h0;
    end else if (_T_19) begin
      fire_true_R_0 <= _GEN_13;
    end else if (state) begin
      if (_T_29) begin
        fire_true_R_0 <= 1'h0;
      end else begin
        fire_true_R_0 <= _GEN_13;
      end
    end else begin
      fire_true_R_0 <= _GEN_13;
    end
    if (reset) begin
      output_false_R_taskID <= 5'h0;
    end else if (_T_19) begin
      output_false_R_taskID <= task_id;
    end else if (state) begin
      if (_T_29) begin
        output_false_R_taskID <= 5'h0;
      end else begin
        output_false_R_taskID <= task_id;
      end
    end else begin
      output_false_R_taskID <= task_id;
    end
    if (reset) begin
      output_false_R_control <= 1'h0;
    end else if (_T_19) begin
      output_false_R_control <= false_output;
    end else if (state) begin
      if (_T_29) begin
        output_false_R_control <= 1'h0;
      end else begin
        output_false_R_control <= false_output;
      end
    end else begin
      output_false_R_control <= false_output;
    end
    if (reset) begin
      output_false_valid_R_0 <= 1'h0;
    end else if (_T_19) begin
      output_false_valid_R_0 <= _GEN_18;
    end else if (state) begin
      if (_T_29) begin
        output_false_valid_R_0 <= 1'h0;
      end else if (_T_18) begin
        output_false_valid_R_0 <= 1'h0;
      end
    end else if (_T_18) begin
      output_false_valid_R_0 <= 1'h0;
    end
    if (reset) begin
      fire_false_R_0 <= 1'h0;
    end else if (_T_19) begin
      fire_false_R_0 <= _GEN_15;
    end else if (state) begin
      if (_T_29) begin
        fire_false_R_0 <= 1'h0;
      end else begin
        fire_false_R_0 <= _GEN_15;
      end
    end else begin
      fire_false_R_0 <= _GEN_15;
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_19) begin
      state <= _GEN_19;
    end else if (state) begin
      if (_T_29) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_82 & _T_23) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_32] [ID: 32] [Out: T:1 - F:0] [Cycle: %d]\n",task_id,cycleCount); // @[BranchNode.scala 1293:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_86 & _T_23) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_32] [ID: 32] [Out: T:0 - F:1] [Cycle: %d]\n",task_id,cycleCount); // @[BranchNode.scala 1298:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_23) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CBR] [Name: br_32] [ID: 32] [Out: T:0 - F:0] [Cycle: %d]\n",task_id,cycleCount); // @[BranchNode.scala 1304:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ConstFastNode(
  input   clock,
  input   reset,
  output  io_enable_ready,
  input   io_enable_valid,
  input   io_enable_bits_control,
  input   io_Out_ready,
  output  io_Out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg  enable_R_control; // @[ConstNode.scala 113:25]
  reg  enable_valid_R; // @[ConstNode.scala 114:31]
  reg  state; // @[ConstNode.scala 135:22]
  wire  _T_7 = ~state; // @[Conditional.scala 37:30]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = ~reset; // @[ConstNode.scala 149:17]
  wire  _GEN_7 = _T_8 | enable_valid_R; // @[ConstNode.scala 139:30]
  wire  _GEN_29 = _T_7 & _T_8; // @[ConstNode.scala 149:17]
  assign io_enable_ready = ~enable_valid_R; // @[ConstNode.scala 126:19]
  assign io_Out_valid = _T_7 ? _GEN_7 : enable_valid_R; // @[ConstNode.scala 127:16 ConstNode.scala 140:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_control = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  enable_valid_R = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_control <= io_enable_bits_control;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_control <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_valid_R <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_valid_R <= 1'h0;
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (_T_9) begin
          state <= 1'h0;
        end else begin
          state <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_29 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CONST] [Name: const0] [ID: 0] [Pred: %d] [Val: 0x%x] [Cycle: %d]\n",5'h0,enable_R_control,64'h0,cycleCount); // @[ConstNode.scala 149:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ConstFastNode_1(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_ready,
  output       io_Out_valid,
  output [4:0] io_Out_bits_taskID
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] enable_R_taskID; // @[ConstNode.scala 113:25]
  reg  enable_R_control; // @[ConstNode.scala 113:25]
  reg  enable_valid_R; // @[ConstNode.scala 114:31]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 116:19]
  reg  state; // @[ConstNode.scala 135:22]
  wire  _T_7 = ~state; // @[Conditional.scala 37:30]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = ~reset; // @[ConstNode.scala 149:17]
  wire  _GEN_7 = _T_8 | enable_valid_R; // @[ConstNode.scala 139:30]
  wire  _GEN_29 = _T_7 & _T_8; // @[ConstNode.scala 149:17]
  assign io_enable_ready = ~enable_valid_R; // @[ConstNode.scala 126:19]
  assign io_Out_valid = _T_7 ? _GEN_7 : enable_valid_R; // @[ConstNode.scala 127:16 ConstNode.scala 140:22]
  assign io_Out_bits_taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 129:15]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enable_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_valid_R = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_taskID <= io_enable_bits_taskID;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_taskID <= 5'h0;
      end
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_control <= io_enable_bits_control;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_control <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_valid_R <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_valid_R <= 1'h0;
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (_T_9) begin
          state <= 1'h0;
        end else begin
          state <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_29 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CONST] [Name: const1] [ID: 1] [Pred: %d] [Val: 0x%x] [Cycle: %d]\n",taskID,enable_R_control,64'h0,cycleCount); // @[ConstNode.scala 149:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ConstFastNode_2(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_ready,
  output       io_Out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] enable_R_taskID; // @[ConstNode.scala 113:25]
  reg  enable_R_control; // @[ConstNode.scala 113:25]
  reg  enable_valid_R; // @[ConstNode.scala 114:31]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 116:19]
  reg  state; // @[ConstNode.scala 135:22]
  wire  _T_7 = ~state; // @[Conditional.scala 37:30]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = ~reset; // @[ConstNode.scala 149:17]
  wire  _GEN_7 = _T_8 | enable_valid_R; // @[ConstNode.scala 139:30]
  wire  _GEN_29 = _T_7 & _T_8; // @[ConstNode.scala 149:17]
  assign io_enable_ready = ~enable_valid_R; // @[ConstNode.scala 126:19]
  assign io_Out_valid = _T_7 ? _GEN_7 : enable_valid_R; // @[ConstNode.scala 127:16 ConstNode.scala 140:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enable_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_valid_R = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_taskID <= io_enable_bits_taskID;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_taskID <= 5'h0;
      end
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_control <= io_enable_bits_control;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_control <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_valid_R <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_valid_R <= 1'h0;
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (_T_9) begin
          state <= 1'h0;
        end else begin
          state <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_29 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CONST] [Name: const2] [ID: 2] [Pred: %d] [Val: 0x%x] [Cycle: %d]\n",taskID,enable_R_control,64'h1,cycleCount); // @[ConstNode.scala 149:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ConstFastNode_3(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_ready,
  output       io_Out_valid,
  output [4:0] io_Out_bits_taskID
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] enable_R_taskID; // @[ConstNode.scala 113:25]
  reg  enable_R_control; // @[ConstNode.scala 113:25]
  reg  enable_valid_R; // @[ConstNode.scala 114:31]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 116:19]
  reg  state; // @[ConstNode.scala 135:22]
  wire  _T_7 = ~state; // @[Conditional.scala 37:30]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = ~reset; // @[ConstNode.scala 149:17]
  wire  _GEN_7 = _T_8 | enable_valid_R; // @[ConstNode.scala 139:30]
  wire  _GEN_29 = _T_7 & _T_8; // @[ConstNode.scala 149:17]
  assign io_enable_ready = ~enable_valid_R; // @[ConstNode.scala 126:19]
  assign io_Out_valid = _T_7 ? _GEN_7 : enable_valid_R; // @[ConstNode.scala 127:16 ConstNode.scala 140:22]
  assign io_Out_bits_taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 129:15]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enable_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_valid_R = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_taskID <= io_enable_bits_taskID;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_taskID <= 5'h0;
      end
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_control <= io_enable_bits_control;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_control <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_valid_R <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_valid_R <= 1'h0;
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (_T_9) begin
          state <= 1'h0;
        end else begin
          state <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_29 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CONST] [Name: const3] [ID: 3] [Pred: %d] [Val: 0x%x] [Cycle: %d]\n",taskID,enable_R_control,64'h0,cycleCount); // @[ConstNode.scala 149:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ConstFastNode_4(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_ready,
  output       io_Out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] enable_R_taskID; // @[ConstNode.scala 113:25]
  reg  enable_R_control; // @[ConstNode.scala 113:25]
  reg  enable_valid_R; // @[ConstNode.scala 114:31]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 116:19]
  reg  state; // @[ConstNode.scala 135:22]
  wire  _T_7 = ~state; // @[Conditional.scala 37:30]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = ~reset; // @[ConstNode.scala 149:17]
  wire  _GEN_7 = _T_8 | enable_valid_R; // @[ConstNode.scala 139:30]
  wire  _GEN_29 = _T_7 & _T_8; // @[ConstNode.scala 149:17]
  assign io_enable_ready = ~enable_valid_R; // @[ConstNode.scala 126:19]
  assign io_Out_valid = _T_7 ? _GEN_7 : enable_valid_R; // @[ConstNode.scala 127:16 ConstNode.scala 140:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enable_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_valid_R = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_taskID <= io_enable_bits_taskID;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_taskID <= 5'h0;
      end
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_control <= io_enable_bits_control;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_control <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_valid_R <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_valid_R <= 1'h0;
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (_T_9) begin
          state <= 1'h0;
        end else begin
          state <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_29 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CONST] [Name: const4] [ID: 4] [Pred: %d] [Val: 0x%x] [Cycle: %d]\n",taskID,enable_R_control,64'h0,cycleCount); // @[ConstNode.scala 149:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ConstFastNode_5(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_ready,
  output       io_Out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] enable_R_taskID; // @[ConstNode.scala 113:25]
  reg  enable_R_control; // @[ConstNode.scala 113:25]
  reg  enable_valid_R; // @[ConstNode.scala 114:31]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 116:19]
  reg  state; // @[ConstNode.scala 135:22]
  wire  _T_7 = ~state; // @[Conditional.scala 37:30]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = ~reset; // @[ConstNode.scala 149:17]
  wire  _GEN_7 = _T_8 | enable_valid_R; // @[ConstNode.scala 139:30]
  wire  _GEN_29 = _T_7 & _T_8; // @[ConstNode.scala 149:17]
  assign io_enable_ready = ~enable_valid_R; // @[ConstNode.scala 126:19]
  assign io_Out_valid = _T_7 ? _GEN_7 : enable_valid_R; // @[ConstNode.scala 127:16 ConstNode.scala 140:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enable_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_valid_R = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_taskID <= io_enable_bits_taskID;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_taskID <= 5'h0;
      end
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_control <= io_enable_bits_control;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_control <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_valid_R <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_valid_R <= 1'h0;
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (_T_9) begin
          state <= 1'h0;
        end else begin
          state <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_29 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CONST] [Name: const5] [ID: 5] [Pred: %d] [Val: 0x%x] [Cycle: %d]\n",taskID,enable_R_control,64'h0,cycleCount); // @[ConstNode.scala 149:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ConstFastNode_6(
  input        clock,
  input        reset,
  output       io_enable_ready,
  input        io_enable_valid,
  input  [4:0] io_enable_bits_taskID,
  input        io_enable_bits_control,
  input        io_Out_ready,
  output       io_Out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [14:0] cycleCount; // @[Counter.scala 29:33]
  wire [14:0] _T_3 = cycleCount + 15'h1; // @[Counter.scala 39:22]
  reg [4:0] enable_R_taskID; // @[ConstNode.scala 113:25]
  reg  enable_R_control; // @[ConstNode.scala 113:25]
  reg  enable_valid_R; // @[ConstNode.scala 114:31]
  wire [4:0] taskID = enable_valid_R ? enable_R_taskID : io_enable_bits_taskID; // @[ConstNode.scala 116:19]
  reg  state; // @[ConstNode.scala 135:22]
  wire  _T_7 = ~state; // @[Conditional.scala 37:30]
  wire  _T_8 = io_enable_ready & io_enable_valid; // @[Decoupled.scala 40:37]
  wire  _T_9 = io_Out_ready & io_Out_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = ~reset; // @[ConstNode.scala 149:17]
  wire  _GEN_7 = _T_8 | enable_valid_R; // @[ConstNode.scala 139:30]
  wire  _GEN_29 = _T_7 & _T_8; // @[ConstNode.scala 149:17]
  assign io_enable_ready = ~enable_valid_R; // @[ConstNode.scala 126:19]
  assign io_Out_valid = _T_7 ? _GEN_7 : enable_valid_R; // @[ConstNode.scala 127:16 ConstNode.scala 140:22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycleCount = _RAND_0[14:0];
  _RAND_1 = {1{`RANDOM}};
  enable_R_taskID = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enable_R_control = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_valid_R = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleCount <= 15'h0;
    end else begin
      cycleCount <= _T_3;
    end
    if (reset) begin
      enable_R_taskID <= 5'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_taskID <= io_enable_bits_taskID;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_taskID <= 5'h0;
      end
    end
    if (reset) begin
      enable_R_control <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_R_control <= io_enable_bits_control;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_R_control <= 1'h0;
      end
    end
    if (reset) begin
      enable_valid_R <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (!(_T_9)) begin
          enable_valid_R <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        enable_valid_R <= 1'h0;
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_7) begin
      if (_T_8) begin
        if (_T_9) begin
          state <= 1'h0;
        end else begin
          state <= 1'h1;
        end
      end
    end else if (state) begin
      if (_T_9) begin
        state <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_29 & _T_11) begin
          $fwrite(32'h80000002,"[LOG] [Relu] [TID: %d] [CONST] [Name: const6] [ID: 6] [Pred: %d] [Val: 0x%x] [Cycle: %d]\n",taskID,enable_R_control,64'h1,cycleCount); // @[ConstNode.scala 149:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module reluDF(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_dataPtrs_field1_data,
  input  [63:0] io_in_bits_dataPtrs_field0_data,
  input  [63:0] io_in_bits_dataVals_field0_data,
  input         io_MemResp_valid,
  input  [63:0] io_MemResp_bits_data,
  input  [7:0]  io_MemResp_bits_tag,
  input         io_MemReq_ready,
  output        io_MemReq_valid,
  output [63:0] io_MemReq_bits_addr,
  output [63:0] io_MemReq_bits_data,
  output [7:0]  io_MemReq_bits_mask,
  output [7:0]  io_MemReq_bits_tag,
  input         io_out_ready,
  output        io_out_valid
);
  wire  mem_ctrl_cache_clock; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_reset; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_rd_mem_0_MemReq_ready; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_rd_mem_0_MemReq_valid; // @[relu.scala 36:30]
  wire [63:0] mem_ctrl_cache_io_rd_mem_0_MemReq_bits_addr; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_rd_mem_0_MemResp_valid; // @[relu.scala 36:30]
  wire [63:0] mem_ctrl_cache_io_rd_mem_0_MemResp_bits_data; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_wr_mem_0_MemReq_ready; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_wr_mem_0_MemReq_valid; // @[relu.scala 36:30]
  wire [63:0] mem_ctrl_cache_io_wr_mem_0_MemReq_bits_addr; // @[relu.scala 36:30]
  wire [63:0] mem_ctrl_cache_io_wr_mem_0_MemReq_bits_data; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_wr_mem_0_MemResp_valid; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_cache_MemReq_ready; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_cache_MemReq_valid; // @[relu.scala 36:30]
  wire [63:0] mem_ctrl_cache_io_cache_MemReq_bits_addr; // @[relu.scala 36:30]
  wire [63:0] mem_ctrl_cache_io_cache_MemReq_bits_data; // @[relu.scala 36:30]
  wire [7:0] mem_ctrl_cache_io_cache_MemReq_bits_mask; // @[relu.scala 36:30]
  wire [7:0] mem_ctrl_cache_io_cache_MemReq_bits_tag; // @[relu.scala 36:30]
  wire  mem_ctrl_cache_io_cache_MemResp_valid; // @[relu.scala 36:30]
  wire [63:0] mem_ctrl_cache_io_cache_MemResp_bits_data; // @[relu.scala 36:30]
  wire [7:0] mem_ctrl_cache_io_cache_MemResp_bits_tag; // @[relu.scala 36:30]
  wire  ArgSplitter_clock; // @[relu.scala 41:27]
  wire  ArgSplitter_reset; // @[relu.scala 41:27]
  wire  ArgSplitter_io_In_ready; // @[relu.scala 41:27]
  wire  ArgSplitter_io_In_valid; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_In_bits_dataPtrs_field1_data; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_In_bits_dataPtrs_field0_data; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_In_bits_dataVals_field0_data; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_enable_ready; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_enable_valid; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_enable_bits_control; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataPtrs_field1_0_ready; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataPtrs_field1_0_valid; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_Out_dataPtrs_field1_0_bits_data; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataPtrs_field0_0_ready; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataPtrs_field0_0_valid; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_Out_dataPtrs_field0_0_bits_data; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataVals_field0_0_ready; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataVals_field0_0_valid; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_Out_dataVals_field0_0_bits_data; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataVals_field0_1_ready; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataVals_field0_1_valid; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_Out_dataVals_field0_1_bits_data; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataVals_field0_2_ready; // @[relu.scala 41:27]
  wire  ArgSplitter_io_Out_dataVals_field0_2_valid; // @[relu.scala 41:27]
  wire [63:0] ArgSplitter_io_Out_dataVals_field0_2_bits_data; // @[relu.scala 41:27]
  wire  Loop_0_clock; // @[relu.scala 50:22]
  wire  Loop_0_reset; // @[relu.scala 50:22]
  wire  Loop_0_io_enable_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_enable_valid; // @[relu.scala 50:22]
  wire [4:0] Loop_0_io_enable_bits_taskID; // @[relu.scala 50:22]
  wire  Loop_0_io_enable_bits_control; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_0_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_InLiveIn_0_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_1_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_1_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_InLiveIn_1_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_2_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_2_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_InLiveIn_2_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_3_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_InLiveIn_3_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_InLiveIn_3_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field3_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field3_0_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_OutLiveIn_field3_0_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field2_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field2_0_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_OutLiveIn_field2_0_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field1_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field1_0_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_OutLiveIn_field1_0_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field0_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_OutLiveIn_field0_0_valid; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_OutLiveIn_field0_0_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_activate_loop_start_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_activate_loop_start_valid; // @[relu.scala 50:22]
  wire [4:0] Loop_0_io_activate_loop_start_bits_taskID; // @[relu.scala 50:22]
  wire  Loop_0_io_activate_loop_start_bits_control; // @[relu.scala 50:22]
  wire  Loop_0_io_activate_loop_back_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_activate_loop_back_valid; // @[relu.scala 50:22]
  wire [4:0] Loop_0_io_activate_loop_back_bits_taskID; // @[relu.scala 50:22]
  wire  Loop_0_io_activate_loop_back_bits_control; // @[relu.scala 50:22]
  wire  Loop_0_io_loopBack_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_loopBack_0_valid; // @[relu.scala 50:22]
  wire [4:0] Loop_0_io_loopBack_0_bits_taskID; // @[relu.scala 50:22]
  wire  Loop_0_io_loopBack_0_bits_control; // @[relu.scala 50:22]
  wire  Loop_0_io_loopFinish_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_loopFinish_0_valid; // @[relu.scala 50:22]
  wire  Loop_0_io_loopFinish_0_bits_control; // @[relu.scala 50:22]
  wire  Loop_0_io_CarryDepenIn_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_CarryDepenIn_0_valid; // @[relu.scala 50:22]
  wire [4:0] Loop_0_io_CarryDepenIn_0_bits_taskID; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_CarryDepenIn_0_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_CarryDepenOut_field0_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_CarryDepenOut_field0_0_valid; // @[relu.scala 50:22]
  wire [4:0] Loop_0_io_CarryDepenOut_field0_0_bits_taskID; // @[relu.scala 50:22]
  wire [63:0] Loop_0_io_CarryDepenOut_field0_0_bits_data; // @[relu.scala 50:22]
  wire  Loop_0_io_loopExit_0_ready; // @[relu.scala 50:22]
  wire  Loop_0_io_loopExit_0_valid; // @[relu.scala 50:22]
  wire [4:0] Loop_0_io_loopExit_0_bits_taskID; // @[relu.scala 50:22]
  wire  Loop_0_io_loopExit_0_bits_control; // @[relu.scala 50:22]
  wire  Loop_1_clock; // @[relu.scala 52:22]
  wire  Loop_1_reset; // @[relu.scala 52:22]
  wire  Loop_1_io_enable_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_enable_valid; // @[relu.scala 52:22]
  wire  Loop_1_io_enable_bits_control; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_0_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_InLiveIn_0_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_1_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_1_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_InLiveIn_1_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_2_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_2_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_InLiveIn_2_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_3_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_InLiveIn_3_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_InLiveIn_3_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field3_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field3_0_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_OutLiveIn_field3_0_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field2_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field2_0_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_OutLiveIn_field2_0_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field1_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field1_0_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_OutLiveIn_field1_0_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field0_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field0_0_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_OutLiveIn_field0_0_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field0_1_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_OutLiveIn_field0_1_valid; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_OutLiveIn_field0_1_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_activate_loop_start_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_activate_loop_start_valid; // @[relu.scala 52:22]
  wire [4:0] Loop_1_io_activate_loop_start_bits_taskID; // @[relu.scala 52:22]
  wire  Loop_1_io_activate_loop_start_bits_control; // @[relu.scala 52:22]
  wire  Loop_1_io_activate_loop_back_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_activate_loop_back_valid; // @[relu.scala 52:22]
  wire [4:0] Loop_1_io_activate_loop_back_bits_taskID; // @[relu.scala 52:22]
  wire  Loop_1_io_activate_loop_back_bits_control; // @[relu.scala 52:22]
  wire  Loop_1_io_loopBack_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_loopBack_0_valid; // @[relu.scala 52:22]
  wire [4:0] Loop_1_io_loopBack_0_bits_taskID; // @[relu.scala 52:22]
  wire  Loop_1_io_loopBack_0_bits_control; // @[relu.scala 52:22]
  wire  Loop_1_io_loopFinish_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_loopFinish_0_valid; // @[relu.scala 52:22]
  wire  Loop_1_io_loopFinish_0_bits_control; // @[relu.scala 52:22]
  wire  Loop_1_io_CarryDepenIn_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_CarryDepenIn_0_valid; // @[relu.scala 52:22]
  wire [4:0] Loop_1_io_CarryDepenIn_0_bits_taskID; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_CarryDepenIn_0_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_CarryDepenOut_field0_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_CarryDepenOut_field0_0_valid; // @[relu.scala 52:22]
  wire [4:0] Loop_1_io_CarryDepenOut_field0_0_bits_taskID; // @[relu.scala 52:22]
  wire [63:0] Loop_1_io_CarryDepenOut_field0_0_bits_data; // @[relu.scala 52:22]
  wire  Loop_1_io_loopExit_0_ready; // @[relu.scala 52:22]
  wire  Loop_1_io_loopExit_0_valid; // @[relu.scala 52:22]
  wire [4:0] Loop_1_io_loopExit_0_bits_taskID; // @[relu.scala 52:22]
  wire  Loop_1_io_loopExit_0_bits_control; // @[relu.scala 52:22]
  wire  bb_entry1_clock; // @[relu.scala 60:25]
  wire  bb_entry1_reset; // @[relu.scala 60:25]
  wire  bb_entry1_io_predicateIn_0_ready; // @[relu.scala 60:25]
  wire  bb_entry1_io_predicateIn_0_valid; // @[relu.scala 60:25]
  wire  bb_entry1_io_predicateIn_0_bits_control; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_0_ready; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_0_valid; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_0_bits_control; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_1_ready; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_1_valid; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_1_bits_control; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_2_ready; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_2_valid; // @[relu.scala 60:25]
  wire  bb_entry1_io_Out_2_bits_control; // @[relu.scala 60:25]
  wire  bb_for_body_lr_ph4_clock; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_reset; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_predicateIn_0_ready; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_predicateIn_0_valid; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_predicateIn_0_bits_control; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_Out_0_ready; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_Out_0_valid; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_Out_0_bits_control; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_Out_1_ready; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_Out_1_valid; // @[relu.scala 62:34]
  wire  bb_for_body_lr_ph4_io_Out_1_bits_control; // @[relu.scala 62:34]
  wire  bb_for_cond_cleanup_loopexit7_clock; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup_loopexit7_reset; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup_loopexit7_io_predicateIn_0_ready; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup_loopexit7_io_predicateIn_0_valid; // @[relu.scala 64:45]
  wire [4:0] bb_for_cond_cleanup_loopexit7_io_predicateIn_0_bits_taskID; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup_loopexit7_io_predicateIn_0_bits_control; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup_loopexit7_io_Out_0_ready; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup_loopexit7_io_Out_0_valid; // @[relu.scala 64:45]
  wire [4:0] bb_for_cond_cleanup_loopexit7_io_Out_0_bits_taskID; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup_loopexit7_io_Out_0_bits_control; // @[relu.scala 64:45]
  wire  bb_for_cond_cleanup9_clock; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_reset; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_predicateIn_0_ready; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_predicateIn_0_valid; // @[relu.scala 66:36]
  wire [4:0] bb_for_cond_cleanup9_io_predicateIn_0_bits_taskID; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_predicateIn_0_bits_control; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_predicateIn_1_ready; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_predicateIn_1_valid; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_predicateIn_1_bits_control; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_Out_0_ready; // @[relu.scala 66:36]
  wire  bb_for_cond_cleanup9_io_Out_0_valid; // @[relu.scala 66:36]
  wire [4:0] bb_for_cond_cleanup9_io_Out_0_bits_taskID; // @[relu.scala 66:36]
  wire  bb_for_body4_lr_ph11_clock; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_reset; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_MaskBB_0_ready; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_MaskBB_0_valid; // @[relu.scala 68:36]
  wire [1:0] bb_for_body4_lr_ph11_io_MaskBB_0_bits; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_0_ready; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_0_valid; // @[relu.scala 68:36]
  wire [4:0] bb_for_body4_lr_ph11_io_Out_0_bits_taskID; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_0_bits_control; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_1_ready; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_1_valid; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_1_bits_control; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_2_ready; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_2_valid; // @[relu.scala 68:36]
  wire [4:0] bb_for_body4_lr_ph11_io_Out_2_bits_taskID; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_2_bits_control; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_3_ready; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_3_valid; // @[relu.scala 68:36]
  wire [4:0] bb_for_body4_lr_ph11_io_Out_3_bits_taskID; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_Out_3_bits_control; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_predicateIn_0_ready; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_predicateIn_0_valid; // @[relu.scala 68:36]
  wire [4:0] bb_for_body4_lr_ph11_io_predicateIn_0_bits_taskID; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_predicateIn_0_bits_control; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_predicateIn_1_ready; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_predicateIn_1_valid; // @[relu.scala 68:36]
  wire [4:0] bb_for_body4_lr_ph11_io_predicateIn_1_bits_taskID; // @[relu.scala 68:36]
  wire  bb_for_body4_lr_ph11_io_predicateIn_1_bits_control; // @[relu.scala 68:36]
  wire  bb_for_cond_cleanup315_clock; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_reset; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_predicateIn_0_ready; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_predicateIn_0_valid; // @[relu.scala 70:38]
  wire [4:0] bb_for_cond_cleanup315_io_predicateIn_0_bits_taskID; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_predicateIn_0_bits_control; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_0_ready; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_0_valid; // @[relu.scala 70:38]
  wire [4:0] bb_for_cond_cleanup315_io_Out_0_bits_taskID; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_0_bits_control; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_1_ready; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_1_valid; // @[relu.scala 70:38]
  wire [4:0] bb_for_cond_cleanup315_io_Out_1_bits_taskID; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_1_bits_control; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_2_ready; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_2_valid; // @[relu.scala 70:38]
  wire [4:0] bb_for_cond_cleanup315_io_Out_2_bits_taskID; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_2_bits_control; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_3_ready; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_3_valid; // @[relu.scala 70:38]
  wire [4:0] bb_for_cond_cleanup315_io_Out_3_bits_taskID; // @[relu.scala 70:38]
  wire  bb_for_cond_cleanup315_io_Out_3_bits_control; // @[relu.scala 70:38]
  wire  bb_for_body419_clock; // @[relu.scala 72:30]
  wire  bb_for_body419_reset; // @[relu.scala 72:30]
  wire  bb_for_body419_io_MaskBB_0_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_MaskBB_0_valid; // @[relu.scala 72:30]
  wire [1:0] bb_for_body419_io_MaskBB_0_bits; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_0_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_0_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_0_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_0_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_1_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_1_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_1_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_1_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_2_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_2_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_2_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_2_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_3_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_3_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_3_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_3_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_4_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_4_valid; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_4_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_5_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_5_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_5_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_5_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_6_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_6_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_6_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_6_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_7_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_7_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_7_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_7_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_8_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_8_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_8_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_8_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_9_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_9_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_9_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_9_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_10_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_10_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_10_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_10_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_11_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_11_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_11_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_11_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_12_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_12_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_12_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_13_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_13_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_13_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_13_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_14_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_14_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_14_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_14_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_15_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_15_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_15_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_15_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_16_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_16_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_Out_16_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_Out_16_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_predicateIn_0_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_predicateIn_0_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_predicateIn_0_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_predicateIn_0_bits_control; // @[relu.scala 72:30]
  wire  bb_for_body419_io_predicateIn_1_ready; // @[relu.scala 72:30]
  wire  bb_for_body419_io_predicateIn_1_valid; // @[relu.scala 72:30]
  wire [4:0] bb_for_body419_io_predicateIn_1_bits_taskID; // @[relu.scala 72:30]
  wire  bb_for_body419_io_predicateIn_1_bits_control; // @[relu.scala 72:30]
  wire  icmp_cmp310_clock; // @[relu.scala 81:27]
  wire  icmp_cmp310_reset; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_enable_ready; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_enable_valid; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_enable_bits_control; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_Out_0_ready; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_Out_0_valid; // @[relu.scala 81:27]
  wire [63:0] icmp_cmp310_io_Out_0_bits_data; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_LeftIO_ready; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_LeftIO_valid; // @[relu.scala 81:27]
  wire [63:0] icmp_cmp310_io_LeftIO_bits_data; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_RightIO_ready; // @[relu.scala 81:27]
  wire  icmp_cmp310_io_RightIO_valid; // @[relu.scala 81:27]
  wire  br_3_clock; // @[relu.scala 84:20]
  wire  br_3_reset; // @[relu.scala 84:20]
  wire  br_3_io_enable_ready; // @[relu.scala 84:20]
  wire  br_3_io_enable_valid; // @[relu.scala 84:20]
  wire  br_3_io_enable_bits_control; // @[relu.scala 84:20]
  wire  br_3_io_CmpIO_ready; // @[relu.scala 84:20]
  wire  br_3_io_CmpIO_valid; // @[relu.scala 84:20]
  wire [63:0] br_3_io_CmpIO_bits_data; // @[relu.scala 84:20]
  wire  br_3_io_TrueOutput_0_ready; // @[relu.scala 84:20]
  wire  br_3_io_TrueOutput_0_valid; // @[relu.scala 84:20]
  wire  br_3_io_TrueOutput_0_bits_control; // @[relu.scala 84:20]
  wire  br_3_io_FalseOutput_0_ready; // @[relu.scala 84:20]
  wire  br_3_io_FalseOutput_0_valid; // @[relu.scala 84:20]
  wire  br_3_io_FalseOutput_0_bits_control; // @[relu.scala 84:20]
  wire  sextwide_trip_count5_clock; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_reset; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_io_Input_ready; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_io_Input_valid; // @[relu.scala 87:36]
  wire [63:0] sextwide_trip_count5_io_Input_bits_data; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_io_enable_ready; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_io_enable_valid; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_io_enable_bits_control; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_io_Out_0_ready; // @[relu.scala 87:36]
  wire  sextwide_trip_count5_io_Out_0_valid; // @[relu.scala 87:36]
  wire [63:0] sextwide_trip_count5_io_Out_0_bits_data; // @[relu.scala 87:36]
  wire  br_6_clock; // @[relu.scala 90:20]
  wire  br_6_reset; // @[relu.scala 90:20]
  wire  br_6_io_enable_ready; // @[relu.scala 90:20]
  wire  br_6_io_enable_valid; // @[relu.scala 90:20]
  wire  br_6_io_enable_bits_control; // @[relu.scala 90:20]
  wire  br_6_io_Out_0_ready; // @[relu.scala 90:20]
  wire  br_6_io_Out_0_valid; // @[relu.scala 90:20]
  wire  br_6_io_Out_0_bits_control; // @[relu.scala 90:20]
  wire  br_8_clock; // @[relu.scala 93:20]
  wire  br_8_reset; // @[relu.scala 93:20]
  wire  br_8_io_enable_ready; // @[relu.scala 93:20]
  wire  br_8_io_enable_valid; // @[relu.scala 93:20]
  wire [4:0] br_8_io_enable_bits_taskID; // @[relu.scala 93:20]
  wire  br_8_io_enable_bits_control; // @[relu.scala 93:20]
  wire  br_8_io_Out_0_ready; // @[relu.scala 93:20]
  wire  br_8_io_Out_0_valid; // @[relu.scala 93:20]
  wire [4:0] br_8_io_Out_0_bits_taskID; // @[relu.scala 93:20]
  wire  br_8_io_Out_0_bits_control; // @[relu.scala 93:20]
  wire  ret_10_clock; // @[relu.scala 96:22]
  wire  ret_10_reset; // @[relu.scala 96:22]
  wire  ret_10_io_In_enable_ready; // @[relu.scala 96:22]
  wire  ret_10_io_In_enable_valid; // @[relu.scala 96:22]
  wire [4:0] ret_10_io_In_enable_bits_taskID; // @[relu.scala 96:22]
  wire  ret_10_io_Out_ready; // @[relu.scala 96:22]
  wire  ret_10_io_Out_valid; // @[relu.scala 96:22]
  wire  phij_03212_clock; // @[relu.scala 99:26]
  wire  phij_03212_reset; // @[relu.scala 99:26]
  wire  phij_03212_io_enable_ready; // @[relu.scala 99:26]
  wire  phij_03212_io_enable_valid; // @[relu.scala 99:26]
  wire  phij_03212_io_enable_bits_control; // @[relu.scala 99:26]
  wire  phij_03212_io_InData_0_ready; // @[relu.scala 99:26]
  wire  phij_03212_io_InData_0_valid; // @[relu.scala 99:26]
  wire [4:0] phij_03212_io_InData_0_bits_taskID; // @[relu.scala 99:26]
  wire  phij_03212_io_InData_1_ready; // @[relu.scala 99:26]
  wire  phij_03212_io_InData_1_valid; // @[relu.scala 99:26]
  wire [4:0] phij_03212_io_InData_1_bits_taskID; // @[relu.scala 99:26]
  wire [63:0] phij_03212_io_InData_1_bits_data; // @[relu.scala 99:26]
  wire  phij_03212_io_Mask_ready; // @[relu.scala 99:26]
  wire  phij_03212_io_Mask_valid; // @[relu.scala 99:26]
  wire [1:0] phij_03212_io_Mask_bits; // @[relu.scala 99:26]
  wire  phij_03212_io_Out_0_ready; // @[relu.scala 99:26]
  wire  phij_03212_io_Out_0_valid; // @[relu.scala 99:26]
  wire [63:0] phij_03212_io_Out_0_bits_data; // @[relu.scala 99:26]
  wire  phij_03212_io_Out_1_ready; // @[relu.scala 99:26]
  wire  phij_03212_io_Out_1_valid; // @[relu.scala 99:26]
  wire [63:0] phij_03212_io_Out_1_bits_data; // @[relu.scala 99:26]
  wire  binaryOp_mul13_clock; // @[relu.scala 102:30]
  wire  binaryOp_mul13_reset; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_enable_ready; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_enable_valid; // @[relu.scala 102:30]
  wire [4:0] binaryOp_mul13_io_enable_bits_taskID; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_enable_bits_control; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_Out_0_ready; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_Out_0_valid; // @[relu.scala 102:30]
  wire [63:0] binaryOp_mul13_io_Out_0_bits_data; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_LeftIO_ready; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_LeftIO_valid; // @[relu.scala 102:30]
  wire [63:0] binaryOp_mul13_io_LeftIO_bits_data; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_RightIO_ready; // @[relu.scala 102:30]
  wire  binaryOp_mul13_io_RightIO_valid; // @[relu.scala 102:30]
  wire [63:0] binaryOp_mul13_io_RightIO_bits_data; // @[relu.scala 102:30]
  wire  br_14_clock; // @[relu.scala 105:21]
  wire  br_14_reset; // @[relu.scala 105:21]
  wire  br_14_io_enable_ready; // @[relu.scala 105:21]
  wire  br_14_io_enable_valid; // @[relu.scala 105:21]
  wire [4:0] br_14_io_enable_bits_taskID; // @[relu.scala 105:21]
  wire  br_14_io_enable_bits_control; // @[relu.scala 105:21]
  wire  br_14_io_Out_0_ready; // @[relu.scala 105:21]
  wire  br_14_io_Out_0_valid; // @[relu.scala 105:21]
  wire [4:0] br_14_io_Out_0_bits_taskID; // @[relu.scala 105:21]
  wire  br_14_io_Out_0_bits_control; // @[relu.scala 105:21]
  wire  binaryOp_inc1316_clock; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_reset; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_enable_ready; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_enable_valid; // @[relu.scala 108:32]
  wire [4:0] binaryOp_inc1316_io_enable_bits_taskID; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_enable_bits_control; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_Out_0_ready; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_Out_0_valid; // @[relu.scala 108:32]
  wire [4:0] binaryOp_inc1316_io_Out_0_bits_taskID; // @[relu.scala 108:32]
  wire [63:0] binaryOp_inc1316_io_Out_0_bits_data; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_Out_1_ready; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_Out_1_valid; // @[relu.scala 108:32]
  wire [63:0] binaryOp_inc1316_io_Out_1_bits_data; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_LeftIO_ready; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_LeftIO_valid; // @[relu.scala 108:32]
  wire [63:0] binaryOp_inc1316_io_LeftIO_bits_data; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_RightIO_ready; // @[relu.scala 108:32]
  wire  binaryOp_inc1316_io_RightIO_valid; // @[relu.scala 108:32]
  wire  icmp_exitcond3310_clock; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_reset; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_enable_ready; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_enable_valid; // @[relu.scala 111:33]
  wire [4:0] icmp_exitcond3310_io_enable_bits_taskID; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_enable_bits_control; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_Out_0_ready; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_Out_0_valid; // @[relu.scala 111:33]
  wire [4:0] icmp_exitcond3310_io_Out_0_bits_taskID; // @[relu.scala 111:33]
  wire [63:0] icmp_exitcond3310_io_Out_0_bits_data; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_LeftIO_ready; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_LeftIO_valid; // @[relu.scala 111:33]
  wire [63:0] icmp_exitcond3310_io_LeftIO_bits_data; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_RightIO_ready; // @[relu.scala 111:33]
  wire  icmp_exitcond3310_io_RightIO_valid; // @[relu.scala 111:33]
  wire [63:0] icmp_exitcond3310_io_RightIO_bits_data; // @[relu.scala 111:33]
  wire  br_18_clock; // @[relu.scala 114:21]
  wire  br_18_reset; // @[relu.scala 114:21]
  wire  br_18_io_enable_ready; // @[relu.scala 114:21]
  wire  br_18_io_enable_valid; // @[relu.scala 114:21]
  wire [4:0] br_18_io_enable_bits_taskID; // @[relu.scala 114:21]
  wire  br_18_io_enable_bits_control; // @[relu.scala 114:21]
  wire  br_18_io_CmpIO_ready; // @[relu.scala 114:21]
  wire  br_18_io_CmpIO_valid; // @[relu.scala 114:21]
  wire [4:0] br_18_io_CmpIO_bits_taskID; // @[relu.scala 114:21]
  wire [63:0] br_18_io_CmpIO_bits_data; // @[relu.scala 114:21]
  wire  br_18_io_TrueOutput_0_ready; // @[relu.scala 114:21]
  wire  br_18_io_TrueOutput_0_valid; // @[relu.scala 114:21]
  wire  br_18_io_TrueOutput_0_bits_control; // @[relu.scala 114:21]
  wire  br_18_io_FalseOutput_0_ready; // @[relu.scala 114:21]
  wire  br_18_io_FalseOutput_0_valid; // @[relu.scala 114:21]
  wire [4:0] br_18_io_FalseOutput_0_bits_taskID; // @[relu.scala 114:21]
  wire  br_18_io_FalseOutput_0_bits_control; // @[relu.scala 114:21]
  wire  phiindvars_iv20_clock; // @[relu.scala 117:31]
  wire  phiindvars_iv20_reset; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_enable_ready; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_enable_valid; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_enable_bits_control; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_InData_0_ready; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_InData_0_valid; // @[relu.scala 117:31]
  wire [4:0] phiindvars_iv20_io_InData_0_bits_taskID; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_InData_1_ready; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_InData_1_valid; // @[relu.scala 117:31]
  wire [4:0] phiindvars_iv20_io_InData_1_bits_taskID; // @[relu.scala 117:31]
  wire [63:0] phiindvars_iv20_io_InData_1_bits_data; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_Mask_ready; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_Mask_valid; // @[relu.scala 117:31]
  wire [1:0] phiindvars_iv20_io_Mask_bits; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_Out_0_ready; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_Out_0_valid; // @[relu.scala 117:31]
  wire [63:0] phiindvars_iv20_io_Out_0_bits_data; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_Out_1_ready; // @[relu.scala 117:31]
  wire  phiindvars_iv20_io_Out_1_valid; // @[relu.scala 117:31]
  wire [63:0] phiindvars_iv20_io_Out_1_bits_data; // @[relu.scala 117:31]
  wire  trunc21_clock; // @[relu.scala 120:23]
  wire  trunc21_reset; // @[relu.scala 120:23]
  wire  trunc21_io_Input_ready; // @[relu.scala 120:23]
  wire  trunc21_io_Input_valid; // @[relu.scala 120:23]
  wire [63:0] trunc21_io_Input_bits_data; // @[relu.scala 120:23]
  wire  trunc21_io_enable_ready; // @[relu.scala 120:23]
  wire  trunc21_io_enable_valid; // @[relu.scala 120:23]
  wire [4:0] trunc21_io_enable_bits_taskID; // @[relu.scala 120:23]
  wire  trunc21_io_enable_bits_control; // @[relu.scala 120:23]
  wire  trunc21_io_Out_0_ready; // @[relu.scala 120:23]
  wire  trunc21_io_Out_0_valid; // @[relu.scala 120:23]
  wire [63:0] trunc21_io_Out_0_bits_data; // @[relu.scala 120:23]
  wire  binaryOp_add22_clock; // @[relu.scala 123:30]
  wire  binaryOp_add22_reset; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_enable_ready; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_enable_valid; // @[relu.scala 123:30]
  wire [4:0] binaryOp_add22_io_enable_bits_taskID; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_enable_bits_control; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_Out_0_ready; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_Out_0_valid; // @[relu.scala 123:30]
  wire [63:0] binaryOp_add22_io_Out_0_bits_data; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_LeftIO_ready; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_LeftIO_valid; // @[relu.scala 123:30]
  wire [63:0] binaryOp_add22_io_LeftIO_bits_data; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_RightIO_ready; // @[relu.scala 123:30]
  wire  binaryOp_add22_io_RightIO_valid; // @[relu.scala 123:30]
  wire [63:0] binaryOp_add22_io_RightIO_bits_data; // @[relu.scala 123:30]
  wire  sextidxprom23_clock; // @[relu.scala 126:29]
  wire  sextidxprom23_reset; // @[relu.scala 126:29]
  wire  sextidxprom23_io_Input_ready; // @[relu.scala 126:29]
  wire  sextidxprom23_io_Input_valid; // @[relu.scala 126:29]
  wire [63:0] sextidxprom23_io_Input_bits_data; // @[relu.scala 126:29]
  wire  sextidxprom23_io_enable_ready; // @[relu.scala 126:29]
  wire  sextidxprom23_io_enable_valid; // @[relu.scala 126:29]
  wire [4:0] sextidxprom23_io_enable_bits_taskID; // @[relu.scala 126:29]
  wire  sextidxprom23_io_enable_bits_control; // @[relu.scala 126:29]
  wire  sextidxprom23_io_Out_0_ready; // @[relu.scala 126:29]
  wire  sextidxprom23_io_Out_0_valid; // @[relu.scala 126:29]
  wire [63:0] sextidxprom23_io_Out_0_bits_data; // @[relu.scala 126:29]
  wire  sextidxprom23_io_Out_1_ready; // @[relu.scala 126:29]
  wire  sextidxprom23_io_Out_1_valid; // @[relu.scala 126:29]
  wire [63:0] sextidxprom23_io_Out_1_bits_data; // @[relu.scala 126:29]
  wire  Gep_arrayidx24_clock; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_reset; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_enable_ready; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_enable_valid; // @[relu.scala 129:30]
  wire [4:0] Gep_arrayidx24_io_enable_bits_taskID; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_enable_bits_control; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_Out_0_ready; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_Out_0_valid; // @[relu.scala 129:30]
  wire [63:0] Gep_arrayidx24_io_Out_0_bits_data; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_baseAddress_ready; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_baseAddress_valid; // @[relu.scala 129:30]
  wire [63:0] Gep_arrayidx24_io_baseAddress_bits_data; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_idx_0_ready; // @[relu.scala 129:30]
  wire  Gep_arrayidx24_io_idx_0_valid; // @[relu.scala 129:30]
  wire [63:0] Gep_arrayidx24_io_idx_0_bits_data; // @[relu.scala 129:30]
  wire  ld_25_clock; // @[relu.scala 132:21]
  wire  ld_25_reset; // @[relu.scala 132:21]
  wire  ld_25_io_enable_ready; // @[relu.scala 132:21]
  wire  ld_25_io_enable_valid; // @[relu.scala 132:21]
  wire [4:0] ld_25_io_enable_bits_taskID; // @[relu.scala 132:21]
  wire  ld_25_io_enable_bits_control; // @[relu.scala 132:21]
  wire  ld_25_io_Out_0_ready; // @[relu.scala 132:21]
  wire  ld_25_io_Out_0_valid; // @[relu.scala 132:21]
  wire [63:0] ld_25_io_Out_0_bits_data; // @[relu.scala 132:21]
  wire  ld_25_io_Out_1_ready; // @[relu.scala 132:21]
  wire  ld_25_io_Out_1_valid; // @[relu.scala 132:21]
  wire [63:0] ld_25_io_Out_1_bits_data; // @[relu.scala 132:21]
  wire  ld_25_io_GepAddr_ready; // @[relu.scala 132:21]
  wire  ld_25_io_GepAddr_valid; // @[relu.scala 132:21]
  wire [63:0] ld_25_io_GepAddr_bits_data; // @[relu.scala 132:21]
  wire  ld_25_io_MemReq_ready; // @[relu.scala 132:21]
  wire  ld_25_io_MemReq_valid; // @[relu.scala 132:21]
  wire [63:0] ld_25_io_MemReq_bits_addr; // @[relu.scala 132:21]
  wire  ld_25_io_MemResp_valid; // @[relu.scala 132:21]
  wire [63:0] ld_25_io_MemResp_bits_data; // @[relu.scala 132:21]
  wire  Gep_arrayidx726_clock; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_reset; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_enable_ready; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_enable_valid; // @[relu.scala 135:31]
  wire [4:0] Gep_arrayidx726_io_enable_bits_taskID; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_enable_bits_control; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_Out_0_ready; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_Out_0_valid; // @[relu.scala 135:31]
  wire [63:0] Gep_arrayidx726_io_Out_0_bits_data; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_baseAddress_ready; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_baseAddress_valid; // @[relu.scala 135:31]
  wire [63:0] Gep_arrayidx726_io_baseAddress_bits_data; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_idx_0_ready; // @[relu.scala 135:31]
  wire  Gep_arrayidx726_io_idx_0_valid; // @[relu.scala 135:31]
  wire [63:0] Gep_arrayidx726_io_idx_0_bits_data; // @[relu.scala 135:31]
  wire  icmp_19_clock; // @[relu.scala 138:23]
  wire  icmp_19_reset; // @[relu.scala 138:23]
  wire  icmp_19_io_enable_ready; // @[relu.scala 138:23]
  wire  icmp_19_io_enable_valid; // @[relu.scala 138:23]
  wire [4:0] icmp_19_io_enable_bits_taskID; // @[relu.scala 138:23]
  wire  icmp_19_io_enable_bits_control; // @[relu.scala 138:23]
  wire  icmp_19_io_Out_0_ready; // @[relu.scala 138:23]
  wire  icmp_19_io_Out_0_valid; // @[relu.scala 138:23]
  wire [63:0] icmp_19_io_Out_0_bits_data; // @[relu.scala 138:23]
  wire  icmp_19_io_LeftIO_ready; // @[relu.scala 138:23]
  wire  icmp_19_io_LeftIO_valid; // @[relu.scala 138:23]
  wire [63:0] icmp_19_io_LeftIO_bits_data; // @[relu.scala 138:23]
  wire  icmp_19_io_RightIO_ready; // @[relu.scala 138:23]
  wire  icmp_19_io_RightIO_valid; // @[relu.scala 138:23]
  wire  select__28_clock; // @[relu.scala 141:26]
  wire  select__28_reset; // @[relu.scala 141:26]
  wire  select__28_io_enable_ready; // @[relu.scala 141:26]
  wire  select__28_io_enable_valid; // @[relu.scala 141:26]
  wire [4:0] select__28_io_enable_bits_taskID; // @[relu.scala 141:26]
  wire  select__28_io_Out_0_ready; // @[relu.scala 141:26]
  wire  select__28_io_Out_0_valid; // @[relu.scala 141:26]
  wire [63:0] select__28_io_Out_0_bits_data; // @[relu.scala 141:26]
  wire  select__28_io_InData1_ready; // @[relu.scala 141:26]
  wire  select__28_io_InData1_valid; // @[relu.scala 141:26]
  wire [63:0] select__28_io_InData1_bits_data; // @[relu.scala 141:26]
  wire  select__28_io_InData2_ready; // @[relu.scala 141:26]
  wire  select__28_io_InData2_valid; // @[relu.scala 141:26]
  wire  select__28_io_Select_ready; // @[relu.scala 141:26]
  wire  select__28_io_Select_valid; // @[relu.scala 141:26]
  wire [63:0] select__28_io_Select_bits_data; // @[relu.scala 141:26]
  wire  st_29_clock; // @[relu.scala 144:21]
  wire  st_29_reset; // @[relu.scala 144:21]
  wire  st_29_io_enable_ready; // @[relu.scala 144:21]
  wire  st_29_io_enable_valid; // @[relu.scala 144:21]
  wire [4:0] st_29_io_enable_bits_taskID; // @[relu.scala 144:21]
  wire  st_29_io_enable_bits_control; // @[relu.scala 144:21]
  wire  st_29_io_SuccOp_0_ready; // @[relu.scala 144:21]
  wire  st_29_io_SuccOp_0_valid; // @[relu.scala 144:21]
  wire  st_29_io_GepAddr_ready; // @[relu.scala 144:21]
  wire  st_29_io_GepAddr_valid; // @[relu.scala 144:21]
  wire [63:0] st_29_io_GepAddr_bits_data; // @[relu.scala 144:21]
  wire  st_29_io_inData_ready; // @[relu.scala 144:21]
  wire  st_29_io_inData_valid; // @[relu.scala 144:21]
  wire [63:0] st_29_io_inData_bits_data; // @[relu.scala 144:21]
  wire  st_29_io_MemReq_ready; // @[relu.scala 144:21]
  wire  st_29_io_MemReq_valid; // @[relu.scala 144:21]
  wire [63:0] st_29_io_MemReq_bits_addr; // @[relu.scala 144:21]
  wire [63:0] st_29_io_MemReq_bits_data; // @[relu.scala 144:21]
  wire  st_29_io_MemResp_valid; // @[relu.scala 144:21]
  wire  binaryOp_indvars_iv_next30_clock; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_reset; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_enable_ready; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_enable_valid; // @[relu.scala 147:42]
  wire [4:0] binaryOp_indvars_iv_next30_io_enable_bits_taskID; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_enable_bits_control; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_Out_0_ready; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_Out_0_valid; // @[relu.scala 147:42]
  wire [4:0] binaryOp_indvars_iv_next30_io_Out_0_bits_taskID; // @[relu.scala 147:42]
  wire [63:0] binaryOp_indvars_iv_next30_io_Out_0_bits_data; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_Out_1_ready; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_Out_1_valid; // @[relu.scala 147:42]
  wire [63:0] binaryOp_indvars_iv_next30_io_Out_1_bits_data; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_LeftIO_ready; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_LeftIO_valid; // @[relu.scala 147:42]
  wire [63:0] binaryOp_indvars_iv_next30_io_LeftIO_bits_data; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_RightIO_ready; // @[relu.scala 147:42]
  wire  binaryOp_indvars_iv_next30_io_RightIO_valid; // @[relu.scala 147:42]
  wire  icmp_exitcond23_clock; // @[relu.scala 150:31]
  wire  icmp_exitcond23_reset; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_enable_ready; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_enable_valid; // @[relu.scala 150:31]
  wire [4:0] icmp_exitcond23_io_enable_bits_taskID; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_enable_bits_control; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_Out_0_ready; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_Out_0_valid; // @[relu.scala 150:31]
  wire [4:0] icmp_exitcond23_io_Out_0_bits_taskID; // @[relu.scala 150:31]
  wire [63:0] icmp_exitcond23_io_Out_0_bits_data; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_LeftIO_ready; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_LeftIO_valid; // @[relu.scala 150:31]
  wire [63:0] icmp_exitcond23_io_LeftIO_bits_data; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_RightIO_ready; // @[relu.scala 150:31]
  wire  icmp_exitcond23_io_RightIO_valid; // @[relu.scala 150:31]
  wire [63:0] icmp_exitcond23_io_RightIO_bits_data; // @[relu.scala 150:31]
  wire  br_32_clock; // @[relu.scala 153:21]
  wire  br_32_reset; // @[relu.scala 153:21]
  wire  br_32_io_enable_ready; // @[relu.scala 153:21]
  wire  br_32_io_enable_valid; // @[relu.scala 153:21]
  wire [4:0] br_32_io_enable_bits_taskID; // @[relu.scala 153:21]
  wire  br_32_io_enable_bits_control; // @[relu.scala 153:21]
  wire  br_32_io_CmpIO_ready; // @[relu.scala 153:21]
  wire  br_32_io_CmpIO_valid; // @[relu.scala 153:21]
  wire [4:0] br_32_io_CmpIO_bits_taskID; // @[relu.scala 153:21]
  wire [63:0] br_32_io_CmpIO_bits_data; // @[relu.scala 153:21]
  wire  br_32_io_PredOp_0_ready; // @[relu.scala 153:21]
  wire  br_32_io_PredOp_0_valid; // @[relu.scala 153:21]
  wire  br_32_io_TrueOutput_0_ready; // @[relu.scala 153:21]
  wire  br_32_io_TrueOutput_0_valid; // @[relu.scala 153:21]
  wire  br_32_io_TrueOutput_0_bits_control; // @[relu.scala 153:21]
  wire  br_32_io_FalseOutput_0_ready; // @[relu.scala 153:21]
  wire  br_32_io_FalseOutput_0_valid; // @[relu.scala 153:21]
  wire [4:0] br_32_io_FalseOutput_0_bits_taskID; // @[relu.scala 153:21]
  wire  br_32_io_FalseOutput_0_bits_control; // @[relu.scala 153:21]
  wire  const0_clock; // @[relu.scala 162:22]
  wire  const0_reset; // @[relu.scala 162:22]
  wire  const0_io_enable_ready; // @[relu.scala 162:22]
  wire  const0_io_enable_valid; // @[relu.scala 162:22]
  wire  const0_io_enable_bits_control; // @[relu.scala 162:22]
  wire  const0_io_Out_ready; // @[relu.scala 162:22]
  wire  const0_io_Out_valid; // @[relu.scala 162:22]
  wire  const1_clock; // @[relu.scala 165:22]
  wire  const1_reset; // @[relu.scala 165:22]
  wire  const1_io_enable_ready; // @[relu.scala 165:22]
  wire  const1_io_enable_valid; // @[relu.scala 165:22]
  wire [4:0] const1_io_enable_bits_taskID; // @[relu.scala 165:22]
  wire  const1_io_enable_bits_control; // @[relu.scala 165:22]
  wire  const1_io_Out_ready; // @[relu.scala 165:22]
  wire  const1_io_Out_valid; // @[relu.scala 165:22]
  wire [4:0] const1_io_Out_bits_taskID; // @[relu.scala 165:22]
  wire  const2_clock; // @[relu.scala 168:22]
  wire  const2_reset; // @[relu.scala 168:22]
  wire  const2_io_enable_ready; // @[relu.scala 168:22]
  wire  const2_io_enable_valid; // @[relu.scala 168:22]
  wire [4:0] const2_io_enable_bits_taskID; // @[relu.scala 168:22]
  wire  const2_io_enable_bits_control; // @[relu.scala 168:22]
  wire  const2_io_Out_ready; // @[relu.scala 168:22]
  wire  const2_io_Out_valid; // @[relu.scala 168:22]
  wire  const3_clock; // @[relu.scala 171:22]
  wire  const3_reset; // @[relu.scala 171:22]
  wire  const3_io_enable_ready; // @[relu.scala 171:22]
  wire  const3_io_enable_valid; // @[relu.scala 171:22]
  wire [4:0] const3_io_enable_bits_taskID; // @[relu.scala 171:22]
  wire  const3_io_enable_bits_control; // @[relu.scala 171:22]
  wire  const3_io_Out_ready; // @[relu.scala 171:22]
  wire  const3_io_Out_valid; // @[relu.scala 171:22]
  wire [4:0] const3_io_Out_bits_taskID; // @[relu.scala 171:22]
  wire  const4_clock; // @[relu.scala 174:22]
  wire  const4_reset; // @[relu.scala 174:22]
  wire  const4_io_enable_ready; // @[relu.scala 174:22]
  wire  const4_io_enable_valid; // @[relu.scala 174:22]
  wire [4:0] const4_io_enable_bits_taskID; // @[relu.scala 174:22]
  wire  const4_io_enable_bits_control; // @[relu.scala 174:22]
  wire  const4_io_Out_ready; // @[relu.scala 174:22]
  wire  const4_io_Out_valid; // @[relu.scala 174:22]
  wire  const5_clock; // @[relu.scala 177:22]
  wire  const5_reset; // @[relu.scala 177:22]
  wire  const5_io_enable_ready; // @[relu.scala 177:22]
  wire  const5_io_enable_valid; // @[relu.scala 177:22]
  wire [4:0] const5_io_enable_bits_taskID; // @[relu.scala 177:22]
  wire  const5_io_enable_bits_control; // @[relu.scala 177:22]
  wire  const5_io_Out_ready; // @[relu.scala 177:22]
  wire  const5_io_Out_valid; // @[relu.scala 177:22]
  wire  const6_clock; // @[relu.scala 180:22]
  wire  const6_reset; // @[relu.scala 180:22]
  wire  const6_io_enable_ready; // @[relu.scala 180:22]
  wire  const6_io_enable_valid; // @[relu.scala 180:22]
  wire [4:0] const6_io_enable_bits_taskID; // @[relu.scala 180:22]
  wire  const6_io_enable_bits_control; // @[relu.scala 180:22]
  wire  const6_io_Out_ready; // @[relu.scala 180:22]
  wire  const6_io_Out_valid; // @[relu.scala 180:22]
  CacheMemoryEngine mem_ctrl_cache ( // @[relu.scala 36:30]
    .clock(mem_ctrl_cache_clock),
    .reset(mem_ctrl_cache_reset),
    .io_rd_mem_0_MemReq_ready(mem_ctrl_cache_io_rd_mem_0_MemReq_ready),
    .io_rd_mem_0_MemReq_valid(mem_ctrl_cache_io_rd_mem_0_MemReq_valid),
    .io_rd_mem_0_MemReq_bits_addr(mem_ctrl_cache_io_rd_mem_0_MemReq_bits_addr),
    .io_rd_mem_0_MemResp_valid(mem_ctrl_cache_io_rd_mem_0_MemResp_valid),
    .io_rd_mem_0_MemResp_bits_data(mem_ctrl_cache_io_rd_mem_0_MemResp_bits_data),
    .io_wr_mem_0_MemReq_ready(mem_ctrl_cache_io_wr_mem_0_MemReq_ready),
    .io_wr_mem_0_MemReq_valid(mem_ctrl_cache_io_wr_mem_0_MemReq_valid),
    .io_wr_mem_0_MemReq_bits_addr(mem_ctrl_cache_io_wr_mem_0_MemReq_bits_addr),
    .io_wr_mem_0_MemReq_bits_data(mem_ctrl_cache_io_wr_mem_0_MemReq_bits_data),
    .io_wr_mem_0_MemResp_valid(mem_ctrl_cache_io_wr_mem_0_MemResp_valid),
    .io_cache_MemReq_ready(mem_ctrl_cache_io_cache_MemReq_ready),
    .io_cache_MemReq_valid(mem_ctrl_cache_io_cache_MemReq_valid),
    .io_cache_MemReq_bits_addr(mem_ctrl_cache_io_cache_MemReq_bits_addr),
    .io_cache_MemReq_bits_data(mem_ctrl_cache_io_cache_MemReq_bits_data),
    .io_cache_MemReq_bits_mask(mem_ctrl_cache_io_cache_MemReq_bits_mask),
    .io_cache_MemReq_bits_tag(mem_ctrl_cache_io_cache_MemReq_bits_tag),
    .io_cache_MemResp_valid(mem_ctrl_cache_io_cache_MemResp_valid),
    .io_cache_MemResp_bits_data(mem_ctrl_cache_io_cache_MemResp_bits_data),
    .io_cache_MemResp_bits_tag(mem_ctrl_cache_io_cache_MemResp_bits_tag)
  );
  SplitCallDCR ArgSplitter ( // @[relu.scala 41:27]
    .clock(ArgSplitter_clock),
    .reset(ArgSplitter_reset),
    .io_In_ready(ArgSplitter_io_In_ready),
    .io_In_valid(ArgSplitter_io_In_valid),
    .io_In_bits_dataPtrs_field1_data(ArgSplitter_io_In_bits_dataPtrs_field1_data),
    .io_In_bits_dataPtrs_field0_data(ArgSplitter_io_In_bits_dataPtrs_field0_data),
    .io_In_bits_dataVals_field0_data(ArgSplitter_io_In_bits_dataVals_field0_data),
    .io_Out_enable_ready(ArgSplitter_io_Out_enable_ready),
    .io_Out_enable_valid(ArgSplitter_io_Out_enable_valid),
    .io_Out_enable_bits_control(ArgSplitter_io_Out_enable_bits_control),
    .io_Out_dataPtrs_field1_0_ready(ArgSplitter_io_Out_dataPtrs_field1_0_ready),
    .io_Out_dataPtrs_field1_0_valid(ArgSplitter_io_Out_dataPtrs_field1_0_valid),
    .io_Out_dataPtrs_field1_0_bits_data(ArgSplitter_io_Out_dataPtrs_field1_0_bits_data),
    .io_Out_dataPtrs_field0_0_ready(ArgSplitter_io_Out_dataPtrs_field0_0_ready),
    .io_Out_dataPtrs_field0_0_valid(ArgSplitter_io_Out_dataPtrs_field0_0_valid),
    .io_Out_dataPtrs_field0_0_bits_data(ArgSplitter_io_Out_dataPtrs_field0_0_bits_data),
    .io_Out_dataVals_field0_0_ready(ArgSplitter_io_Out_dataVals_field0_0_ready),
    .io_Out_dataVals_field0_0_valid(ArgSplitter_io_Out_dataVals_field0_0_valid),
    .io_Out_dataVals_field0_0_bits_data(ArgSplitter_io_Out_dataVals_field0_0_bits_data),
    .io_Out_dataVals_field0_1_ready(ArgSplitter_io_Out_dataVals_field0_1_ready),
    .io_Out_dataVals_field0_1_valid(ArgSplitter_io_Out_dataVals_field0_1_valid),
    .io_Out_dataVals_field0_1_bits_data(ArgSplitter_io_Out_dataVals_field0_1_bits_data),
    .io_Out_dataVals_field0_2_ready(ArgSplitter_io_Out_dataVals_field0_2_ready),
    .io_Out_dataVals_field0_2_valid(ArgSplitter_io_Out_dataVals_field0_2_valid),
    .io_Out_dataVals_field0_2_bits_data(ArgSplitter_io_Out_dataVals_field0_2_bits_data)
  );
  LoopBlockNode Loop_0 ( // @[relu.scala 50:22]
    .clock(Loop_0_clock),
    .reset(Loop_0_reset),
    .io_enable_ready(Loop_0_io_enable_ready),
    .io_enable_valid(Loop_0_io_enable_valid),
    .io_enable_bits_taskID(Loop_0_io_enable_bits_taskID),
    .io_enable_bits_control(Loop_0_io_enable_bits_control),
    .io_InLiveIn_0_ready(Loop_0_io_InLiveIn_0_ready),
    .io_InLiveIn_0_valid(Loop_0_io_InLiveIn_0_valid),
    .io_InLiveIn_0_bits_data(Loop_0_io_InLiveIn_0_bits_data),
    .io_InLiveIn_1_ready(Loop_0_io_InLiveIn_1_ready),
    .io_InLiveIn_1_valid(Loop_0_io_InLiveIn_1_valid),
    .io_InLiveIn_1_bits_data(Loop_0_io_InLiveIn_1_bits_data),
    .io_InLiveIn_2_ready(Loop_0_io_InLiveIn_2_ready),
    .io_InLiveIn_2_valid(Loop_0_io_InLiveIn_2_valid),
    .io_InLiveIn_2_bits_data(Loop_0_io_InLiveIn_2_bits_data),
    .io_InLiveIn_3_ready(Loop_0_io_InLiveIn_3_ready),
    .io_InLiveIn_3_valid(Loop_0_io_InLiveIn_3_valid),
    .io_InLiveIn_3_bits_data(Loop_0_io_InLiveIn_3_bits_data),
    .io_OutLiveIn_field3_0_ready(Loop_0_io_OutLiveIn_field3_0_ready),
    .io_OutLiveIn_field3_0_valid(Loop_0_io_OutLiveIn_field3_0_valid),
    .io_OutLiveIn_field3_0_bits_data(Loop_0_io_OutLiveIn_field3_0_bits_data),
    .io_OutLiveIn_field2_0_ready(Loop_0_io_OutLiveIn_field2_0_ready),
    .io_OutLiveIn_field2_0_valid(Loop_0_io_OutLiveIn_field2_0_valid),
    .io_OutLiveIn_field2_0_bits_data(Loop_0_io_OutLiveIn_field2_0_bits_data),
    .io_OutLiveIn_field1_0_ready(Loop_0_io_OutLiveIn_field1_0_ready),
    .io_OutLiveIn_field1_0_valid(Loop_0_io_OutLiveIn_field1_0_valid),
    .io_OutLiveIn_field1_0_bits_data(Loop_0_io_OutLiveIn_field1_0_bits_data),
    .io_OutLiveIn_field0_0_ready(Loop_0_io_OutLiveIn_field0_0_ready),
    .io_OutLiveIn_field0_0_valid(Loop_0_io_OutLiveIn_field0_0_valid),
    .io_OutLiveIn_field0_0_bits_data(Loop_0_io_OutLiveIn_field0_0_bits_data),
    .io_activate_loop_start_ready(Loop_0_io_activate_loop_start_ready),
    .io_activate_loop_start_valid(Loop_0_io_activate_loop_start_valid),
    .io_activate_loop_start_bits_taskID(Loop_0_io_activate_loop_start_bits_taskID),
    .io_activate_loop_start_bits_control(Loop_0_io_activate_loop_start_bits_control),
    .io_activate_loop_back_ready(Loop_0_io_activate_loop_back_ready),
    .io_activate_loop_back_valid(Loop_0_io_activate_loop_back_valid),
    .io_activate_loop_back_bits_taskID(Loop_0_io_activate_loop_back_bits_taskID),
    .io_activate_loop_back_bits_control(Loop_0_io_activate_loop_back_bits_control),
    .io_loopBack_0_ready(Loop_0_io_loopBack_0_ready),
    .io_loopBack_0_valid(Loop_0_io_loopBack_0_valid),
    .io_loopBack_0_bits_taskID(Loop_0_io_loopBack_0_bits_taskID),
    .io_loopBack_0_bits_control(Loop_0_io_loopBack_0_bits_control),
    .io_loopFinish_0_ready(Loop_0_io_loopFinish_0_ready),
    .io_loopFinish_0_valid(Loop_0_io_loopFinish_0_valid),
    .io_loopFinish_0_bits_control(Loop_0_io_loopFinish_0_bits_control),
    .io_CarryDepenIn_0_ready(Loop_0_io_CarryDepenIn_0_ready),
    .io_CarryDepenIn_0_valid(Loop_0_io_CarryDepenIn_0_valid),
    .io_CarryDepenIn_0_bits_taskID(Loop_0_io_CarryDepenIn_0_bits_taskID),
    .io_CarryDepenIn_0_bits_data(Loop_0_io_CarryDepenIn_0_bits_data),
    .io_CarryDepenOut_field0_0_ready(Loop_0_io_CarryDepenOut_field0_0_ready),
    .io_CarryDepenOut_field0_0_valid(Loop_0_io_CarryDepenOut_field0_0_valid),
    .io_CarryDepenOut_field0_0_bits_taskID(Loop_0_io_CarryDepenOut_field0_0_bits_taskID),
    .io_CarryDepenOut_field0_0_bits_data(Loop_0_io_CarryDepenOut_field0_0_bits_data),
    .io_loopExit_0_ready(Loop_0_io_loopExit_0_ready),
    .io_loopExit_0_valid(Loop_0_io_loopExit_0_valid),
    .io_loopExit_0_bits_taskID(Loop_0_io_loopExit_0_bits_taskID),
    .io_loopExit_0_bits_control(Loop_0_io_loopExit_0_bits_control)
  );
  LoopBlockNode_1 Loop_1 ( // @[relu.scala 52:22]
    .clock(Loop_1_clock),
    .reset(Loop_1_reset),
    .io_enable_ready(Loop_1_io_enable_ready),
    .io_enable_valid(Loop_1_io_enable_valid),
    .io_enable_bits_control(Loop_1_io_enable_bits_control),
    .io_InLiveIn_0_ready(Loop_1_io_InLiveIn_0_ready),
    .io_InLiveIn_0_valid(Loop_1_io_InLiveIn_0_valid),
    .io_InLiveIn_0_bits_data(Loop_1_io_InLiveIn_0_bits_data),
    .io_InLiveIn_1_ready(Loop_1_io_InLiveIn_1_ready),
    .io_InLiveIn_1_valid(Loop_1_io_InLiveIn_1_valid),
    .io_InLiveIn_1_bits_data(Loop_1_io_InLiveIn_1_bits_data),
    .io_InLiveIn_2_ready(Loop_1_io_InLiveIn_2_ready),
    .io_InLiveIn_2_valid(Loop_1_io_InLiveIn_2_valid),
    .io_InLiveIn_2_bits_data(Loop_1_io_InLiveIn_2_bits_data),
    .io_InLiveIn_3_ready(Loop_1_io_InLiveIn_3_ready),
    .io_InLiveIn_3_valid(Loop_1_io_InLiveIn_3_valid),
    .io_InLiveIn_3_bits_data(Loop_1_io_InLiveIn_3_bits_data),
    .io_OutLiveIn_field3_0_ready(Loop_1_io_OutLiveIn_field3_0_ready),
    .io_OutLiveIn_field3_0_valid(Loop_1_io_OutLiveIn_field3_0_valid),
    .io_OutLiveIn_field3_0_bits_data(Loop_1_io_OutLiveIn_field3_0_bits_data),
    .io_OutLiveIn_field2_0_ready(Loop_1_io_OutLiveIn_field2_0_ready),
    .io_OutLiveIn_field2_0_valid(Loop_1_io_OutLiveIn_field2_0_valid),
    .io_OutLiveIn_field2_0_bits_data(Loop_1_io_OutLiveIn_field2_0_bits_data),
    .io_OutLiveIn_field1_0_ready(Loop_1_io_OutLiveIn_field1_0_ready),
    .io_OutLiveIn_field1_0_valid(Loop_1_io_OutLiveIn_field1_0_valid),
    .io_OutLiveIn_field1_0_bits_data(Loop_1_io_OutLiveIn_field1_0_bits_data),
    .io_OutLiveIn_field0_0_ready(Loop_1_io_OutLiveIn_field0_0_ready),
    .io_OutLiveIn_field0_0_valid(Loop_1_io_OutLiveIn_field0_0_valid),
    .io_OutLiveIn_field0_0_bits_data(Loop_1_io_OutLiveIn_field0_0_bits_data),
    .io_OutLiveIn_field0_1_ready(Loop_1_io_OutLiveIn_field0_1_ready),
    .io_OutLiveIn_field0_1_valid(Loop_1_io_OutLiveIn_field0_1_valid),
    .io_OutLiveIn_field0_1_bits_data(Loop_1_io_OutLiveIn_field0_1_bits_data),
    .io_activate_loop_start_ready(Loop_1_io_activate_loop_start_ready),
    .io_activate_loop_start_valid(Loop_1_io_activate_loop_start_valid),
    .io_activate_loop_start_bits_taskID(Loop_1_io_activate_loop_start_bits_taskID),
    .io_activate_loop_start_bits_control(Loop_1_io_activate_loop_start_bits_control),
    .io_activate_loop_back_ready(Loop_1_io_activate_loop_back_ready),
    .io_activate_loop_back_valid(Loop_1_io_activate_loop_back_valid),
    .io_activate_loop_back_bits_taskID(Loop_1_io_activate_loop_back_bits_taskID),
    .io_activate_loop_back_bits_control(Loop_1_io_activate_loop_back_bits_control),
    .io_loopBack_0_ready(Loop_1_io_loopBack_0_ready),
    .io_loopBack_0_valid(Loop_1_io_loopBack_0_valid),
    .io_loopBack_0_bits_taskID(Loop_1_io_loopBack_0_bits_taskID),
    .io_loopBack_0_bits_control(Loop_1_io_loopBack_0_bits_control),
    .io_loopFinish_0_ready(Loop_1_io_loopFinish_0_ready),
    .io_loopFinish_0_valid(Loop_1_io_loopFinish_0_valid),
    .io_loopFinish_0_bits_control(Loop_1_io_loopFinish_0_bits_control),
    .io_CarryDepenIn_0_ready(Loop_1_io_CarryDepenIn_0_ready),
    .io_CarryDepenIn_0_valid(Loop_1_io_CarryDepenIn_0_valid),
    .io_CarryDepenIn_0_bits_taskID(Loop_1_io_CarryDepenIn_0_bits_taskID),
    .io_CarryDepenIn_0_bits_data(Loop_1_io_CarryDepenIn_0_bits_data),
    .io_CarryDepenOut_field0_0_ready(Loop_1_io_CarryDepenOut_field0_0_ready),
    .io_CarryDepenOut_field0_0_valid(Loop_1_io_CarryDepenOut_field0_0_valid),
    .io_CarryDepenOut_field0_0_bits_taskID(Loop_1_io_CarryDepenOut_field0_0_bits_taskID),
    .io_CarryDepenOut_field0_0_bits_data(Loop_1_io_CarryDepenOut_field0_0_bits_data),
    .io_loopExit_0_ready(Loop_1_io_loopExit_0_ready),
    .io_loopExit_0_valid(Loop_1_io_loopExit_0_valid),
    .io_loopExit_0_bits_taskID(Loop_1_io_loopExit_0_bits_taskID),
    .io_loopExit_0_bits_control(Loop_1_io_loopExit_0_bits_control)
  );
  BasicBlockNoMaskFastNode bb_entry1 ( // @[relu.scala 60:25]
    .clock(bb_entry1_clock),
    .reset(bb_entry1_reset),
    .io_predicateIn_0_ready(bb_entry1_io_predicateIn_0_ready),
    .io_predicateIn_0_valid(bb_entry1_io_predicateIn_0_valid),
    .io_predicateIn_0_bits_control(bb_entry1_io_predicateIn_0_bits_control),
    .io_Out_0_ready(bb_entry1_io_Out_0_ready),
    .io_Out_0_valid(bb_entry1_io_Out_0_valid),
    .io_Out_0_bits_control(bb_entry1_io_Out_0_bits_control),
    .io_Out_1_ready(bb_entry1_io_Out_1_ready),
    .io_Out_1_valid(bb_entry1_io_Out_1_valid),
    .io_Out_1_bits_control(bb_entry1_io_Out_1_bits_control),
    .io_Out_2_ready(bb_entry1_io_Out_2_ready),
    .io_Out_2_valid(bb_entry1_io_Out_2_valid),
    .io_Out_2_bits_control(bb_entry1_io_Out_2_bits_control)
  );
  BasicBlockNoMaskFastNode_1 bb_for_body_lr_ph4 ( // @[relu.scala 62:34]
    .clock(bb_for_body_lr_ph4_clock),
    .reset(bb_for_body_lr_ph4_reset),
    .io_predicateIn_0_ready(bb_for_body_lr_ph4_io_predicateIn_0_ready),
    .io_predicateIn_0_valid(bb_for_body_lr_ph4_io_predicateIn_0_valid),
    .io_predicateIn_0_bits_control(bb_for_body_lr_ph4_io_predicateIn_0_bits_control),
    .io_Out_0_ready(bb_for_body_lr_ph4_io_Out_0_ready),
    .io_Out_0_valid(bb_for_body_lr_ph4_io_Out_0_valid),
    .io_Out_0_bits_control(bb_for_body_lr_ph4_io_Out_0_bits_control),
    .io_Out_1_ready(bb_for_body_lr_ph4_io_Out_1_ready),
    .io_Out_1_valid(bb_for_body_lr_ph4_io_Out_1_valid),
    .io_Out_1_bits_control(bb_for_body_lr_ph4_io_Out_1_bits_control)
  );
  BasicBlockNoMaskFastNode_2 bb_for_cond_cleanup_loopexit7 ( // @[relu.scala 64:45]
    .clock(bb_for_cond_cleanup_loopexit7_clock),
    .reset(bb_for_cond_cleanup_loopexit7_reset),
    .io_predicateIn_0_ready(bb_for_cond_cleanup_loopexit7_io_predicateIn_0_ready),
    .io_predicateIn_0_valid(bb_for_cond_cleanup_loopexit7_io_predicateIn_0_valid),
    .io_predicateIn_0_bits_taskID(bb_for_cond_cleanup_loopexit7_io_predicateIn_0_bits_taskID),
    .io_predicateIn_0_bits_control(bb_for_cond_cleanup_loopexit7_io_predicateIn_0_bits_control),
    .io_Out_0_ready(bb_for_cond_cleanup_loopexit7_io_Out_0_ready),
    .io_Out_0_valid(bb_for_cond_cleanup_loopexit7_io_Out_0_valid),
    .io_Out_0_bits_taskID(bb_for_cond_cleanup_loopexit7_io_Out_0_bits_taskID),
    .io_Out_0_bits_control(bb_for_cond_cleanup_loopexit7_io_Out_0_bits_control)
  );
  BasicBlockNoMaskFastNode_3 bb_for_cond_cleanup9 ( // @[relu.scala 66:36]
    .clock(bb_for_cond_cleanup9_clock),
    .reset(bb_for_cond_cleanup9_reset),
    .io_predicateIn_0_ready(bb_for_cond_cleanup9_io_predicateIn_0_ready),
    .io_predicateIn_0_valid(bb_for_cond_cleanup9_io_predicateIn_0_valid),
    .io_predicateIn_0_bits_taskID(bb_for_cond_cleanup9_io_predicateIn_0_bits_taskID),
    .io_predicateIn_0_bits_control(bb_for_cond_cleanup9_io_predicateIn_0_bits_control),
    .io_predicateIn_1_ready(bb_for_cond_cleanup9_io_predicateIn_1_ready),
    .io_predicateIn_1_valid(bb_for_cond_cleanup9_io_predicateIn_1_valid),
    .io_predicateIn_1_bits_control(bb_for_cond_cleanup9_io_predicateIn_1_bits_control),
    .io_Out_0_ready(bb_for_cond_cleanup9_io_Out_0_ready),
    .io_Out_0_valid(bb_for_cond_cleanup9_io_Out_0_valid),
    .io_Out_0_bits_taskID(bb_for_cond_cleanup9_io_Out_0_bits_taskID)
  );
  BasicBlockNode bb_for_body4_lr_ph11 ( // @[relu.scala 68:36]
    .clock(bb_for_body4_lr_ph11_clock),
    .reset(bb_for_body4_lr_ph11_reset),
    .io_MaskBB_0_ready(bb_for_body4_lr_ph11_io_MaskBB_0_ready),
    .io_MaskBB_0_valid(bb_for_body4_lr_ph11_io_MaskBB_0_valid),
    .io_MaskBB_0_bits(bb_for_body4_lr_ph11_io_MaskBB_0_bits),
    .io_Out_0_ready(bb_for_body4_lr_ph11_io_Out_0_ready),
    .io_Out_0_valid(bb_for_body4_lr_ph11_io_Out_0_valid),
    .io_Out_0_bits_taskID(bb_for_body4_lr_ph11_io_Out_0_bits_taskID),
    .io_Out_0_bits_control(bb_for_body4_lr_ph11_io_Out_0_bits_control),
    .io_Out_1_ready(bb_for_body4_lr_ph11_io_Out_1_ready),
    .io_Out_1_valid(bb_for_body4_lr_ph11_io_Out_1_valid),
    .io_Out_1_bits_control(bb_for_body4_lr_ph11_io_Out_1_bits_control),
    .io_Out_2_ready(bb_for_body4_lr_ph11_io_Out_2_ready),
    .io_Out_2_valid(bb_for_body4_lr_ph11_io_Out_2_valid),
    .io_Out_2_bits_taskID(bb_for_body4_lr_ph11_io_Out_2_bits_taskID),
    .io_Out_2_bits_control(bb_for_body4_lr_ph11_io_Out_2_bits_control),
    .io_Out_3_ready(bb_for_body4_lr_ph11_io_Out_3_ready),
    .io_Out_3_valid(bb_for_body4_lr_ph11_io_Out_3_valid),
    .io_Out_3_bits_taskID(bb_for_body4_lr_ph11_io_Out_3_bits_taskID),
    .io_Out_3_bits_control(bb_for_body4_lr_ph11_io_Out_3_bits_control),
    .io_predicateIn_0_ready(bb_for_body4_lr_ph11_io_predicateIn_0_ready),
    .io_predicateIn_0_valid(bb_for_body4_lr_ph11_io_predicateIn_0_valid),
    .io_predicateIn_0_bits_taskID(bb_for_body4_lr_ph11_io_predicateIn_0_bits_taskID),
    .io_predicateIn_0_bits_control(bb_for_body4_lr_ph11_io_predicateIn_0_bits_control),
    .io_predicateIn_1_ready(bb_for_body4_lr_ph11_io_predicateIn_1_ready),
    .io_predicateIn_1_valid(bb_for_body4_lr_ph11_io_predicateIn_1_valid),
    .io_predicateIn_1_bits_taskID(bb_for_body4_lr_ph11_io_predicateIn_1_bits_taskID),
    .io_predicateIn_1_bits_control(bb_for_body4_lr_ph11_io_predicateIn_1_bits_control)
  );
  BasicBlockNoMaskFastNode_4 bb_for_cond_cleanup315 ( // @[relu.scala 70:38]
    .clock(bb_for_cond_cleanup315_clock),
    .reset(bb_for_cond_cleanup315_reset),
    .io_predicateIn_0_ready(bb_for_cond_cleanup315_io_predicateIn_0_ready),
    .io_predicateIn_0_valid(bb_for_cond_cleanup315_io_predicateIn_0_valid),
    .io_predicateIn_0_bits_taskID(bb_for_cond_cleanup315_io_predicateIn_0_bits_taskID),
    .io_predicateIn_0_bits_control(bb_for_cond_cleanup315_io_predicateIn_0_bits_control),
    .io_Out_0_ready(bb_for_cond_cleanup315_io_Out_0_ready),
    .io_Out_0_valid(bb_for_cond_cleanup315_io_Out_0_valid),
    .io_Out_0_bits_taskID(bb_for_cond_cleanup315_io_Out_0_bits_taskID),
    .io_Out_0_bits_control(bb_for_cond_cleanup315_io_Out_0_bits_control),
    .io_Out_1_ready(bb_for_cond_cleanup315_io_Out_1_ready),
    .io_Out_1_valid(bb_for_cond_cleanup315_io_Out_1_valid),
    .io_Out_1_bits_taskID(bb_for_cond_cleanup315_io_Out_1_bits_taskID),
    .io_Out_1_bits_control(bb_for_cond_cleanup315_io_Out_1_bits_control),
    .io_Out_2_ready(bb_for_cond_cleanup315_io_Out_2_ready),
    .io_Out_2_valid(bb_for_cond_cleanup315_io_Out_2_valid),
    .io_Out_2_bits_taskID(bb_for_cond_cleanup315_io_Out_2_bits_taskID),
    .io_Out_2_bits_control(bb_for_cond_cleanup315_io_Out_2_bits_control),
    .io_Out_3_ready(bb_for_cond_cleanup315_io_Out_3_ready),
    .io_Out_3_valid(bb_for_cond_cleanup315_io_Out_3_valid),
    .io_Out_3_bits_taskID(bb_for_cond_cleanup315_io_Out_3_bits_taskID),
    .io_Out_3_bits_control(bb_for_cond_cleanup315_io_Out_3_bits_control)
  );
  BasicBlockNode_1 bb_for_body419 ( // @[relu.scala 72:30]
    .clock(bb_for_body419_clock),
    .reset(bb_for_body419_reset),
    .io_MaskBB_0_ready(bb_for_body419_io_MaskBB_0_ready),
    .io_MaskBB_0_valid(bb_for_body419_io_MaskBB_0_valid),
    .io_MaskBB_0_bits(bb_for_body419_io_MaskBB_0_bits),
    .io_Out_0_ready(bb_for_body419_io_Out_0_ready),
    .io_Out_0_valid(bb_for_body419_io_Out_0_valid),
    .io_Out_0_bits_taskID(bb_for_body419_io_Out_0_bits_taskID),
    .io_Out_0_bits_control(bb_for_body419_io_Out_0_bits_control),
    .io_Out_1_ready(bb_for_body419_io_Out_1_ready),
    .io_Out_1_valid(bb_for_body419_io_Out_1_valid),
    .io_Out_1_bits_taskID(bb_for_body419_io_Out_1_bits_taskID),
    .io_Out_1_bits_control(bb_for_body419_io_Out_1_bits_control),
    .io_Out_2_ready(bb_for_body419_io_Out_2_ready),
    .io_Out_2_valid(bb_for_body419_io_Out_2_valid),
    .io_Out_2_bits_taskID(bb_for_body419_io_Out_2_bits_taskID),
    .io_Out_2_bits_control(bb_for_body419_io_Out_2_bits_control),
    .io_Out_3_ready(bb_for_body419_io_Out_3_ready),
    .io_Out_3_valid(bb_for_body419_io_Out_3_valid),
    .io_Out_3_bits_taskID(bb_for_body419_io_Out_3_bits_taskID),
    .io_Out_3_bits_control(bb_for_body419_io_Out_3_bits_control),
    .io_Out_4_ready(bb_for_body419_io_Out_4_ready),
    .io_Out_4_valid(bb_for_body419_io_Out_4_valid),
    .io_Out_4_bits_control(bb_for_body419_io_Out_4_bits_control),
    .io_Out_5_ready(bb_for_body419_io_Out_5_ready),
    .io_Out_5_valid(bb_for_body419_io_Out_5_valid),
    .io_Out_5_bits_taskID(bb_for_body419_io_Out_5_bits_taskID),
    .io_Out_5_bits_control(bb_for_body419_io_Out_5_bits_control),
    .io_Out_6_ready(bb_for_body419_io_Out_6_ready),
    .io_Out_6_valid(bb_for_body419_io_Out_6_valid),
    .io_Out_6_bits_taskID(bb_for_body419_io_Out_6_bits_taskID),
    .io_Out_6_bits_control(bb_for_body419_io_Out_6_bits_control),
    .io_Out_7_ready(bb_for_body419_io_Out_7_ready),
    .io_Out_7_valid(bb_for_body419_io_Out_7_valid),
    .io_Out_7_bits_taskID(bb_for_body419_io_Out_7_bits_taskID),
    .io_Out_7_bits_control(bb_for_body419_io_Out_7_bits_control),
    .io_Out_8_ready(bb_for_body419_io_Out_8_ready),
    .io_Out_8_valid(bb_for_body419_io_Out_8_valid),
    .io_Out_8_bits_taskID(bb_for_body419_io_Out_8_bits_taskID),
    .io_Out_8_bits_control(bb_for_body419_io_Out_8_bits_control),
    .io_Out_9_ready(bb_for_body419_io_Out_9_ready),
    .io_Out_9_valid(bb_for_body419_io_Out_9_valid),
    .io_Out_9_bits_taskID(bb_for_body419_io_Out_9_bits_taskID),
    .io_Out_9_bits_control(bb_for_body419_io_Out_9_bits_control),
    .io_Out_10_ready(bb_for_body419_io_Out_10_ready),
    .io_Out_10_valid(bb_for_body419_io_Out_10_valid),
    .io_Out_10_bits_taskID(bb_for_body419_io_Out_10_bits_taskID),
    .io_Out_10_bits_control(bb_for_body419_io_Out_10_bits_control),
    .io_Out_11_ready(bb_for_body419_io_Out_11_ready),
    .io_Out_11_valid(bb_for_body419_io_Out_11_valid),
    .io_Out_11_bits_taskID(bb_for_body419_io_Out_11_bits_taskID),
    .io_Out_11_bits_control(bb_for_body419_io_Out_11_bits_control),
    .io_Out_12_ready(bb_for_body419_io_Out_12_ready),
    .io_Out_12_valid(bb_for_body419_io_Out_12_valid),
    .io_Out_12_bits_taskID(bb_for_body419_io_Out_12_bits_taskID),
    .io_Out_13_ready(bb_for_body419_io_Out_13_ready),
    .io_Out_13_valid(bb_for_body419_io_Out_13_valid),
    .io_Out_13_bits_taskID(bb_for_body419_io_Out_13_bits_taskID),
    .io_Out_13_bits_control(bb_for_body419_io_Out_13_bits_control),
    .io_Out_14_ready(bb_for_body419_io_Out_14_ready),
    .io_Out_14_valid(bb_for_body419_io_Out_14_valid),
    .io_Out_14_bits_taskID(bb_for_body419_io_Out_14_bits_taskID),
    .io_Out_14_bits_control(bb_for_body419_io_Out_14_bits_control),
    .io_Out_15_ready(bb_for_body419_io_Out_15_ready),
    .io_Out_15_valid(bb_for_body419_io_Out_15_valid),
    .io_Out_15_bits_taskID(bb_for_body419_io_Out_15_bits_taskID),
    .io_Out_15_bits_control(bb_for_body419_io_Out_15_bits_control),
    .io_Out_16_ready(bb_for_body419_io_Out_16_ready),
    .io_Out_16_valid(bb_for_body419_io_Out_16_valid),
    .io_Out_16_bits_taskID(bb_for_body419_io_Out_16_bits_taskID),
    .io_Out_16_bits_control(bb_for_body419_io_Out_16_bits_control),
    .io_predicateIn_0_ready(bb_for_body419_io_predicateIn_0_ready),
    .io_predicateIn_0_valid(bb_for_body419_io_predicateIn_0_valid),
    .io_predicateIn_0_bits_taskID(bb_for_body419_io_predicateIn_0_bits_taskID),
    .io_predicateIn_0_bits_control(bb_for_body419_io_predicateIn_0_bits_control),
    .io_predicateIn_1_ready(bb_for_body419_io_predicateIn_1_ready),
    .io_predicateIn_1_valid(bb_for_body419_io_predicateIn_1_valid),
    .io_predicateIn_1_bits_taskID(bb_for_body419_io_predicateIn_1_bits_taskID),
    .io_predicateIn_1_bits_control(bb_for_body419_io_predicateIn_1_bits_control)
  );
  ComputeNode icmp_cmp310 ( // @[relu.scala 81:27]
    .clock(icmp_cmp310_clock),
    .reset(icmp_cmp310_reset),
    .io_enable_ready(icmp_cmp310_io_enable_ready),
    .io_enable_valid(icmp_cmp310_io_enable_valid),
    .io_enable_bits_control(icmp_cmp310_io_enable_bits_control),
    .io_Out_0_ready(icmp_cmp310_io_Out_0_ready),
    .io_Out_0_valid(icmp_cmp310_io_Out_0_valid),
    .io_Out_0_bits_data(icmp_cmp310_io_Out_0_bits_data),
    .io_LeftIO_ready(icmp_cmp310_io_LeftIO_ready),
    .io_LeftIO_valid(icmp_cmp310_io_LeftIO_valid),
    .io_LeftIO_bits_data(icmp_cmp310_io_LeftIO_bits_data),
    .io_RightIO_ready(icmp_cmp310_io_RightIO_ready),
    .io_RightIO_valid(icmp_cmp310_io_RightIO_valid)
  );
  CBranchNodeVariable br_3 ( // @[relu.scala 84:20]
    .clock(br_3_clock),
    .reset(br_3_reset),
    .io_enable_ready(br_3_io_enable_ready),
    .io_enable_valid(br_3_io_enable_valid),
    .io_enable_bits_control(br_3_io_enable_bits_control),
    .io_CmpIO_ready(br_3_io_CmpIO_ready),
    .io_CmpIO_valid(br_3_io_CmpIO_valid),
    .io_CmpIO_bits_data(br_3_io_CmpIO_bits_data),
    .io_TrueOutput_0_ready(br_3_io_TrueOutput_0_ready),
    .io_TrueOutput_0_valid(br_3_io_TrueOutput_0_valid),
    .io_TrueOutput_0_bits_control(br_3_io_TrueOutput_0_bits_control),
    .io_FalseOutput_0_ready(br_3_io_FalseOutput_0_ready),
    .io_FalseOutput_0_valid(br_3_io_FalseOutput_0_valid),
    .io_FalseOutput_0_bits_control(br_3_io_FalseOutput_0_bits_control)
  );
  ZextNode sextwide_trip_count5 ( // @[relu.scala 87:36]
    .clock(sextwide_trip_count5_clock),
    .reset(sextwide_trip_count5_reset),
    .io_Input_ready(sextwide_trip_count5_io_Input_ready),
    .io_Input_valid(sextwide_trip_count5_io_Input_valid),
    .io_Input_bits_data(sextwide_trip_count5_io_Input_bits_data),
    .io_enable_ready(sextwide_trip_count5_io_enable_ready),
    .io_enable_valid(sextwide_trip_count5_io_enable_valid),
    .io_enable_bits_control(sextwide_trip_count5_io_enable_bits_control),
    .io_Out_0_ready(sextwide_trip_count5_io_Out_0_ready),
    .io_Out_0_valid(sextwide_trip_count5_io_Out_0_valid),
    .io_Out_0_bits_data(sextwide_trip_count5_io_Out_0_bits_data)
  );
  UBranchNode br_6 ( // @[relu.scala 90:20]
    .clock(br_6_clock),
    .reset(br_6_reset),
    .io_enable_ready(br_6_io_enable_ready),
    .io_enable_valid(br_6_io_enable_valid),
    .io_enable_bits_control(br_6_io_enable_bits_control),
    .io_Out_0_ready(br_6_io_Out_0_ready),
    .io_Out_0_valid(br_6_io_Out_0_valid),
    .io_Out_0_bits_control(br_6_io_Out_0_bits_control)
  );
  UBranchNode_1 br_8 ( // @[relu.scala 93:20]
    .clock(br_8_clock),
    .reset(br_8_reset),
    .io_enable_ready(br_8_io_enable_ready),
    .io_enable_valid(br_8_io_enable_valid),
    .io_enable_bits_taskID(br_8_io_enable_bits_taskID),
    .io_enable_bits_control(br_8_io_enable_bits_control),
    .io_Out_0_ready(br_8_io_Out_0_ready),
    .io_Out_0_valid(br_8_io_Out_0_valid),
    .io_Out_0_bits_taskID(br_8_io_Out_0_bits_taskID),
    .io_Out_0_bits_control(br_8_io_Out_0_bits_control)
  );
  RetNode2 ret_10 ( // @[relu.scala 96:22]
    .clock(ret_10_clock),
    .reset(ret_10_reset),
    .io_In_enable_ready(ret_10_io_In_enable_ready),
    .io_In_enable_valid(ret_10_io_In_enable_valid),
    .io_In_enable_bits_taskID(ret_10_io_In_enable_bits_taskID),
    .io_Out_ready(ret_10_io_Out_ready),
    .io_Out_valid(ret_10_io_Out_valid)
  );
  PhiFastNode phij_03212 ( // @[relu.scala 99:26]
    .clock(phij_03212_clock),
    .reset(phij_03212_reset),
    .io_enable_ready(phij_03212_io_enable_ready),
    .io_enable_valid(phij_03212_io_enable_valid),
    .io_enable_bits_control(phij_03212_io_enable_bits_control),
    .io_InData_0_ready(phij_03212_io_InData_0_ready),
    .io_InData_0_valid(phij_03212_io_InData_0_valid),
    .io_InData_0_bits_taskID(phij_03212_io_InData_0_bits_taskID),
    .io_InData_1_ready(phij_03212_io_InData_1_ready),
    .io_InData_1_valid(phij_03212_io_InData_1_valid),
    .io_InData_1_bits_taskID(phij_03212_io_InData_1_bits_taskID),
    .io_InData_1_bits_data(phij_03212_io_InData_1_bits_data),
    .io_Mask_ready(phij_03212_io_Mask_ready),
    .io_Mask_valid(phij_03212_io_Mask_valid),
    .io_Mask_bits(phij_03212_io_Mask_bits),
    .io_Out_0_ready(phij_03212_io_Out_0_ready),
    .io_Out_0_valid(phij_03212_io_Out_0_valid),
    .io_Out_0_bits_data(phij_03212_io_Out_0_bits_data),
    .io_Out_1_ready(phij_03212_io_Out_1_ready),
    .io_Out_1_valid(phij_03212_io_Out_1_valid),
    .io_Out_1_bits_data(phij_03212_io_Out_1_bits_data)
  );
  ComputeNode_1 binaryOp_mul13 ( // @[relu.scala 102:30]
    .clock(binaryOp_mul13_clock),
    .reset(binaryOp_mul13_reset),
    .io_enable_ready(binaryOp_mul13_io_enable_ready),
    .io_enable_valid(binaryOp_mul13_io_enable_valid),
    .io_enable_bits_taskID(binaryOp_mul13_io_enable_bits_taskID),
    .io_enable_bits_control(binaryOp_mul13_io_enable_bits_control),
    .io_Out_0_ready(binaryOp_mul13_io_Out_0_ready),
    .io_Out_0_valid(binaryOp_mul13_io_Out_0_valid),
    .io_Out_0_bits_data(binaryOp_mul13_io_Out_0_bits_data),
    .io_LeftIO_ready(binaryOp_mul13_io_LeftIO_ready),
    .io_LeftIO_valid(binaryOp_mul13_io_LeftIO_valid),
    .io_LeftIO_bits_data(binaryOp_mul13_io_LeftIO_bits_data),
    .io_RightIO_ready(binaryOp_mul13_io_RightIO_ready),
    .io_RightIO_valid(binaryOp_mul13_io_RightIO_valid),
    .io_RightIO_bits_data(binaryOp_mul13_io_RightIO_bits_data)
  );
  UBranchNode_2 br_14 ( // @[relu.scala 105:21]
    .clock(br_14_clock),
    .reset(br_14_reset),
    .io_enable_ready(br_14_io_enable_ready),
    .io_enable_valid(br_14_io_enable_valid),
    .io_enable_bits_taskID(br_14_io_enable_bits_taskID),
    .io_enable_bits_control(br_14_io_enable_bits_control),
    .io_Out_0_ready(br_14_io_Out_0_ready),
    .io_Out_0_valid(br_14_io_Out_0_valid),
    .io_Out_0_bits_taskID(br_14_io_Out_0_bits_taskID),
    .io_Out_0_bits_control(br_14_io_Out_0_bits_control)
  );
  ComputeNode_2 binaryOp_inc1316 ( // @[relu.scala 108:32]
    .clock(binaryOp_inc1316_clock),
    .reset(binaryOp_inc1316_reset),
    .io_enable_ready(binaryOp_inc1316_io_enable_ready),
    .io_enable_valid(binaryOp_inc1316_io_enable_valid),
    .io_enable_bits_taskID(binaryOp_inc1316_io_enable_bits_taskID),
    .io_enable_bits_control(binaryOp_inc1316_io_enable_bits_control),
    .io_Out_0_ready(binaryOp_inc1316_io_Out_0_ready),
    .io_Out_0_valid(binaryOp_inc1316_io_Out_0_valid),
    .io_Out_0_bits_taskID(binaryOp_inc1316_io_Out_0_bits_taskID),
    .io_Out_0_bits_data(binaryOp_inc1316_io_Out_0_bits_data),
    .io_Out_1_ready(binaryOp_inc1316_io_Out_1_ready),
    .io_Out_1_valid(binaryOp_inc1316_io_Out_1_valid),
    .io_Out_1_bits_data(binaryOp_inc1316_io_Out_1_bits_data),
    .io_LeftIO_ready(binaryOp_inc1316_io_LeftIO_ready),
    .io_LeftIO_valid(binaryOp_inc1316_io_LeftIO_valid),
    .io_LeftIO_bits_data(binaryOp_inc1316_io_LeftIO_bits_data),
    .io_RightIO_ready(binaryOp_inc1316_io_RightIO_ready),
    .io_RightIO_valid(binaryOp_inc1316_io_RightIO_valid)
  );
  ComputeNode_3 icmp_exitcond3310 ( // @[relu.scala 111:33]
    .clock(icmp_exitcond3310_clock),
    .reset(icmp_exitcond3310_reset),
    .io_enable_ready(icmp_exitcond3310_io_enable_ready),
    .io_enable_valid(icmp_exitcond3310_io_enable_valid),
    .io_enable_bits_taskID(icmp_exitcond3310_io_enable_bits_taskID),
    .io_enable_bits_control(icmp_exitcond3310_io_enable_bits_control),
    .io_Out_0_ready(icmp_exitcond3310_io_Out_0_ready),
    .io_Out_0_valid(icmp_exitcond3310_io_Out_0_valid),
    .io_Out_0_bits_taskID(icmp_exitcond3310_io_Out_0_bits_taskID),
    .io_Out_0_bits_data(icmp_exitcond3310_io_Out_0_bits_data),
    .io_LeftIO_ready(icmp_exitcond3310_io_LeftIO_ready),
    .io_LeftIO_valid(icmp_exitcond3310_io_LeftIO_valid),
    .io_LeftIO_bits_data(icmp_exitcond3310_io_LeftIO_bits_data),
    .io_RightIO_ready(icmp_exitcond3310_io_RightIO_ready),
    .io_RightIO_valid(icmp_exitcond3310_io_RightIO_valid),
    .io_RightIO_bits_data(icmp_exitcond3310_io_RightIO_bits_data)
  );
  CBranchNodeVariable_1 br_18 ( // @[relu.scala 114:21]
    .clock(br_18_clock),
    .reset(br_18_reset),
    .io_enable_ready(br_18_io_enable_ready),
    .io_enable_valid(br_18_io_enable_valid),
    .io_enable_bits_taskID(br_18_io_enable_bits_taskID),
    .io_enable_bits_control(br_18_io_enable_bits_control),
    .io_CmpIO_ready(br_18_io_CmpIO_ready),
    .io_CmpIO_valid(br_18_io_CmpIO_valid),
    .io_CmpIO_bits_taskID(br_18_io_CmpIO_bits_taskID),
    .io_CmpIO_bits_data(br_18_io_CmpIO_bits_data),
    .io_TrueOutput_0_ready(br_18_io_TrueOutput_0_ready),
    .io_TrueOutput_0_valid(br_18_io_TrueOutput_0_valid),
    .io_TrueOutput_0_bits_control(br_18_io_TrueOutput_0_bits_control),
    .io_FalseOutput_0_ready(br_18_io_FalseOutput_0_ready),
    .io_FalseOutput_0_valid(br_18_io_FalseOutput_0_valid),
    .io_FalseOutput_0_bits_taskID(br_18_io_FalseOutput_0_bits_taskID),
    .io_FalseOutput_0_bits_control(br_18_io_FalseOutput_0_bits_control)
  );
  PhiFastNode_1 phiindvars_iv20 ( // @[relu.scala 117:31]
    .clock(phiindvars_iv20_clock),
    .reset(phiindvars_iv20_reset),
    .io_enable_ready(phiindvars_iv20_io_enable_ready),
    .io_enable_valid(phiindvars_iv20_io_enable_valid),
    .io_enable_bits_control(phiindvars_iv20_io_enable_bits_control),
    .io_InData_0_ready(phiindvars_iv20_io_InData_0_ready),
    .io_InData_0_valid(phiindvars_iv20_io_InData_0_valid),
    .io_InData_0_bits_taskID(phiindvars_iv20_io_InData_0_bits_taskID),
    .io_InData_1_ready(phiindvars_iv20_io_InData_1_ready),
    .io_InData_1_valid(phiindvars_iv20_io_InData_1_valid),
    .io_InData_1_bits_taskID(phiindvars_iv20_io_InData_1_bits_taskID),
    .io_InData_1_bits_data(phiindvars_iv20_io_InData_1_bits_data),
    .io_Mask_ready(phiindvars_iv20_io_Mask_ready),
    .io_Mask_valid(phiindvars_iv20_io_Mask_valid),
    .io_Mask_bits(phiindvars_iv20_io_Mask_bits),
    .io_Out_0_ready(phiindvars_iv20_io_Out_0_ready),
    .io_Out_0_valid(phiindvars_iv20_io_Out_0_valid),
    .io_Out_0_bits_data(phiindvars_iv20_io_Out_0_bits_data),
    .io_Out_1_ready(phiindvars_iv20_io_Out_1_ready),
    .io_Out_1_valid(phiindvars_iv20_io_Out_1_valid),
    .io_Out_1_bits_data(phiindvars_iv20_io_Out_1_bits_data)
  );
  TruncNode trunc21 ( // @[relu.scala 120:23]
    .clock(trunc21_clock),
    .reset(trunc21_reset),
    .io_Input_ready(trunc21_io_Input_ready),
    .io_Input_valid(trunc21_io_Input_valid),
    .io_Input_bits_data(trunc21_io_Input_bits_data),
    .io_enable_ready(trunc21_io_enable_ready),
    .io_enable_valid(trunc21_io_enable_valid),
    .io_enable_bits_taskID(trunc21_io_enable_bits_taskID),
    .io_enable_bits_control(trunc21_io_enable_bits_control),
    .io_Out_0_ready(trunc21_io_Out_0_ready),
    .io_Out_0_valid(trunc21_io_Out_0_valid),
    .io_Out_0_bits_data(trunc21_io_Out_0_bits_data)
  );
  ComputeNode_4 binaryOp_add22 ( // @[relu.scala 123:30]
    .clock(binaryOp_add22_clock),
    .reset(binaryOp_add22_reset),
    .io_enable_ready(binaryOp_add22_io_enable_ready),
    .io_enable_valid(binaryOp_add22_io_enable_valid),
    .io_enable_bits_taskID(binaryOp_add22_io_enable_bits_taskID),
    .io_enable_bits_control(binaryOp_add22_io_enable_bits_control),
    .io_Out_0_ready(binaryOp_add22_io_Out_0_ready),
    .io_Out_0_valid(binaryOp_add22_io_Out_0_valid),
    .io_Out_0_bits_data(binaryOp_add22_io_Out_0_bits_data),
    .io_LeftIO_ready(binaryOp_add22_io_LeftIO_ready),
    .io_LeftIO_valid(binaryOp_add22_io_LeftIO_valid),
    .io_LeftIO_bits_data(binaryOp_add22_io_LeftIO_bits_data),
    .io_RightIO_ready(binaryOp_add22_io_RightIO_ready),
    .io_RightIO_valid(binaryOp_add22_io_RightIO_valid),
    .io_RightIO_bits_data(binaryOp_add22_io_RightIO_bits_data)
  );
  ZextNode_1 sextidxprom23 ( // @[relu.scala 126:29]
    .clock(sextidxprom23_clock),
    .reset(sextidxprom23_reset),
    .io_Input_ready(sextidxprom23_io_Input_ready),
    .io_Input_valid(sextidxprom23_io_Input_valid),
    .io_Input_bits_data(sextidxprom23_io_Input_bits_data),
    .io_enable_ready(sextidxprom23_io_enable_ready),
    .io_enable_valid(sextidxprom23_io_enable_valid),
    .io_enable_bits_taskID(sextidxprom23_io_enable_bits_taskID),
    .io_enable_bits_control(sextidxprom23_io_enable_bits_control),
    .io_Out_0_ready(sextidxprom23_io_Out_0_ready),
    .io_Out_0_valid(sextidxprom23_io_Out_0_valid),
    .io_Out_0_bits_data(sextidxprom23_io_Out_0_bits_data),
    .io_Out_1_ready(sextidxprom23_io_Out_1_ready),
    .io_Out_1_valid(sextidxprom23_io_Out_1_valid),
    .io_Out_1_bits_data(sextidxprom23_io_Out_1_bits_data)
  );
  GepNode Gep_arrayidx24 ( // @[relu.scala 129:30]
    .clock(Gep_arrayidx24_clock),
    .reset(Gep_arrayidx24_reset),
    .io_enable_ready(Gep_arrayidx24_io_enable_ready),
    .io_enable_valid(Gep_arrayidx24_io_enable_valid),
    .io_enable_bits_taskID(Gep_arrayidx24_io_enable_bits_taskID),
    .io_enable_bits_control(Gep_arrayidx24_io_enable_bits_control),
    .io_Out_0_ready(Gep_arrayidx24_io_Out_0_ready),
    .io_Out_0_valid(Gep_arrayidx24_io_Out_0_valid),
    .io_Out_0_bits_data(Gep_arrayidx24_io_Out_0_bits_data),
    .io_baseAddress_ready(Gep_arrayidx24_io_baseAddress_ready),
    .io_baseAddress_valid(Gep_arrayidx24_io_baseAddress_valid),
    .io_baseAddress_bits_data(Gep_arrayidx24_io_baseAddress_bits_data),
    .io_idx_0_ready(Gep_arrayidx24_io_idx_0_ready),
    .io_idx_0_valid(Gep_arrayidx24_io_idx_0_valid),
    .io_idx_0_bits_data(Gep_arrayidx24_io_idx_0_bits_data)
  );
  UnTypLoadCache ld_25 ( // @[relu.scala 132:21]
    .clock(ld_25_clock),
    .reset(ld_25_reset),
    .io_enable_ready(ld_25_io_enable_ready),
    .io_enable_valid(ld_25_io_enable_valid),
    .io_enable_bits_taskID(ld_25_io_enable_bits_taskID),
    .io_enable_bits_control(ld_25_io_enable_bits_control),
    .io_Out_0_ready(ld_25_io_Out_0_ready),
    .io_Out_0_valid(ld_25_io_Out_0_valid),
    .io_Out_0_bits_data(ld_25_io_Out_0_bits_data),
    .io_Out_1_ready(ld_25_io_Out_1_ready),
    .io_Out_1_valid(ld_25_io_Out_1_valid),
    .io_Out_1_bits_data(ld_25_io_Out_1_bits_data),
    .io_GepAddr_ready(ld_25_io_GepAddr_ready),
    .io_GepAddr_valid(ld_25_io_GepAddr_valid),
    .io_GepAddr_bits_data(ld_25_io_GepAddr_bits_data),
    .io_MemReq_ready(ld_25_io_MemReq_ready),
    .io_MemReq_valid(ld_25_io_MemReq_valid),
    .io_MemReq_bits_addr(ld_25_io_MemReq_bits_addr),
    .io_MemResp_valid(ld_25_io_MemResp_valid),
    .io_MemResp_bits_data(ld_25_io_MemResp_bits_data)
  );
  GepNode_1 Gep_arrayidx726 ( // @[relu.scala 135:31]
    .clock(Gep_arrayidx726_clock),
    .reset(Gep_arrayidx726_reset),
    .io_enable_ready(Gep_arrayidx726_io_enable_ready),
    .io_enable_valid(Gep_arrayidx726_io_enable_valid),
    .io_enable_bits_taskID(Gep_arrayidx726_io_enable_bits_taskID),
    .io_enable_bits_control(Gep_arrayidx726_io_enable_bits_control),
    .io_Out_0_ready(Gep_arrayidx726_io_Out_0_ready),
    .io_Out_0_valid(Gep_arrayidx726_io_Out_0_valid),
    .io_Out_0_bits_data(Gep_arrayidx726_io_Out_0_bits_data),
    .io_baseAddress_ready(Gep_arrayidx726_io_baseAddress_ready),
    .io_baseAddress_valid(Gep_arrayidx726_io_baseAddress_valid),
    .io_baseAddress_bits_data(Gep_arrayidx726_io_baseAddress_bits_data),
    .io_idx_0_ready(Gep_arrayidx726_io_idx_0_ready),
    .io_idx_0_valid(Gep_arrayidx726_io_idx_0_valid),
    .io_idx_0_bits_data(Gep_arrayidx726_io_idx_0_bits_data)
  );
  ComputeNode_5 icmp_19 ( // @[relu.scala 138:23]
    .clock(icmp_19_clock),
    .reset(icmp_19_reset),
    .io_enable_ready(icmp_19_io_enable_ready),
    .io_enable_valid(icmp_19_io_enable_valid),
    .io_enable_bits_taskID(icmp_19_io_enable_bits_taskID),
    .io_enable_bits_control(icmp_19_io_enable_bits_control),
    .io_Out_0_ready(icmp_19_io_Out_0_ready),
    .io_Out_0_valid(icmp_19_io_Out_0_valid),
    .io_Out_0_bits_data(icmp_19_io_Out_0_bits_data),
    .io_LeftIO_ready(icmp_19_io_LeftIO_ready),
    .io_LeftIO_valid(icmp_19_io_LeftIO_valid),
    .io_LeftIO_bits_data(icmp_19_io_LeftIO_bits_data),
    .io_RightIO_ready(icmp_19_io_RightIO_ready),
    .io_RightIO_valid(icmp_19_io_RightIO_valid)
  );
  SelectNode select__28 ( // @[relu.scala 141:26]
    .clock(select__28_clock),
    .reset(select__28_reset),
    .io_enable_ready(select__28_io_enable_ready),
    .io_enable_valid(select__28_io_enable_valid),
    .io_enable_bits_taskID(select__28_io_enable_bits_taskID),
    .io_Out_0_ready(select__28_io_Out_0_ready),
    .io_Out_0_valid(select__28_io_Out_0_valid),
    .io_Out_0_bits_data(select__28_io_Out_0_bits_data),
    .io_InData1_ready(select__28_io_InData1_ready),
    .io_InData1_valid(select__28_io_InData1_valid),
    .io_InData1_bits_data(select__28_io_InData1_bits_data),
    .io_InData2_ready(select__28_io_InData2_ready),
    .io_InData2_valid(select__28_io_InData2_valid),
    .io_Select_ready(select__28_io_Select_ready),
    .io_Select_valid(select__28_io_Select_valid),
    .io_Select_bits_data(select__28_io_Select_bits_data)
  );
  UnTypStoreCache st_29 ( // @[relu.scala 144:21]
    .clock(st_29_clock),
    .reset(st_29_reset),
    .io_enable_ready(st_29_io_enable_ready),
    .io_enable_valid(st_29_io_enable_valid),
    .io_enable_bits_taskID(st_29_io_enable_bits_taskID),
    .io_enable_bits_control(st_29_io_enable_bits_control),
    .io_SuccOp_0_ready(st_29_io_SuccOp_0_ready),
    .io_SuccOp_0_valid(st_29_io_SuccOp_0_valid),
    .io_GepAddr_ready(st_29_io_GepAddr_ready),
    .io_GepAddr_valid(st_29_io_GepAddr_valid),
    .io_GepAddr_bits_data(st_29_io_GepAddr_bits_data),
    .io_inData_ready(st_29_io_inData_ready),
    .io_inData_valid(st_29_io_inData_valid),
    .io_inData_bits_data(st_29_io_inData_bits_data),
    .io_MemReq_ready(st_29_io_MemReq_ready),
    .io_MemReq_valid(st_29_io_MemReq_valid),
    .io_MemReq_bits_addr(st_29_io_MemReq_bits_addr),
    .io_MemReq_bits_data(st_29_io_MemReq_bits_data),
    .io_MemResp_valid(st_29_io_MemResp_valid)
  );
  ComputeNode_6 binaryOp_indvars_iv_next30 ( // @[relu.scala 147:42]
    .clock(binaryOp_indvars_iv_next30_clock),
    .reset(binaryOp_indvars_iv_next30_reset),
    .io_enable_ready(binaryOp_indvars_iv_next30_io_enable_ready),
    .io_enable_valid(binaryOp_indvars_iv_next30_io_enable_valid),
    .io_enable_bits_taskID(binaryOp_indvars_iv_next30_io_enable_bits_taskID),
    .io_enable_bits_control(binaryOp_indvars_iv_next30_io_enable_bits_control),
    .io_Out_0_ready(binaryOp_indvars_iv_next30_io_Out_0_ready),
    .io_Out_0_valid(binaryOp_indvars_iv_next30_io_Out_0_valid),
    .io_Out_0_bits_taskID(binaryOp_indvars_iv_next30_io_Out_0_bits_taskID),
    .io_Out_0_bits_data(binaryOp_indvars_iv_next30_io_Out_0_bits_data),
    .io_Out_1_ready(binaryOp_indvars_iv_next30_io_Out_1_ready),
    .io_Out_1_valid(binaryOp_indvars_iv_next30_io_Out_1_valid),
    .io_Out_1_bits_data(binaryOp_indvars_iv_next30_io_Out_1_bits_data),
    .io_LeftIO_ready(binaryOp_indvars_iv_next30_io_LeftIO_ready),
    .io_LeftIO_valid(binaryOp_indvars_iv_next30_io_LeftIO_valid),
    .io_LeftIO_bits_data(binaryOp_indvars_iv_next30_io_LeftIO_bits_data),
    .io_RightIO_ready(binaryOp_indvars_iv_next30_io_RightIO_ready),
    .io_RightIO_valid(binaryOp_indvars_iv_next30_io_RightIO_valid)
  );
  ComputeNode_7 icmp_exitcond23 ( // @[relu.scala 150:31]
    .clock(icmp_exitcond23_clock),
    .reset(icmp_exitcond23_reset),
    .io_enable_ready(icmp_exitcond23_io_enable_ready),
    .io_enable_valid(icmp_exitcond23_io_enable_valid),
    .io_enable_bits_taskID(icmp_exitcond23_io_enable_bits_taskID),
    .io_enable_bits_control(icmp_exitcond23_io_enable_bits_control),
    .io_Out_0_ready(icmp_exitcond23_io_Out_0_ready),
    .io_Out_0_valid(icmp_exitcond23_io_Out_0_valid),
    .io_Out_0_bits_taskID(icmp_exitcond23_io_Out_0_bits_taskID),
    .io_Out_0_bits_data(icmp_exitcond23_io_Out_0_bits_data),
    .io_LeftIO_ready(icmp_exitcond23_io_LeftIO_ready),
    .io_LeftIO_valid(icmp_exitcond23_io_LeftIO_valid),
    .io_LeftIO_bits_data(icmp_exitcond23_io_LeftIO_bits_data),
    .io_RightIO_ready(icmp_exitcond23_io_RightIO_ready),
    .io_RightIO_valid(icmp_exitcond23_io_RightIO_valid),
    .io_RightIO_bits_data(icmp_exitcond23_io_RightIO_bits_data)
  );
  CBranchNodeVariable_2 br_32 ( // @[relu.scala 153:21]
    .clock(br_32_clock),
    .reset(br_32_reset),
    .io_enable_ready(br_32_io_enable_ready),
    .io_enable_valid(br_32_io_enable_valid),
    .io_enable_bits_taskID(br_32_io_enable_bits_taskID),
    .io_enable_bits_control(br_32_io_enable_bits_control),
    .io_CmpIO_ready(br_32_io_CmpIO_ready),
    .io_CmpIO_valid(br_32_io_CmpIO_valid),
    .io_CmpIO_bits_taskID(br_32_io_CmpIO_bits_taskID),
    .io_CmpIO_bits_data(br_32_io_CmpIO_bits_data),
    .io_PredOp_0_ready(br_32_io_PredOp_0_ready),
    .io_PredOp_0_valid(br_32_io_PredOp_0_valid),
    .io_TrueOutput_0_ready(br_32_io_TrueOutput_0_ready),
    .io_TrueOutput_0_valid(br_32_io_TrueOutput_0_valid),
    .io_TrueOutput_0_bits_control(br_32_io_TrueOutput_0_bits_control),
    .io_FalseOutput_0_ready(br_32_io_FalseOutput_0_ready),
    .io_FalseOutput_0_valid(br_32_io_FalseOutput_0_valid),
    .io_FalseOutput_0_bits_taskID(br_32_io_FalseOutput_0_bits_taskID),
    .io_FalseOutput_0_bits_control(br_32_io_FalseOutput_0_bits_control)
  );
  ConstFastNode const0 ( // @[relu.scala 162:22]
    .clock(const0_clock),
    .reset(const0_reset),
    .io_enable_ready(const0_io_enable_ready),
    .io_enable_valid(const0_io_enable_valid),
    .io_enable_bits_control(const0_io_enable_bits_control),
    .io_Out_ready(const0_io_Out_ready),
    .io_Out_valid(const0_io_Out_valid)
  );
  ConstFastNode_1 const1 ( // @[relu.scala 165:22]
    .clock(const1_clock),
    .reset(const1_reset),
    .io_enable_ready(const1_io_enable_ready),
    .io_enable_valid(const1_io_enable_valid),
    .io_enable_bits_taskID(const1_io_enable_bits_taskID),
    .io_enable_bits_control(const1_io_enable_bits_control),
    .io_Out_ready(const1_io_Out_ready),
    .io_Out_valid(const1_io_Out_valid),
    .io_Out_bits_taskID(const1_io_Out_bits_taskID)
  );
  ConstFastNode_2 const2 ( // @[relu.scala 168:22]
    .clock(const2_clock),
    .reset(const2_reset),
    .io_enable_ready(const2_io_enable_ready),
    .io_enable_valid(const2_io_enable_valid),
    .io_enable_bits_taskID(const2_io_enable_bits_taskID),
    .io_enable_bits_control(const2_io_enable_bits_control),
    .io_Out_ready(const2_io_Out_ready),
    .io_Out_valid(const2_io_Out_valid)
  );
  ConstFastNode_3 const3 ( // @[relu.scala 171:22]
    .clock(const3_clock),
    .reset(const3_reset),
    .io_enable_ready(const3_io_enable_ready),
    .io_enable_valid(const3_io_enable_valid),
    .io_enable_bits_taskID(const3_io_enable_bits_taskID),
    .io_enable_bits_control(const3_io_enable_bits_control),
    .io_Out_ready(const3_io_Out_ready),
    .io_Out_valid(const3_io_Out_valid),
    .io_Out_bits_taskID(const3_io_Out_bits_taskID)
  );
  ConstFastNode_4 const4 ( // @[relu.scala 174:22]
    .clock(const4_clock),
    .reset(const4_reset),
    .io_enable_ready(const4_io_enable_ready),
    .io_enable_valid(const4_io_enable_valid),
    .io_enable_bits_taskID(const4_io_enable_bits_taskID),
    .io_enable_bits_control(const4_io_enable_bits_control),
    .io_Out_ready(const4_io_Out_ready),
    .io_Out_valid(const4_io_Out_valid)
  );
  ConstFastNode_5 const5 ( // @[relu.scala 177:22]
    .clock(const5_clock),
    .reset(const5_reset),
    .io_enable_ready(const5_io_enable_ready),
    .io_enable_valid(const5_io_enable_valid),
    .io_enable_bits_taskID(const5_io_enable_bits_taskID),
    .io_enable_bits_control(const5_io_enable_bits_control),
    .io_Out_ready(const5_io_Out_ready),
    .io_Out_valid(const5_io_Out_valid)
  );
  ConstFastNode_6 const6 ( // @[relu.scala 180:22]
    .clock(const6_clock),
    .reset(const6_reset),
    .io_enable_ready(const6_io_enable_ready),
    .io_enable_valid(const6_io_enable_valid),
    .io_enable_bits_taskID(const6_io_enable_bits_taskID),
    .io_enable_bits_control(const6_io_enable_bits_control),
    .io_Out_ready(const6_io_Out_ready),
    .io_Out_valid(const6_io_Out_valid)
  );
  assign io_in_ready = ArgSplitter_io_In_ready; // @[relu.scala 42:21]
  assign io_MemReq_valid = mem_ctrl_cache_io_cache_MemReq_valid; // @[relu.scala 38:13]
  assign io_MemReq_bits_addr = mem_ctrl_cache_io_cache_MemReq_bits_addr; // @[relu.scala 38:13]
  assign io_MemReq_bits_data = mem_ctrl_cache_io_cache_MemReq_bits_data; // @[relu.scala 38:13]
  assign io_MemReq_bits_mask = mem_ctrl_cache_io_cache_MemReq_bits_mask; // @[relu.scala 38:13]
  assign io_MemReq_bits_tag = mem_ctrl_cache_io_cache_MemReq_bits_tag; // @[relu.scala 38:13]
  assign io_out_valid = ret_10_io_Out_valid; // @[relu.scala 516:10]
  assign mem_ctrl_cache_clock = clock;
  assign mem_ctrl_cache_reset = reset;
  assign mem_ctrl_cache_io_rd_mem_0_MemReq_valid = ld_25_io_MemReq_valid; // @[relu.scala 427:38]
  assign mem_ctrl_cache_io_rd_mem_0_MemReq_bits_addr = ld_25_io_MemReq_bits_addr; // @[relu.scala 427:38]
  assign mem_ctrl_cache_io_wr_mem_0_MemReq_valid = st_29_io_MemReq_valid; // @[relu.scala 429:38]
  assign mem_ctrl_cache_io_wr_mem_0_MemReq_bits_addr = st_29_io_MemReq_bits_addr; // @[relu.scala 429:38]
  assign mem_ctrl_cache_io_wr_mem_0_MemReq_bits_data = st_29_io_MemReq_bits_data; // @[relu.scala 429:38]
  assign mem_ctrl_cache_io_cache_MemReq_ready = io_MemReq_ready; // @[relu.scala 38:13]
  assign mem_ctrl_cache_io_cache_MemResp_valid = io_MemResp_valid; // @[relu.scala 39:35]
  assign mem_ctrl_cache_io_cache_MemResp_bits_data = io_MemResp_bits_data; // @[relu.scala 39:35]
  assign mem_ctrl_cache_io_cache_MemResp_bits_tag = io_MemResp_bits_tag; // @[relu.scala 39:35]
  assign ArgSplitter_clock = clock;
  assign ArgSplitter_reset = reset;
  assign ArgSplitter_io_In_valid = io_in_valid; // @[relu.scala 42:21]
  assign ArgSplitter_io_In_bits_dataPtrs_field1_data = io_in_bits_dataPtrs_field1_data; // @[relu.scala 42:21]
  assign ArgSplitter_io_In_bits_dataPtrs_field0_data = io_in_bits_dataPtrs_field0_data; // @[relu.scala 42:21]
  assign ArgSplitter_io_In_bits_dataVals_field0_data = io_in_bits_dataVals_field0_data; // @[relu.scala 42:21]
  assign ArgSplitter_io_Out_enable_ready = bb_entry1_io_predicateIn_0_ready; // @[relu.scala 188:31]
  assign ArgSplitter_io_Out_dataPtrs_field1_0_ready = Loop_1_io_InLiveIn_2_ready; // @[relu.scala 262:25]
  assign ArgSplitter_io_Out_dataPtrs_field0_0_ready = Loop_1_io_InLiveIn_1_ready; // @[relu.scala 260:25]
  assign ArgSplitter_io_Out_dataVals_field0_0_ready = Loop_1_io_InLiveIn_0_ready; // @[relu.scala 258:25]
  assign ArgSplitter_io_Out_dataVals_field0_1_ready = icmp_cmp310_io_LeftIO_ready; // @[relu.scala 496:25]
  assign ArgSplitter_io_Out_dataVals_field0_2_ready = sextwide_trip_count5_io_Input_ready; // @[relu.scala 498:33]
  assign Loop_0_clock = clock;
  assign Loop_0_reset = reset;
  assign Loop_0_io_enable_valid = br_14_io_Out_0_valid; // @[relu.scala 226:20]
  assign Loop_0_io_enable_bits_taskID = br_14_io_Out_0_bits_taskID; // @[relu.scala 226:20]
  assign Loop_0_io_enable_bits_control = br_14_io_Out_0_bits_control; // @[relu.scala 226:20]
  assign Loop_0_io_InLiveIn_0_valid = binaryOp_mul13_io_Out_0_valid; // @[relu.scala 250:25]
  assign Loop_0_io_InLiveIn_0_bits_data = binaryOp_mul13_io_Out_0_bits_data; // @[relu.scala 250:25]
  assign Loop_0_io_InLiveIn_1_valid = Loop_1_io_OutLiveIn_field3_0_valid; // @[relu.scala 252:25]
  assign Loop_0_io_InLiveIn_1_bits_data = Loop_1_io_OutLiveIn_field3_0_bits_data; // @[relu.scala 252:25]
  assign Loop_0_io_InLiveIn_2_valid = Loop_1_io_OutLiveIn_field1_0_valid; // @[relu.scala 254:25]
  assign Loop_0_io_InLiveIn_2_bits_data = Loop_1_io_OutLiveIn_field1_0_bits_data; // @[relu.scala 254:25]
  assign Loop_0_io_InLiveIn_3_valid = Loop_1_io_OutLiveIn_field2_0_valid; // @[relu.scala 256:25]
  assign Loop_0_io_InLiveIn_3_bits_data = Loop_1_io_OutLiveIn_field2_0_bits_data; // @[relu.scala 256:25]
  assign Loop_0_io_OutLiveIn_field3_0_ready = Gep_arrayidx726_io_baseAddress_ready; // @[relu.scala 278:34]
  assign Loop_0_io_OutLiveIn_field2_0_ready = Gep_arrayidx24_io_baseAddress_ready; // @[relu.scala 276:33]
  assign Loop_0_io_OutLiveIn_field1_0_ready = icmp_exitcond23_io_RightIO_ready; // @[relu.scala 274:30]
  assign Loop_0_io_OutLiveIn_field0_0_ready = binaryOp_add22_io_LeftIO_ready; // @[relu.scala 272:28]
  assign Loop_0_io_activate_loop_start_ready = bb_for_body419_io_predicateIn_1_ready; // @[relu.scala 210:36]
  assign Loop_0_io_activate_loop_back_ready = bb_for_body419_io_predicateIn_0_ready; // @[relu.scala 212:36]
  assign Loop_0_io_loopBack_0_valid = br_32_io_FalseOutput_0_valid; // @[relu.scala 228:25]
  assign Loop_0_io_loopBack_0_bits_taskID = br_32_io_FalseOutput_0_bits_taskID; // @[relu.scala 228:25]
  assign Loop_0_io_loopBack_0_bits_control = br_32_io_FalseOutput_0_bits_control; // @[relu.scala 228:25]
  assign Loop_0_io_loopFinish_0_valid = br_32_io_TrueOutput_0_valid; // @[relu.scala 230:27]
  assign Loop_0_io_loopFinish_0_bits_control = br_32_io_TrueOutput_0_bits_control; // @[relu.scala 230:27]
  assign Loop_0_io_CarryDepenIn_0_valid = binaryOp_indvars_iv_next30_io_Out_0_valid; // @[relu.scala 302:29]
  assign Loop_0_io_CarryDepenIn_0_bits_taskID = binaryOp_indvars_iv_next30_io_Out_0_bits_taskID; // @[relu.scala 302:29]
  assign Loop_0_io_CarryDepenIn_0_bits_data = binaryOp_indvars_iv_next30_io_Out_0_bits_data; // @[relu.scala 302:29]
  assign Loop_0_io_CarryDepenOut_field0_0_ready = phiindvars_iv20_io_InData_1_ready; // @[relu.scala 312:32]
  assign Loop_0_io_loopExit_0_ready = bb_for_cond_cleanup315_io_predicateIn_0_ready; // @[relu.scala 208:44]
  assign Loop_1_clock = clock;
  assign Loop_1_reset = reset;
  assign Loop_1_io_enable_valid = br_6_io_Out_0_valid; // @[relu.scala 232:20]
  assign Loop_1_io_enable_bits_control = br_6_io_Out_0_bits_control; // @[relu.scala 232:20]
  assign Loop_1_io_InLiveIn_0_valid = ArgSplitter_io_Out_dataVals_field0_0_valid; // @[relu.scala 258:25]
  assign Loop_1_io_InLiveIn_0_bits_data = ArgSplitter_io_Out_dataVals_field0_0_bits_data; // @[relu.scala 258:25]
  assign Loop_1_io_InLiveIn_1_valid = ArgSplitter_io_Out_dataPtrs_field0_0_valid; // @[relu.scala 260:25]
  assign Loop_1_io_InLiveIn_1_bits_data = ArgSplitter_io_Out_dataPtrs_field0_0_bits_data; // @[relu.scala 260:25]
  assign Loop_1_io_InLiveIn_2_valid = ArgSplitter_io_Out_dataPtrs_field1_0_valid; // @[relu.scala 262:25]
  assign Loop_1_io_InLiveIn_2_bits_data = ArgSplitter_io_Out_dataPtrs_field1_0_bits_data; // @[relu.scala 262:25]
  assign Loop_1_io_InLiveIn_3_valid = sextwide_trip_count5_io_Out_0_valid; // @[relu.scala 264:25]
  assign Loop_1_io_InLiveIn_3_bits_data = sextwide_trip_count5_io_Out_0_bits_data; // @[relu.scala 264:25]
  assign Loop_1_io_OutLiveIn_field3_0_ready = Loop_0_io_InLiveIn_1_ready; // @[relu.scala 252:25]
  assign Loop_1_io_OutLiveIn_field2_0_ready = Loop_0_io_InLiveIn_3_ready; // @[relu.scala 256:25]
  assign Loop_1_io_OutLiveIn_field1_0_ready = Loop_0_io_InLiveIn_2_ready; // @[relu.scala 254:25]
  assign Loop_1_io_OutLiveIn_field0_0_ready = binaryOp_mul13_io_RightIO_ready; // @[relu.scala 280:29]
  assign Loop_1_io_OutLiveIn_field0_1_ready = icmp_exitcond3310_io_RightIO_ready; // @[relu.scala 282:32]
  assign Loop_1_io_activate_loop_start_ready = bb_for_body4_lr_ph11_io_predicateIn_1_ready; // @[relu.scala 204:42]
  assign Loop_1_io_activate_loop_back_ready = bb_for_body4_lr_ph11_io_predicateIn_0_ready; // @[relu.scala 206:42]
  assign Loop_1_io_loopBack_0_valid = br_18_io_FalseOutput_0_valid; // @[relu.scala 234:25]
  assign Loop_1_io_loopBack_0_bits_taskID = br_18_io_FalseOutput_0_bits_taskID; // @[relu.scala 234:25]
  assign Loop_1_io_loopBack_0_bits_control = br_18_io_FalseOutput_0_bits_control; // @[relu.scala 234:25]
  assign Loop_1_io_loopFinish_0_valid = br_18_io_TrueOutput_0_valid; // @[relu.scala 236:27]
  assign Loop_1_io_loopFinish_0_bits_control = br_18_io_TrueOutput_0_bits_control; // @[relu.scala 236:27]
  assign Loop_1_io_CarryDepenIn_0_valid = binaryOp_inc1316_io_Out_0_valid; // @[relu.scala 304:29]
  assign Loop_1_io_CarryDepenIn_0_bits_taskID = binaryOp_inc1316_io_Out_0_bits_taskID; // @[relu.scala 304:29]
  assign Loop_1_io_CarryDepenIn_0_bits_data = binaryOp_inc1316_io_Out_0_bits_data; // @[relu.scala 304:29]
  assign Loop_1_io_CarryDepenOut_field0_0_ready = phij_03212_io_InData_1_ready; // @[relu.scala 314:27]
  assign Loop_1_io_loopExit_0_ready = bb_for_cond_cleanup_loopexit7_io_predicateIn_0_ready; // @[relu.scala 202:51]
  assign bb_entry1_clock = clock;
  assign bb_entry1_reset = reset;
  assign bb_entry1_io_predicateIn_0_valid = ArgSplitter_io_Out_enable_valid; // @[relu.scala 188:31]
  assign bb_entry1_io_predicateIn_0_bits_control = ArgSplitter_io_Out_enable_bits_control; // @[relu.scala 188:31]
  assign bb_entry1_io_Out_0_ready = const0_io_enable_ready; // @[relu.scala 322:20]
  assign bb_entry1_io_Out_1_ready = icmp_cmp310_io_enable_ready; // @[relu.scala 324:25]
  assign bb_entry1_io_Out_2_ready = br_3_io_enable_ready; // @[relu.scala 327:18]
  assign bb_for_body_lr_ph4_clock = clock;
  assign bb_for_body_lr_ph4_reset = reset;
  assign bb_for_body_lr_ph4_io_predicateIn_0_valid = br_3_io_FalseOutput_0_valid; // @[relu.scala 190:40]
  assign bb_for_body_lr_ph4_io_predicateIn_0_bits_control = br_3_io_FalseOutput_0_bits_control; // @[relu.scala 190:40]
  assign bb_for_body_lr_ph4_io_Out_0_ready = sextwide_trip_count5_io_enable_ready; // @[relu.scala 330:34]
  assign bb_for_body_lr_ph4_io_Out_1_ready = br_6_io_enable_ready; // @[relu.scala 333:18]
  assign bb_for_cond_cleanup_loopexit7_clock = clock;
  assign bb_for_cond_cleanup_loopexit7_reset = reset;
  assign bb_for_cond_cleanup_loopexit7_io_predicateIn_0_valid = Loop_1_io_loopExit_0_valid; // @[relu.scala 202:51]
  assign bb_for_cond_cleanup_loopexit7_io_predicateIn_0_bits_taskID = Loop_1_io_loopExit_0_bits_taskID; // @[relu.scala 202:51]
  assign bb_for_cond_cleanup_loopexit7_io_predicateIn_0_bits_control = Loop_1_io_loopExit_0_bits_control; // @[relu.scala 202:51]
  assign bb_for_cond_cleanup_loopexit7_io_Out_0_ready = br_8_io_enable_ready; // @[relu.scala 336:18]
  assign bb_for_cond_cleanup9_clock = clock;
  assign bb_for_cond_cleanup9_reset = reset;
  assign bb_for_cond_cleanup9_io_predicateIn_0_valid = br_8_io_Out_0_valid; // @[relu.scala 194:42]
  assign bb_for_cond_cleanup9_io_predicateIn_0_bits_taskID = br_8_io_Out_0_bits_taskID; // @[relu.scala 194:42]
  assign bb_for_cond_cleanup9_io_predicateIn_0_bits_control = br_8_io_Out_0_bits_control; // @[relu.scala 194:42]
  assign bb_for_cond_cleanup9_io_predicateIn_1_valid = br_3_io_TrueOutput_0_valid; // @[relu.scala 192:42]
  assign bb_for_cond_cleanup9_io_predicateIn_1_bits_control = br_3_io_TrueOutput_0_bits_control; // @[relu.scala 192:42]
  assign bb_for_cond_cleanup9_io_Out_0_ready = ret_10_io_In_enable_ready; // @[relu.scala 339:23]
  assign bb_for_body4_lr_ph11_clock = clock;
  assign bb_for_body4_lr_ph11_reset = reset;
  assign bb_for_body4_lr_ph11_io_MaskBB_0_ready = phij_03212_io_Mask_ready; // @[relu.scala 417:22]
  assign bb_for_body4_lr_ph11_io_Out_0_ready = const1_io_enable_ready; // @[relu.scala 342:20]
  assign bb_for_body4_lr_ph11_io_Out_1_ready = phij_03212_io_enable_ready; // @[relu.scala 344:24]
  assign bb_for_body4_lr_ph11_io_Out_2_ready = binaryOp_mul13_io_enable_ready; // @[relu.scala 347:28]
  assign bb_for_body4_lr_ph11_io_Out_3_ready = br_14_io_enable_ready; // @[relu.scala 350:19]
  assign bb_for_body4_lr_ph11_io_predicateIn_0_valid = Loop_1_io_activate_loop_back_valid; // @[relu.scala 206:42]
  assign bb_for_body4_lr_ph11_io_predicateIn_0_bits_taskID = Loop_1_io_activate_loop_back_bits_taskID; // @[relu.scala 206:42]
  assign bb_for_body4_lr_ph11_io_predicateIn_0_bits_control = Loop_1_io_activate_loop_back_bits_control; // @[relu.scala 206:42]
  assign bb_for_body4_lr_ph11_io_predicateIn_1_valid = Loop_1_io_activate_loop_start_valid; // @[relu.scala 204:42]
  assign bb_for_body4_lr_ph11_io_predicateIn_1_bits_taskID = Loop_1_io_activate_loop_start_bits_taskID; // @[relu.scala 204:42]
  assign bb_for_body4_lr_ph11_io_predicateIn_1_bits_control = Loop_1_io_activate_loop_start_bits_control; // @[relu.scala 204:42]
  assign bb_for_cond_cleanup315_clock = clock;
  assign bb_for_cond_cleanup315_reset = reset;
  assign bb_for_cond_cleanup315_io_predicateIn_0_valid = Loop_0_io_loopExit_0_valid; // @[relu.scala 208:44]
  assign bb_for_cond_cleanup315_io_predicateIn_0_bits_taskID = Loop_0_io_loopExit_0_bits_taskID; // @[relu.scala 208:44]
  assign bb_for_cond_cleanup315_io_predicateIn_0_bits_control = Loop_0_io_loopExit_0_bits_control; // @[relu.scala 208:44]
  assign bb_for_cond_cleanup315_io_Out_0_ready = const2_io_enable_ready; // @[relu.scala 353:20]
  assign bb_for_cond_cleanup315_io_Out_1_ready = binaryOp_inc1316_io_enable_ready; // @[relu.scala 355:30]
  assign bb_for_cond_cleanup315_io_Out_2_ready = icmp_exitcond3310_io_enable_ready; // @[relu.scala 358:31]
  assign bb_for_cond_cleanup315_io_Out_3_ready = br_18_io_enable_ready; // @[relu.scala 361:19]
  assign bb_for_body419_clock = clock;
  assign bb_for_body419_reset = reset;
  assign bb_for_body419_io_MaskBB_0_ready = phiindvars_iv20_io_Mask_ready; // @[relu.scala 419:27]
  assign bb_for_body419_io_Out_0_ready = const3_io_enable_ready; // @[relu.scala 364:20]
  assign bb_for_body419_io_Out_1_ready = const4_io_enable_ready; // @[relu.scala 366:20]
  assign bb_for_body419_io_Out_2_ready = const5_io_enable_ready; // @[relu.scala 368:20]
  assign bb_for_body419_io_Out_3_ready = const6_io_enable_ready; // @[relu.scala 370:20]
  assign bb_for_body419_io_Out_4_ready = phiindvars_iv20_io_enable_ready; // @[relu.scala 372:29]
  assign bb_for_body419_io_Out_5_ready = trunc21_io_enable_ready; // @[relu.scala 375:21]
  assign bb_for_body419_io_Out_6_ready = binaryOp_add22_io_enable_ready; // @[relu.scala 378:28]
  assign bb_for_body419_io_Out_7_ready = sextidxprom23_io_enable_ready; // @[relu.scala 381:27]
  assign bb_for_body419_io_Out_8_ready = Gep_arrayidx24_io_enable_ready; // @[relu.scala 384:28]
  assign bb_for_body419_io_Out_9_ready = ld_25_io_enable_ready; // @[relu.scala 387:19]
  assign bb_for_body419_io_Out_10_ready = Gep_arrayidx726_io_enable_ready; // @[relu.scala 390:29]
  assign bb_for_body419_io_Out_11_ready = icmp_19_io_enable_ready; // @[relu.scala 393:21]
  assign bb_for_body419_io_Out_12_ready = select__28_io_enable_ready; // @[relu.scala 396:24]
  assign bb_for_body419_io_Out_13_ready = st_29_io_enable_ready; // @[relu.scala 399:19]
  assign bb_for_body419_io_Out_14_ready = binaryOp_indvars_iv_next30_io_enable_ready; // @[relu.scala 402:40]
  assign bb_for_body419_io_Out_15_ready = icmp_exitcond23_io_enable_ready; // @[relu.scala 405:29]
  assign bb_for_body419_io_Out_16_ready = br_32_io_enable_ready; // @[relu.scala 408:19]
  assign bb_for_body419_io_predicateIn_0_valid = Loop_0_io_activate_loop_back_valid; // @[relu.scala 212:36]
  assign bb_for_body419_io_predicateIn_0_bits_taskID = Loop_0_io_activate_loop_back_bits_taskID; // @[relu.scala 212:36]
  assign bb_for_body419_io_predicateIn_0_bits_control = Loop_0_io_activate_loop_back_bits_control; // @[relu.scala 212:36]
  assign bb_for_body419_io_predicateIn_1_valid = Loop_0_io_activate_loop_start_valid; // @[relu.scala 210:36]
  assign bb_for_body419_io_predicateIn_1_bits_taskID = Loop_0_io_activate_loop_start_bits_taskID; // @[relu.scala 210:36]
  assign bb_for_body419_io_predicateIn_1_bits_control = Loop_0_io_activate_loop_start_bits_control; // @[relu.scala 210:36]
  assign icmp_cmp310_clock = clock;
  assign icmp_cmp310_reset = reset;
  assign icmp_cmp310_io_enable_valid = bb_entry1_io_Out_1_valid; // @[relu.scala 324:25]
  assign icmp_cmp310_io_enable_bits_control = bb_entry1_io_Out_1_bits_control; // @[relu.scala 324:25]
  assign icmp_cmp310_io_Out_0_ready = br_3_io_CmpIO_ready; // @[relu.scala 458:17]
  assign icmp_cmp310_io_LeftIO_valid = ArgSplitter_io_Out_dataVals_field0_1_valid; // @[relu.scala 496:25]
  assign icmp_cmp310_io_LeftIO_bits_data = ArgSplitter_io_Out_dataVals_field0_1_bits_data; // @[relu.scala 496:25]
  assign icmp_cmp310_io_RightIO_valid = const0_io_Out_valid; // @[relu.scala 444:26]
  assign br_3_clock = clock;
  assign br_3_reset = reset;
  assign br_3_io_enable_valid = bb_entry1_io_Out_2_valid; // @[relu.scala 327:18]
  assign br_3_io_enable_bits_control = bb_entry1_io_Out_2_bits_control; // @[relu.scala 327:18]
  assign br_3_io_CmpIO_valid = icmp_cmp310_io_Out_0_valid; // @[relu.scala 458:17]
  assign br_3_io_CmpIO_bits_data = icmp_cmp310_io_Out_0_bits_data; // @[relu.scala 458:17]
  assign br_3_io_TrueOutput_0_ready = bb_for_cond_cleanup9_io_predicateIn_1_ready; // @[relu.scala 192:42]
  assign br_3_io_FalseOutput_0_ready = bb_for_body_lr_ph4_io_predicateIn_0_ready; // @[relu.scala 190:40]
  assign sextwide_trip_count5_clock = clock;
  assign sextwide_trip_count5_reset = reset;
  assign sextwide_trip_count5_io_Input_valid = ArgSplitter_io_Out_dataVals_field0_2_valid; // @[relu.scala 498:33]
  assign sextwide_trip_count5_io_Input_bits_data = ArgSplitter_io_Out_dataVals_field0_2_bits_data; // @[relu.scala 498:33]
  assign sextwide_trip_count5_io_enable_valid = bb_for_body_lr_ph4_io_Out_0_valid; // @[relu.scala 330:34]
  assign sextwide_trip_count5_io_enable_bits_control = bb_for_body_lr_ph4_io_Out_0_bits_control; // @[relu.scala 330:34]
  assign sextwide_trip_count5_io_Out_0_ready = Loop_1_io_InLiveIn_3_ready; // @[relu.scala 264:25]
  assign br_6_clock = clock;
  assign br_6_reset = reset;
  assign br_6_io_enable_valid = bb_for_body_lr_ph4_io_Out_1_valid; // @[relu.scala 333:18]
  assign br_6_io_enable_bits_control = bb_for_body_lr_ph4_io_Out_1_bits_control; // @[relu.scala 333:18]
  assign br_6_io_Out_0_ready = Loop_1_io_enable_ready; // @[relu.scala 232:20]
  assign br_8_clock = clock;
  assign br_8_reset = reset;
  assign br_8_io_enable_valid = bb_for_cond_cleanup_loopexit7_io_Out_0_valid; // @[relu.scala 336:18]
  assign br_8_io_enable_bits_taskID = bb_for_cond_cleanup_loopexit7_io_Out_0_bits_taskID; // @[relu.scala 336:18]
  assign br_8_io_enable_bits_control = bb_for_cond_cleanup_loopexit7_io_Out_0_bits_control; // @[relu.scala 336:18]
  assign br_8_io_Out_0_ready = bb_for_cond_cleanup9_io_predicateIn_0_ready; // @[relu.scala 194:42]
  assign ret_10_clock = clock;
  assign ret_10_reset = reset;
  assign ret_10_io_In_enable_valid = bb_for_cond_cleanup9_io_Out_0_valid; // @[relu.scala 339:23]
  assign ret_10_io_In_enable_bits_taskID = bb_for_cond_cleanup9_io_Out_0_bits_taskID; // @[relu.scala 339:23]
  assign ret_10_io_Out_ready = io_out_ready; // @[relu.scala 516:10]
  assign phij_03212_clock = clock;
  assign phij_03212_reset = reset;
  assign phij_03212_io_enable_valid = bb_for_body4_lr_ph11_io_Out_1_valid; // @[relu.scala 344:24]
  assign phij_03212_io_enable_bits_control = bb_for_body4_lr_ph11_io_Out_1_bits_control; // @[relu.scala 344:24]
  assign phij_03212_io_InData_0_valid = const1_io_Out_valid; // @[relu.scala 446:27]
  assign phij_03212_io_InData_0_bits_taskID = const1_io_Out_bits_taskID; // @[relu.scala 446:27]
  assign phij_03212_io_InData_1_valid = Loop_1_io_CarryDepenOut_field0_0_valid; // @[relu.scala 314:27]
  assign phij_03212_io_InData_1_bits_taskID = Loop_1_io_CarryDepenOut_field0_0_bits_taskID; // @[relu.scala 314:27]
  assign phij_03212_io_InData_1_bits_data = Loop_1_io_CarryDepenOut_field0_0_bits_data; // @[relu.scala 314:27]
  assign phij_03212_io_Mask_valid = bb_for_body4_lr_ph11_io_MaskBB_0_valid; // @[relu.scala 417:22]
  assign phij_03212_io_Mask_bits = bb_for_body4_lr_ph11_io_MaskBB_0_bits; // @[relu.scala 417:22]
  assign phij_03212_io_Out_0_ready = binaryOp_mul13_io_LeftIO_ready; // @[relu.scala 460:28]
  assign phij_03212_io_Out_1_ready = binaryOp_inc1316_io_LeftIO_ready; // @[relu.scala 462:30]
  assign binaryOp_mul13_clock = clock;
  assign binaryOp_mul13_reset = reset;
  assign binaryOp_mul13_io_enable_valid = bb_for_body4_lr_ph11_io_Out_2_valid; // @[relu.scala 347:28]
  assign binaryOp_mul13_io_enable_bits_taskID = bb_for_body4_lr_ph11_io_Out_2_bits_taskID; // @[relu.scala 347:28]
  assign binaryOp_mul13_io_enable_bits_control = bb_for_body4_lr_ph11_io_Out_2_bits_control; // @[relu.scala 347:28]
  assign binaryOp_mul13_io_Out_0_ready = Loop_0_io_InLiveIn_0_ready; // @[relu.scala 250:25]
  assign binaryOp_mul13_io_LeftIO_valid = phij_03212_io_Out_0_valid; // @[relu.scala 460:28]
  assign binaryOp_mul13_io_LeftIO_bits_data = phij_03212_io_Out_0_bits_data; // @[relu.scala 460:28]
  assign binaryOp_mul13_io_RightIO_valid = Loop_1_io_OutLiveIn_field0_0_valid; // @[relu.scala 280:29]
  assign binaryOp_mul13_io_RightIO_bits_data = Loop_1_io_OutLiveIn_field0_0_bits_data; // @[relu.scala 280:29]
  assign br_14_clock = clock;
  assign br_14_reset = reset;
  assign br_14_io_enable_valid = bb_for_body4_lr_ph11_io_Out_3_valid; // @[relu.scala 350:19]
  assign br_14_io_enable_bits_taskID = bb_for_body4_lr_ph11_io_Out_3_bits_taskID; // @[relu.scala 350:19]
  assign br_14_io_enable_bits_control = bb_for_body4_lr_ph11_io_Out_3_bits_control; // @[relu.scala 350:19]
  assign br_14_io_Out_0_ready = Loop_0_io_enable_ready; // @[relu.scala 226:20]
  assign binaryOp_inc1316_clock = clock;
  assign binaryOp_inc1316_reset = reset;
  assign binaryOp_inc1316_io_enable_valid = bb_for_cond_cleanup315_io_Out_1_valid; // @[relu.scala 355:30]
  assign binaryOp_inc1316_io_enable_bits_taskID = bb_for_cond_cleanup315_io_Out_1_bits_taskID; // @[relu.scala 355:30]
  assign binaryOp_inc1316_io_enable_bits_control = bb_for_cond_cleanup315_io_Out_1_bits_control; // @[relu.scala 355:30]
  assign binaryOp_inc1316_io_Out_0_ready = Loop_1_io_CarryDepenIn_0_ready; // @[relu.scala 304:29]
  assign binaryOp_inc1316_io_Out_1_ready = icmp_exitcond3310_io_LeftIO_ready; // @[relu.scala 464:31]
  assign binaryOp_inc1316_io_LeftIO_valid = phij_03212_io_Out_1_valid; // @[relu.scala 462:30]
  assign binaryOp_inc1316_io_LeftIO_bits_data = phij_03212_io_Out_1_bits_data; // @[relu.scala 462:30]
  assign binaryOp_inc1316_io_RightIO_valid = const2_io_Out_valid; // @[relu.scala 448:31]
  assign icmp_exitcond3310_clock = clock;
  assign icmp_exitcond3310_reset = reset;
  assign icmp_exitcond3310_io_enable_valid = bb_for_cond_cleanup315_io_Out_2_valid; // @[relu.scala 358:31]
  assign icmp_exitcond3310_io_enable_bits_taskID = bb_for_cond_cleanup315_io_Out_2_bits_taskID; // @[relu.scala 358:31]
  assign icmp_exitcond3310_io_enable_bits_control = bb_for_cond_cleanup315_io_Out_2_bits_control; // @[relu.scala 358:31]
  assign icmp_exitcond3310_io_Out_0_ready = br_18_io_CmpIO_ready; // @[relu.scala 466:18]
  assign icmp_exitcond3310_io_LeftIO_valid = binaryOp_inc1316_io_Out_1_valid; // @[relu.scala 464:31]
  assign icmp_exitcond3310_io_LeftIO_bits_data = binaryOp_inc1316_io_Out_1_bits_data; // @[relu.scala 464:31]
  assign icmp_exitcond3310_io_RightIO_valid = Loop_1_io_OutLiveIn_field0_1_valid; // @[relu.scala 282:32]
  assign icmp_exitcond3310_io_RightIO_bits_data = Loop_1_io_OutLiveIn_field0_1_bits_data; // @[relu.scala 282:32]
  assign br_18_clock = clock;
  assign br_18_reset = reset;
  assign br_18_io_enable_valid = bb_for_cond_cleanup315_io_Out_3_valid; // @[relu.scala 361:19]
  assign br_18_io_enable_bits_taskID = bb_for_cond_cleanup315_io_Out_3_bits_taskID; // @[relu.scala 361:19]
  assign br_18_io_enable_bits_control = bb_for_cond_cleanup315_io_Out_3_bits_control; // @[relu.scala 361:19]
  assign br_18_io_CmpIO_valid = icmp_exitcond3310_io_Out_0_valid; // @[relu.scala 466:18]
  assign br_18_io_CmpIO_bits_taskID = icmp_exitcond3310_io_Out_0_bits_taskID; // @[relu.scala 466:18]
  assign br_18_io_CmpIO_bits_data = icmp_exitcond3310_io_Out_0_bits_data; // @[relu.scala 466:18]
  assign br_18_io_TrueOutput_0_ready = Loop_1_io_loopFinish_0_ready; // @[relu.scala 236:27]
  assign br_18_io_FalseOutput_0_ready = Loop_1_io_loopBack_0_ready; // @[relu.scala 234:25]
  assign phiindvars_iv20_clock = clock;
  assign phiindvars_iv20_reset = reset;
  assign phiindvars_iv20_io_enable_valid = bb_for_body419_io_Out_4_valid; // @[relu.scala 372:29]
  assign phiindvars_iv20_io_enable_bits_control = bb_for_body419_io_Out_4_bits_control; // @[relu.scala 372:29]
  assign phiindvars_iv20_io_InData_0_valid = const3_io_Out_valid; // @[relu.scala 450:32]
  assign phiindvars_iv20_io_InData_0_bits_taskID = const3_io_Out_bits_taskID; // @[relu.scala 450:32]
  assign phiindvars_iv20_io_InData_1_valid = Loop_0_io_CarryDepenOut_field0_0_valid; // @[relu.scala 312:32]
  assign phiindvars_iv20_io_InData_1_bits_taskID = Loop_0_io_CarryDepenOut_field0_0_bits_taskID; // @[relu.scala 312:32]
  assign phiindvars_iv20_io_InData_1_bits_data = Loop_0_io_CarryDepenOut_field0_0_bits_data; // @[relu.scala 312:32]
  assign phiindvars_iv20_io_Mask_valid = bb_for_body419_io_MaskBB_0_valid; // @[relu.scala 419:27]
  assign phiindvars_iv20_io_Mask_bits = bb_for_body419_io_MaskBB_0_bits; // @[relu.scala 419:27]
  assign phiindvars_iv20_io_Out_0_ready = trunc21_io_Input_ready; // @[relu.scala 468:20]
  assign phiindvars_iv20_io_Out_1_ready = binaryOp_indvars_iv_next30_io_LeftIO_ready; // @[relu.scala 470:40]
  assign trunc21_clock = clock;
  assign trunc21_reset = reset;
  assign trunc21_io_Input_valid = phiindvars_iv20_io_Out_0_valid; // @[relu.scala 468:20]
  assign trunc21_io_Input_bits_data = phiindvars_iv20_io_Out_0_bits_data; // @[relu.scala 468:20]
  assign trunc21_io_enable_valid = bb_for_body419_io_Out_5_valid; // @[relu.scala 375:21]
  assign trunc21_io_enable_bits_taskID = bb_for_body419_io_Out_5_bits_taskID; // @[relu.scala 375:21]
  assign trunc21_io_enable_bits_control = bb_for_body419_io_Out_5_bits_control; // @[relu.scala 375:21]
  assign trunc21_io_Out_0_ready = binaryOp_add22_io_RightIO_ready; // @[relu.scala 472:29]
  assign binaryOp_add22_clock = clock;
  assign binaryOp_add22_reset = reset;
  assign binaryOp_add22_io_enable_valid = bb_for_body419_io_Out_6_valid; // @[relu.scala 378:28]
  assign binaryOp_add22_io_enable_bits_taskID = bb_for_body419_io_Out_6_bits_taskID; // @[relu.scala 378:28]
  assign binaryOp_add22_io_enable_bits_control = bb_for_body419_io_Out_6_bits_control; // @[relu.scala 378:28]
  assign binaryOp_add22_io_Out_0_ready = sextidxprom23_io_Input_ready; // @[relu.scala 474:26]
  assign binaryOp_add22_io_LeftIO_valid = Loop_0_io_OutLiveIn_field0_0_valid; // @[relu.scala 272:28]
  assign binaryOp_add22_io_LeftIO_bits_data = Loop_0_io_OutLiveIn_field0_0_bits_data; // @[relu.scala 272:28]
  assign binaryOp_add22_io_RightIO_valid = trunc21_io_Out_0_valid; // @[relu.scala 472:29]
  assign binaryOp_add22_io_RightIO_bits_data = trunc21_io_Out_0_bits_data; // @[relu.scala 472:29]
  assign sextidxprom23_clock = clock;
  assign sextidxprom23_reset = reset;
  assign sextidxprom23_io_Input_valid = binaryOp_add22_io_Out_0_valid; // @[relu.scala 474:26]
  assign sextidxprom23_io_Input_bits_data = binaryOp_add22_io_Out_0_bits_data; // @[relu.scala 474:26]
  assign sextidxprom23_io_enable_valid = bb_for_body419_io_Out_7_valid; // @[relu.scala 381:27]
  assign sextidxprom23_io_enable_bits_taskID = bb_for_body419_io_Out_7_bits_taskID; // @[relu.scala 381:27]
  assign sextidxprom23_io_enable_bits_control = bb_for_body419_io_Out_7_bits_control; // @[relu.scala 381:27]
  assign sextidxprom23_io_Out_0_ready = Gep_arrayidx24_io_idx_0_ready; // @[relu.scala 476:28]
  assign sextidxprom23_io_Out_1_ready = Gep_arrayidx726_io_idx_0_ready; // @[relu.scala 478:29]
  assign Gep_arrayidx24_clock = clock;
  assign Gep_arrayidx24_reset = reset;
  assign Gep_arrayidx24_io_enable_valid = bb_for_body419_io_Out_8_valid; // @[relu.scala 384:28]
  assign Gep_arrayidx24_io_enable_bits_taskID = bb_for_body419_io_Out_8_bits_taskID; // @[relu.scala 384:28]
  assign Gep_arrayidx24_io_enable_bits_control = bb_for_body419_io_Out_8_bits_control; // @[relu.scala 384:28]
  assign Gep_arrayidx24_io_Out_0_ready = ld_25_io_GepAddr_ready; // @[relu.scala 480:20]
  assign Gep_arrayidx24_io_baseAddress_valid = Loop_0_io_OutLiveIn_field2_0_valid; // @[relu.scala 276:33]
  assign Gep_arrayidx24_io_baseAddress_bits_data = Loop_0_io_OutLiveIn_field2_0_bits_data; // @[relu.scala 276:33]
  assign Gep_arrayidx24_io_idx_0_valid = sextidxprom23_io_Out_0_valid; // @[relu.scala 476:28]
  assign Gep_arrayidx24_io_idx_0_bits_data = sextidxprom23_io_Out_0_bits_data; // @[relu.scala 476:28]
  assign ld_25_clock = clock;
  assign ld_25_reset = reset;
  assign ld_25_io_enable_valid = bb_for_body419_io_Out_9_valid; // @[relu.scala 387:19]
  assign ld_25_io_enable_bits_taskID = bb_for_body419_io_Out_9_bits_taskID; // @[relu.scala 387:19]
  assign ld_25_io_enable_bits_control = bb_for_body419_io_Out_9_bits_control; // @[relu.scala 387:19]
  assign ld_25_io_Out_0_ready = icmp_19_io_LeftIO_ready; // @[relu.scala 482:21]
  assign ld_25_io_Out_1_ready = select__28_io_InData1_ready; // @[relu.scala 484:25]
  assign ld_25_io_GepAddr_valid = Gep_arrayidx24_io_Out_0_valid; // @[relu.scala 480:20]
  assign ld_25_io_GepAddr_bits_data = Gep_arrayidx24_io_Out_0_bits_data; // @[relu.scala 480:20]
  assign ld_25_io_MemReq_ready = mem_ctrl_cache_io_rd_mem_0_MemReq_ready; // @[relu.scala 427:38]
  assign ld_25_io_MemResp_valid = mem_ctrl_cache_io_rd_mem_0_MemResp_valid; // @[relu.scala 428:20]
  assign ld_25_io_MemResp_bits_data = mem_ctrl_cache_io_rd_mem_0_MemResp_bits_data; // @[relu.scala 428:20]
  assign Gep_arrayidx726_clock = clock;
  assign Gep_arrayidx726_reset = reset;
  assign Gep_arrayidx726_io_enable_valid = bb_for_body419_io_Out_10_valid; // @[relu.scala 390:29]
  assign Gep_arrayidx726_io_enable_bits_taskID = bb_for_body419_io_Out_10_bits_taskID; // @[relu.scala 390:29]
  assign Gep_arrayidx726_io_enable_bits_control = bb_for_body419_io_Out_10_bits_control; // @[relu.scala 390:29]
  assign Gep_arrayidx726_io_Out_0_ready = st_29_io_GepAddr_ready; // @[relu.scala 486:20]
  assign Gep_arrayidx726_io_baseAddress_valid = Loop_0_io_OutLiveIn_field3_0_valid; // @[relu.scala 278:34]
  assign Gep_arrayidx726_io_baseAddress_bits_data = Loop_0_io_OutLiveIn_field3_0_bits_data; // @[relu.scala 278:34]
  assign Gep_arrayidx726_io_idx_0_valid = sextidxprom23_io_Out_1_valid; // @[relu.scala 478:29]
  assign Gep_arrayidx726_io_idx_0_bits_data = sextidxprom23_io_Out_1_bits_data; // @[relu.scala 478:29]
  assign icmp_19_clock = clock;
  assign icmp_19_reset = reset;
  assign icmp_19_io_enable_valid = bb_for_body419_io_Out_11_valid; // @[relu.scala 393:21]
  assign icmp_19_io_enable_bits_taskID = bb_for_body419_io_Out_11_bits_taskID; // @[relu.scala 393:21]
  assign icmp_19_io_enable_bits_control = bb_for_body419_io_Out_11_bits_control; // @[relu.scala 393:21]
  assign icmp_19_io_Out_0_ready = select__28_io_Select_ready; // @[relu.scala 488:24]
  assign icmp_19_io_LeftIO_valid = ld_25_io_Out_0_valid; // @[relu.scala 482:21]
  assign icmp_19_io_LeftIO_bits_data = ld_25_io_Out_0_bits_data; // @[relu.scala 482:21]
  assign icmp_19_io_RightIO_valid = const4_io_Out_valid; // @[relu.scala 452:22]
  assign select__28_clock = clock;
  assign select__28_reset = reset;
  assign select__28_io_enable_valid = bb_for_body419_io_Out_12_valid; // @[relu.scala 396:24]
  assign select__28_io_enable_bits_taskID = bb_for_body419_io_Out_12_bits_taskID; // @[relu.scala 396:24]
  assign select__28_io_Out_0_ready = st_29_io_inData_ready; // @[relu.scala 490:19]
  assign select__28_io_InData1_valid = ld_25_io_Out_1_valid; // @[relu.scala 484:25]
  assign select__28_io_InData1_bits_data = ld_25_io_Out_1_bits_data; // @[relu.scala 484:25]
  assign select__28_io_InData2_valid = const5_io_Out_valid; // @[relu.scala 454:25]
  assign select__28_io_Select_valid = icmp_19_io_Out_0_valid; // @[relu.scala 488:24]
  assign select__28_io_Select_bits_data = icmp_19_io_Out_0_bits_data; // @[relu.scala 488:24]
  assign st_29_clock = clock;
  assign st_29_reset = reset;
  assign st_29_io_enable_valid = bb_for_body419_io_Out_13_valid; // @[relu.scala 399:19]
  assign st_29_io_enable_bits_taskID = bb_for_body419_io_Out_13_bits_taskID; // @[relu.scala 399:19]
  assign st_29_io_enable_bits_control = bb_for_body419_io_Out_13_bits_control; // @[relu.scala 399:19]
  assign st_29_io_SuccOp_0_ready = br_32_io_PredOp_0_ready; // @[relu.scala 508:22]
  assign st_29_io_GepAddr_valid = Gep_arrayidx726_io_Out_0_valid; // @[relu.scala 486:20]
  assign st_29_io_GepAddr_bits_data = Gep_arrayidx726_io_Out_0_bits_data; // @[relu.scala 486:20]
  assign st_29_io_inData_valid = select__28_io_Out_0_valid; // @[relu.scala 490:19]
  assign st_29_io_inData_bits_data = select__28_io_Out_0_bits_data; // @[relu.scala 490:19]
  assign st_29_io_MemReq_ready = mem_ctrl_cache_io_wr_mem_0_MemReq_ready; // @[relu.scala 429:38]
  assign st_29_io_MemResp_valid = mem_ctrl_cache_io_wr_mem_0_MemResp_valid; // @[relu.scala 430:20]
  assign binaryOp_indvars_iv_next30_clock = clock;
  assign binaryOp_indvars_iv_next30_reset = reset;
  assign binaryOp_indvars_iv_next30_io_enable_valid = bb_for_body419_io_Out_14_valid; // @[relu.scala 402:40]
  assign binaryOp_indvars_iv_next30_io_enable_bits_taskID = bb_for_body419_io_Out_14_bits_taskID; // @[relu.scala 402:40]
  assign binaryOp_indvars_iv_next30_io_enable_bits_control = bb_for_body419_io_Out_14_bits_control; // @[relu.scala 402:40]
  assign binaryOp_indvars_iv_next30_io_Out_0_ready = Loop_0_io_CarryDepenIn_0_ready; // @[relu.scala 302:29]
  assign binaryOp_indvars_iv_next30_io_Out_1_ready = icmp_exitcond23_io_LeftIO_ready; // @[relu.scala 492:29]
  assign binaryOp_indvars_iv_next30_io_LeftIO_valid = phiindvars_iv20_io_Out_1_valid; // @[relu.scala 470:40]
  assign binaryOp_indvars_iv_next30_io_LeftIO_bits_data = phiindvars_iv20_io_Out_1_bits_data; // @[relu.scala 470:40]
  assign binaryOp_indvars_iv_next30_io_RightIO_valid = const6_io_Out_valid; // @[relu.scala 456:41]
  assign icmp_exitcond23_clock = clock;
  assign icmp_exitcond23_reset = reset;
  assign icmp_exitcond23_io_enable_valid = bb_for_body419_io_Out_15_valid; // @[relu.scala 405:29]
  assign icmp_exitcond23_io_enable_bits_taskID = bb_for_body419_io_Out_15_bits_taskID; // @[relu.scala 405:29]
  assign icmp_exitcond23_io_enable_bits_control = bb_for_body419_io_Out_15_bits_control; // @[relu.scala 405:29]
  assign icmp_exitcond23_io_Out_0_ready = br_32_io_CmpIO_ready; // @[relu.scala 494:18]
  assign icmp_exitcond23_io_LeftIO_valid = binaryOp_indvars_iv_next30_io_Out_1_valid; // @[relu.scala 492:29]
  assign icmp_exitcond23_io_LeftIO_bits_data = binaryOp_indvars_iv_next30_io_Out_1_bits_data; // @[relu.scala 492:29]
  assign icmp_exitcond23_io_RightIO_valid = Loop_0_io_OutLiveIn_field1_0_valid; // @[relu.scala 274:30]
  assign icmp_exitcond23_io_RightIO_bits_data = Loop_0_io_OutLiveIn_field1_0_bits_data; // @[relu.scala 274:30]
  assign br_32_clock = clock;
  assign br_32_reset = reset;
  assign br_32_io_enable_valid = bb_for_body419_io_Out_16_valid; // @[relu.scala 408:19]
  assign br_32_io_enable_bits_taskID = bb_for_body419_io_Out_16_bits_taskID; // @[relu.scala 408:19]
  assign br_32_io_enable_bits_control = bb_for_body419_io_Out_16_bits_control; // @[relu.scala 408:19]
  assign br_32_io_CmpIO_valid = icmp_exitcond23_io_Out_0_valid; // @[relu.scala 494:18]
  assign br_32_io_CmpIO_bits_taskID = icmp_exitcond23_io_Out_0_bits_taskID; // @[relu.scala 494:18]
  assign br_32_io_CmpIO_bits_data = icmp_exitcond23_io_Out_0_bits_data; // @[relu.scala 494:18]
  assign br_32_io_PredOp_0_valid = st_29_io_SuccOp_0_valid; // @[relu.scala 508:22]
  assign br_32_io_TrueOutput_0_ready = Loop_0_io_loopFinish_0_ready; // @[relu.scala 230:27]
  assign br_32_io_FalseOutput_0_ready = Loop_0_io_loopBack_0_ready; // @[relu.scala 228:25]
  assign const0_clock = clock;
  assign const0_reset = reset;
  assign const0_io_enable_valid = bb_entry1_io_Out_0_valid; // @[relu.scala 322:20]
  assign const0_io_enable_bits_control = bb_entry1_io_Out_0_bits_control; // @[relu.scala 322:20]
  assign const0_io_Out_ready = icmp_cmp310_io_RightIO_ready; // @[relu.scala 444:26]
  assign const1_clock = clock;
  assign const1_reset = reset;
  assign const1_io_enable_valid = bb_for_body4_lr_ph11_io_Out_0_valid; // @[relu.scala 342:20]
  assign const1_io_enable_bits_taskID = bb_for_body4_lr_ph11_io_Out_0_bits_taskID; // @[relu.scala 342:20]
  assign const1_io_enable_bits_control = bb_for_body4_lr_ph11_io_Out_0_bits_control; // @[relu.scala 342:20]
  assign const1_io_Out_ready = phij_03212_io_InData_0_ready; // @[relu.scala 446:27]
  assign const2_clock = clock;
  assign const2_reset = reset;
  assign const2_io_enable_valid = bb_for_cond_cleanup315_io_Out_0_valid; // @[relu.scala 353:20]
  assign const2_io_enable_bits_taskID = bb_for_cond_cleanup315_io_Out_0_bits_taskID; // @[relu.scala 353:20]
  assign const2_io_enable_bits_control = bb_for_cond_cleanup315_io_Out_0_bits_control; // @[relu.scala 353:20]
  assign const2_io_Out_ready = binaryOp_inc1316_io_RightIO_ready; // @[relu.scala 448:31]
  assign const3_clock = clock;
  assign const3_reset = reset;
  assign const3_io_enable_valid = bb_for_body419_io_Out_0_valid; // @[relu.scala 364:20]
  assign const3_io_enable_bits_taskID = bb_for_body419_io_Out_0_bits_taskID; // @[relu.scala 364:20]
  assign const3_io_enable_bits_control = bb_for_body419_io_Out_0_bits_control; // @[relu.scala 364:20]
  assign const3_io_Out_ready = phiindvars_iv20_io_InData_0_ready; // @[relu.scala 450:32]
  assign const4_clock = clock;
  assign const4_reset = reset;
  assign const4_io_enable_valid = bb_for_body419_io_Out_1_valid; // @[relu.scala 366:20]
  assign const4_io_enable_bits_taskID = bb_for_body419_io_Out_1_bits_taskID; // @[relu.scala 366:20]
  assign const4_io_enable_bits_control = bb_for_body419_io_Out_1_bits_control; // @[relu.scala 366:20]
  assign const4_io_Out_ready = icmp_19_io_RightIO_ready; // @[relu.scala 452:22]
  assign const5_clock = clock;
  assign const5_reset = reset;
  assign const5_io_enable_valid = bb_for_body419_io_Out_2_valid; // @[relu.scala 368:20]
  assign const5_io_enable_bits_taskID = bb_for_body419_io_Out_2_bits_taskID; // @[relu.scala 368:20]
  assign const5_io_enable_bits_control = bb_for_body419_io_Out_2_bits_control; // @[relu.scala 368:20]
  assign const5_io_Out_ready = select__28_io_InData2_ready; // @[relu.scala 454:25]
  assign const6_clock = clock;
  assign const6_reset = reset;
  assign const6_io_enable_valid = bb_for_body419_io_Out_3_valid; // @[relu.scala 370:20]
  assign const6_io_enable_bits_taskID = bb_for_body419_io_Out_3_bits_taskID; // @[relu.scala 370:20]
  assign const6_io_enable_bits_control = bb_for_body419_io_Out_3_bits_control; // @[relu.scala 370:20]
  assign const6_io_Out_ready = binaryOp_indvars_iv_next30_io_RightIO_ready; // @[relu.scala 456:41]
endmodule
module Queue_1(
  input         clock,
  input         reset,
  input         io_enq_valid,
  input         io_deq_ready,
  output        io_deq_valid,
  output [63:0] io_deq_bits,
  output [6:0]  io_count
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] ram [0:99]; // @[Decoupled.scala 218:16]
  wire [63:0] ram__T_11_data; // @[Decoupled.scala 218:16]
  wire [6:0] ram__T_11_addr; // @[Decoupled.scala 218:16]
  wire [63:0] ram__T_3_data; // @[Decoupled.scala 218:16]
  wire [6:0] ram__T_3_addr; // @[Decoupled.scala 218:16]
  wire  ram__T_3_mask; // @[Decoupled.scala 218:16]
  wire  ram__T_3_en; // @[Decoupled.scala 218:16]
  reg [6:0] deq_ptr_value; // @[Counter.scala 29:33]
  wire  ptr_match = 7'h0 == deq_ptr_value; // @[Decoupled.scala 223:33]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  wrap_1 = deq_ptr_value == 7'h63; // @[Counter.scala 38:24]
  wire [6:0] _T_7 = deq_ptr_value + 7'h1; // @[Counter.scala 39:22]
  wire [6:0] ptr_diff = 7'h0 - deq_ptr_value; // @[Decoupled.scala 257:32]
  wire  _T_14 = deq_ptr_value > 7'h0; // @[Decoupled.scala 264:39]
  wire [6:0] _T_16 = 7'h64 + ptr_diff; // @[Decoupled.scala 265:38]
  wire [6:0] _T_17 = _T_14 ? _T_16 : ptr_diff; // @[Decoupled.scala 264:24]
  assign ram__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram__T_11_data = ram[ram__T_11_addr]; // @[Decoupled.scala 218:16]
  `else
  assign ram__T_11_data = ram__T_11_addr >= 7'h64 ? _RAND_1[63:0] : ram[ram__T_11_addr]; // @[Decoupled.scala 218:16]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram__T_3_data = 64'h0;
  assign ram__T_3_addr = 7'h0;
  assign ram__T_3_mask = 1'h1;
  assign ram__T_3_en = 1'h0;
  assign io_deq_valid = ~ptr_match; // @[Decoupled.scala 240:16]
  assign io_deq_bits = ram__T_11_data; // @[Decoupled.scala 242:15]
  assign io_count = ptr_match ? 7'h0 : _T_17; // @[Decoupled.scala 261:14]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {2{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 100; initvar = initvar+1)
    ram[initvar] = _RAND_0[63:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  deq_ptr_value = _RAND_2[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram__T_3_en & ram__T_3_mask) begin
      ram[ram__T_3_addr] <= ram__T_3_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin
      deq_ptr_value <= 7'h0;
    end else if (do_deq) begin
      if (wrap_1) begin
        deq_ptr_value <= 7'h0;
      end else begin
        deq_ptr_value <= _T_7;
      end
    end
  end
endmodule
module DebugVMEBufferNode(
  input          clock,
  input          reset,
  input  [63:0]  io_addrDebug,
  input          io_vmeOut_cmd_ready,
  output         io_vmeOut_cmd_valid,
  output [63:0]  io_vmeOut_cmd_bits_addr,
  output [7:0]   io_vmeOut_cmd_bits_len,
  input          io_vmeOut_data_ready,
  output         io_vmeOut_data_valid,
  output [511:0] io_vmeOut_data_bits,
  input          io_vmeOut_ack
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  LogData_clock; // @[DebugStore.scala 243:23]
  wire  LogData_reset; // @[DebugStore.scala 243:23]
  wire  LogData_io_enq_valid; // @[DebugStore.scala 243:23]
  wire  LogData_io_deq_ready; // @[DebugStore.scala 243:23]
  wire  LogData_io_deq_valid; // @[DebugStore.scala 243:23]
  wire [63:0] LogData_io_deq_bits; // @[DebugStore.scala 243:23]
  wire [6:0] LogData_io_count; // @[DebugStore.scala 243:23]
  reg [63:0] addr_debug_reg; // @[DebugStore.scala 238:31]
  reg [1:0] wState; // @[DebugStore.scala 240:23]
  reg [6:0] queue_count; // @[DebugStore.scala 245:28]
  wire  _T_4 = LogData_io_enq_valid; // @[Decoupled.scala 40:37]
  wire [6:0] _T_6 = queue_count + 7'h1; // @[DebugStore.scala 247:32]
  wire [6:0] _T_15 = queue_count - 7'h1; // @[DebugStore.scala 259:41]
  wire  _T_17 = 2'h0 == wState; // @[Conditional.scala 37:30]
  wire [6:0] _T_19 = 7'h64 / 7'h2; // @[DebugStore.scala 265:98]
  wire  _T_20 = LogData_io_count == _T_19; // @[DebugStore.scala 265:82]
  wire  _T_22 = 2'h1 == wState; // @[Conditional.scala 37:30]
  wire  _T_23 = io_vmeOut_cmd_ready & io_vmeOut_cmd_valid; // @[Decoupled.scala 40:37]
  wire  _T_24 = 2'h2 == wState; // @[Conditional.scala 37:30]
  wire [10:0] _T_25 = queue_count * 7'h8; // @[DebugStore.scala 278:57]
  wire [63:0] _GEN_20 = {{53'd0}, _T_25}; // @[DebugStore.scala 278:42]
  wire [63:0] _T_27 = addr_debug_reg + _GEN_20; // @[DebugStore.scala 278:42]
  wire  _T_28 = wState == 2'h2; // @[DebugStore.scala 288:15]
  wire [63:0] _GEN_17 = _T_28 ? LogData_io_deq_bits : 64'h0; // @[DebugStore.scala 288:26]
  Queue_1 LogData ( // @[DebugStore.scala 243:23]
    .clock(LogData_clock),
    .reset(LogData_reset),
    .io_enq_valid(LogData_io_enq_valid),
    .io_deq_ready(LogData_io_deq_ready),
    .io_deq_valid(LogData_io_deq_valid),
    .io_deq_bits(LogData_io_deq_bits),
    .io_count(LogData_io_count)
  );
  assign io_vmeOut_cmd_valid = wState == 2'h1; // @[DebugStore.scala 260:23]
  assign io_vmeOut_cmd_bits_addr = io_addrDebug + addr_debug_reg; // @[DebugStore.scala 258:27]
  assign io_vmeOut_cmd_bits_len = {{1'd0}, _T_15}; // @[DebugStore.scala 259:26]
  assign io_vmeOut_data_valid = _T_28 & LogData_io_deq_valid; // @[DebugStore.scala 285:24 DebugStore.scala 290:26]
  assign io_vmeOut_data_bits = {{448'd0}, _GEN_17}; // @[DebugStore.scala 284:23 DebugStore.scala 289:25]
  assign LogData_clock = clock;
  assign LogData_reset = reset;
  assign LogData_io_enq_valid = 1'h0; // @[DebugStore.scala 255:24]
  assign LogData_io_deq_ready = _T_28 & io_vmeOut_data_ready; // @[DebugStore.scala 286:24 DebugStore.scala 291:26]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  addr_debug_reg = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  wState = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  queue_count = _RAND_2[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      addr_debug_reg <= 64'h0;
    end else if (!(_T_17)) begin
      if (!(_T_22)) begin
        if (_T_24) begin
          if (io_vmeOut_ack) begin
            addr_debug_reg <= _T_27;
          end
        end
      end
    end
    if (reset) begin
      wState <= 2'h0;
    end else if (_T_17) begin
      if (_T_20) begin
        wState <= 2'h1;
      end
    end else if (_T_22) begin
      if (_T_23) begin
        wState <= 2'h2;
      end
    end else if (_T_24) begin
      if (io_vmeOut_ack) begin
        wState <= 2'h0;
      end
    end
    if (reset) begin
      queue_count <= 7'h0;
    end else if (_T_17) begin
      if (_T_4) begin
        queue_count <= _T_6;
      end
    end else if (_T_22) begin
      if (_T_4) begin
        queue_count <= _T_6;
      end
    end else if (_T_24) begin
      if (io_vmeOut_ack) begin
        queue_count <= 7'h0;
      end else if (_T_4) begin
        queue_count <= _T_6;
      end
    end else if (_T_4) begin
      queue_count <= _T_6;
    end
  end
endmodule
module DebugBufferWriters(
  input          clock,
  input          reset,
  input  [63:0]  io_addrDebug_0,
  input  [63:0]  io_addrDebug_1,
  input  [63:0]  io_addrDebug_2,
  input          io_vmeOut_0_cmd_ready,
  output         io_vmeOut_0_cmd_valid,
  output [63:0]  io_vmeOut_0_cmd_bits_addr,
  output [7:0]   io_vmeOut_0_cmd_bits_len,
  input          io_vmeOut_0_data_ready,
  output         io_vmeOut_0_data_valid,
  output [511:0] io_vmeOut_0_data_bits,
  input          io_vmeOut_0_ack,
  input          io_vmeOut_1_cmd_ready,
  output         io_vmeOut_1_cmd_valid,
  output [63:0]  io_vmeOut_1_cmd_bits_addr,
  output [7:0]   io_vmeOut_1_cmd_bits_len,
  input          io_vmeOut_1_data_ready,
  output         io_vmeOut_1_data_valid,
  output [511:0] io_vmeOut_1_data_bits,
  input          io_vmeOut_1_ack,
  input          io_vmeOut_2_cmd_ready,
  output         io_vmeOut_2_cmd_valid,
  output [63:0]  io_vmeOut_2_cmd_bits_addr,
  output [7:0]   io_vmeOut_2_cmd_bits_len,
  input          io_vmeOut_2_data_ready,
  output         io_vmeOut_2_data_valid,
  output [511:0] io_vmeOut_2_data_bits,
  input          io_vmeOut_2_ack
);
  wire  buffers_0_clock; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_0_reset; // @[DebugBufferWriters.scala 23:52]
  wire [63:0] buffers_0_io_addrDebug; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_0_io_vmeOut_cmd_ready; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_0_io_vmeOut_cmd_valid; // @[DebugBufferWriters.scala 23:52]
  wire [63:0] buffers_0_io_vmeOut_cmd_bits_addr; // @[DebugBufferWriters.scala 23:52]
  wire [7:0] buffers_0_io_vmeOut_cmd_bits_len; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_0_io_vmeOut_data_ready; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_0_io_vmeOut_data_valid; // @[DebugBufferWriters.scala 23:52]
  wire [511:0] buffers_0_io_vmeOut_data_bits; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_0_io_vmeOut_ack; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_1_clock; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_1_reset; // @[DebugBufferWriters.scala 23:52]
  wire [63:0] buffers_1_io_addrDebug; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_1_io_vmeOut_cmd_ready; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_1_io_vmeOut_cmd_valid; // @[DebugBufferWriters.scala 23:52]
  wire [63:0] buffers_1_io_vmeOut_cmd_bits_addr; // @[DebugBufferWriters.scala 23:52]
  wire [7:0] buffers_1_io_vmeOut_cmd_bits_len; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_1_io_vmeOut_data_ready; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_1_io_vmeOut_data_valid; // @[DebugBufferWriters.scala 23:52]
  wire [511:0] buffers_1_io_vmeOut_data_bits; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_1_io_vmeOut_ack; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_2_clock; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_2_reset; // @[DebugBufferWriters.scala 23:52]
  wire [63:0] buffers_2_io_addrDebug; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_2_io_vmeOut_cmd_ready; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_2_io_vmeOut_cmd_valid; // @[DebugBufferWriters.scala 23:52]
  wire [63:0] buffers_2_io_vmeOut_cmd_bits_addr; // @[DebugBufferWriters.scala 23:52]
  wire [7:0] buffers_2_io_vmeOut_cmd_bits_len; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_2_io_vmeOut_data_ready; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_2_io_vmeOut_data_valid; // @[DebugBufferWriters.scala 23:52]
  wire [511:0] buffers_2_io_vmeOut_data_bits; // @[DebugBufferWriters.scala 23:52]
  wire  buffers_2_io_vmeOut_ack; // @[DebugBufferWriters.scala 23:52]
  DebugVMEBufferNode buffers_0 ( // @[DebugBufferWriters.scala 23:52]
    .clock(buffers_0_clock),
    .reset(buffers_0_reset),
    .io_addrDebug(buffers_0_io_addrDebug),
    .io_vmeOut_cmd_ready(buffers_0_io_vmeOut_cmd_ready),
    .io_vmeOut_cmd_valid(buffers_0_io_vmeOut_cmd_valid),
    .io_vmeOut_cmd_bits_addr(buffers_0_io_vmeOut_cmd_bits_addr),
    .io_vmeOut_cmd_bits_len(buffers_0_io_vmeOut_cmd_bits_len),
    .io_vmeOut_data_ready(buffers_0_io_vmeOut_data_ready),
    .io_vmeOut_data_valid(buffers_0_io_vmeOut_data_valid),
    .io_vmeOut_data_bits(buffers_0_io_vmeOut_data_bits),
    .io_vmeOut_ack(buffers_0_io_vmeOut_ack)
  );
  DebugVMEBufferNode buffers_1 ( // @[DebugBufferWriters.scala 23:52]
    .clock(buffers_1_clock),
    .reset(buffers_1_reset),
    .io_addrDebug(buffers_1_io_addrDebug),
    .io_vmeOut_cmd_ready(buffers_1_io_vmeOut_cmd_ready),
    .io_vmeOut_cmd_valid(buffers_1_io_vmeOut_cmd_valid),
    .io_vmeOut_cmd_bits_addr(buffers_1_io_vmeOut_cmd_bits_addr),
    .io_vmeOut_cmd_bits_len(buffers_1_io_vmeOut_cmd_bits_len),
    .io_vmeOut_data_ready(buffers_1_io_vmeOut_data_ready),
    .io_vmeOut_data_valid(buffers_1_io_vmeOut_data_valid),
    .io_vmeOut_data_bits(buffers_1_io_vmeOut_data_bits),
    .io_vmeOut_ack(buffers_1_io_vmeOut_ack)
  );
  DebugVMEBufferNode buffers_2 ( // @[DebugBufferWriters.scala 23:52]
    .clock(buffers_2_clock),
    .reset(buffers_2_reset),
    .io_addrDebug(buffers_2_io_addrDebug),
    .io_vmeOut_cmd_ready(buffers_2_io_vmeOut_cmd_ready),
    .io_vmeOut_cmd_valid(buffers_2_io_vmeOut_cmd_valid),
    .io_vmeOut_cmd_bits_addr(buffers_2_io_vmeOut_cmd_bits_addr),
    .io_vmeOut_cmd_bits_len(buffers_2_io_vmeOut_cmd_bits_len),
    .io_vmeOut_data_ready(buffers_2_io_vmeOut_data_ready),
    .io_vmeOut_data_valid(buffers_2_io_vmeOut_data_valid),
    .io_vmeOut_data_bits(buffers_2_io_vmeOut_data_bits),
    .io_vmeOut_ack(buffers_2_io_vmeOut_ack)
  );
  assign io_vmeOut_0_cmd_valid = buffers_0_io_vmeOut_cmd_valid; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_0_cmd_bits_addr = buffers_0_io_vmeOut_cmd_bits_addr; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_0_cmd_bits_len = buffers_0_io_vmeOut_cmd_bits_len; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_0_data_valid = buffers_0_io_vmeOut_data_valid; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_0_data_bits = buffers_0_io_vmeOut_data_bits; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_1_cmd_valid = buffers_1_io_vmeOut_cmd_valid; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_1_cmd_bits_addr = buffers_1_io_vmeOut_cmd_bits_addr; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_1_cmd_bits_len = buffers_1_io_vmeOut_cmd_bits_len; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_1_data_valid = buffers_1_io_vmeOut_data_valid; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_1_data_bits = buffers_1_io_vmeOut_data_bits; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_2_cmd_valid = buffers_2_io_vmeOut_cmd_valid; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_2_cmd_bits_addr = buffers_2_io_vmeOut_cmd_bits_addr; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_2_cmd_bits_len = buffers_2_io_vmeOut_cmd_bits_len; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_2_data_valid = buffers_2_io_vmeOut_data_valid; // @[DebugBufferWriters.scala 48:18]
  assign io_vmeOut_2_data_bits = buffers_2_io_vmeOut_data_bits; // @[DebugBufferWriters.scala 48:18]
  assign buffers_0_clock = clock;
  assign buffers_0_reset = reset;
  assign buffers_0_io_addrDebug = io_addrDebug_0; // @[DebugBufferWriters.scala 47:29]
  assign buffers_0_io_vmeOut_cmd_ready = io_vmeOut_0_cmd_ready; // @[DebugBufferWriters.scala 48:18]
  assign buffers_0_io_vmeOut_data_ready = io_vmeOut_0_data_ready; // @[DebugBufferWriters.scala 48:18]
  assign buffers_0_io_vmeOut_ack = io_vmeOut_0_ack; // @[DebugBufferWriters.scala 48:18]
  assign buffers_1_clock = clock;
  assign buffers_1_reset = reset;
  assign buffers_1_io_addrDebug = io_addrDebug_1; // @[DebugBufferWriters.scala 47:29]
  assign buffers_1_io_vmeOut_cmd_ready = io_vmeOut_1_cmd_ready; // @[DebugBufferWriters.scala 48:18]
  assign buffers_1_io_vmeOut_data_ready = io_vmeOut_1_data_ready; // @[DebugBufferWriters.scala 48:18]
  assign buffers_1_io_vmeOut_ack = io_vmeOut_1_ack; // @[DebugBufferWriters.scala 48:18]
  assign buffers_2_clock = clock;
  assign buffers_2_reset = reset;
  assign buffers_2_io_addrDebug = io_addrDebug_2; // @[DebugBufferWriters.scala 47:29]
  assign buffers_2_io_vmeOut_cmd_ready = io_vmeOut_2_cmd_ready; // @[DebugBufferWriters.scala 48:18]
  assign buffers_2_io_vmeOut_data_ready = io_vmeOut_2_data_ready; // @[DebugBufferWriters.scala 48:18]
  assign buffers_2_io_vmeOut_ack = io_vmeOut_2_ack; // @[DebugBufferWriters.scala 48:18]
endmodule
module DandelionDebugFPGAShell(
  input          clock,
  input          reset,
  input  [15:0]  io_host_addr,
  input  [31:0]  io_host_wdata,
  input          io_host_wr,
  input          io_host_rd,
  output         io_host_ack,
  output [31:0]  io_host_rdata,
  input          io_mem_aw_ready,
  output         io_mem_aw_valid,
  output [63:0]  io_mem_aw_bits_addr,
  output [7:0]   io_mem_aw_bits_len,
  input          io_mem_w_ready,
  output         io_mem_w_valid,
  output [511:0] io_mem_w_bits_data,
  output         io_mem_w_bits_last,
  input          io_mem_b_valid,
  input          io_mem_ar_ready,
  output         io_mem_ar_valid,
  output [63:0]  io_mem_ar_bits_addr,
  output         io_mem_r_ready,
  input          io_mem_r_valid,
  input  [511:0] io_mem_r_bits_data,
  input          io_mem_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire  dcr_clock; // @[DandelionShell.scala 819:19]
  wire  dcr_reset; // @[DandelionShell.scala 819:19]
  wire [15:0] dcr_io_host_addr; // @[DandelionShell.scala 819:19]
  wire [31:0] dcr_io_host_wdata; // @[DandelionShell.scala 819:19]
  wire  dcr_io_host_wr; // @[DandelionShell.scala 819:19]
  wire  dcr_io_host_rd; // @[DandelionShell.scala 819:19]
  wire  dcr_io_host_ack; // @[DandelionShell.scala 819:19]
  wire [31:0] dcr_io_host_rdata; // @[DandelionShell.scala 819:19]
  wire  dcr_io_dcr_launch; // @[DandelionShell.scala 819:19]
  wire  dcr_io_dcr_finish; // @[DandelionShell.scala 819:19]
  wire  dcr_io_dcr_ecnt_0_valid; // @[DandelionShell.scala 819:19]
  wire [31:0] dcr_io_dcr_ecnt_0_bits; // @[DandelionShell.scala 819:19]
  wire [31:0] dcr_io_dcr_vals_0; // @[DandelionShell.scala 819:19]
  wire [63:0] dcr_io_dcr_ptrs_0; // @[DandelionShell.scala 819:19]
  wire [63:0] dcr_io_dcr_ptrs_1; // @[DandelionShell.scala 819:19]
  wire [63:0] dcr_io_dcr_ptrs_2; // @[DandelionShell.scala 819:19]
  wire [63:0] dcr_io_dcr_ptrs_3; // @[DandelionShell.scala 819:19]
  wire [63:0] dcr_io_dcr_ptrs_4; // @[DandelionShell.scala 819:19]
  wire  dmem_clock; // @[DandelionShell.scala 820:20]
  wire  dmem_reset; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_aw_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_aw_valid; // @[DandelionShell.scala 820:20]
  wire [63:0] dmem_io_mem_aw_bits_addr; // @[DandelionShell.scala 820:20]
  wire [7:0] dmem_io_mem_aw_bits_len; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_w_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_w_valid; // @[DandelionShell.scala 820:20]
  wire [511:0] dmem_io_mem_w_bits_data; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_w_bits_last; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_b_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_b_valid; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_ar_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_ar_valid; // @[DandelionShell.scala 820:20]
  wire [63:0] dmem_io_mem_ar_bits_addr; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_r_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_r_valid; // @[DandelionShell.scala 820:20]
  wire [511:0] dmem_io_mem_r_bits_data; // @[DandelionShell.scala 820:20]
  wire  dmem_io_mem_r_bits_last; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_rd_0_cmd_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_rd_0_cmd_valid; // @[DandelionShell.scala 820:20]
  wire [63:0] dmem_io_dme_rd_0_cmd_bits_addr; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_rd_0_data_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_rd_0_data_valid; // @[DandelionShell.scala 820:20]
  wire [511:0] dmem_io_dme_rd_0_data_bits; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_0_cmd_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_0_cmd_valid; // @[DandelionShell.scala 820:20]
  wire [63:0] dmem_io_dme_wr_0_cmd_bits_addr; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_0_data_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_0_data_valid; // @[DandelionShell.scala 820:20]
  wire [511:0] dmem_io_dme_wr_0_data_bits; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_0_ack; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_1_cmd_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_1_cmd_valid; // @[DandelionShell.scala 820:20]
  wire [63:0] dmem_io_dme_wr_1_cmd_bits_addr; // @[DandelionShell.scala 820:20]
  wire [7:0] dmem_io_dme_wr_1_cmd_bits_len; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_1_data_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_1_data_valid; // @[DandelionShell.scala 820:20]
  wire [511:0] dmem_io_dme_wr_1_data_bits; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_1_ack; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_2_cmd_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_2_cmd_valid; // @[DandelionShell.scala 820:20]
  wire [63:0] dmem_io_dme_wr_2_cmd_bits_addr; // @[DandelionShell.scala 820:20]
  wire [7:0] dmem_io_dme_wr_2_cmd_bits_len; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_2_data_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_2_data_valid; // @[DandelionShell.scala 820:20]
  wire [511:0] dmem_io_dme_wr_2_data_bits; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_2_ack; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_3_cmd_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_3_cmd_valid; // @[DandelionShell.scala 820:20]
  wire [63:0] dmem_io_dme_wr_3_cmd_bits_addr; // @[DandelionShell.scala 820:20]
  wire [7:0] dmem_io_dme_wr_3_cmd_bits_len; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_3_data_ready; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_3_data_valid; // @[DandelionShell.scala 820:20]
  wire [511:0] dmem_io_dme_wr_3_data_bits; // @[DandelionShell.scala 820:20]
  wire  dmem_io_dme_wr_3_ack; // @[DandelionShell.scala 820:20]
  wire  cache_clock; // @[DandelionShell.scala 821:21]
  wire  cache_reset; // @[DandelionShell.scala 821:21]
  wire  cache_io_cpu_flush; // @[DandelionShell.scala 821:21]
  wire  cache_io_cpu_flush_done; // @[DandelionShell.scala 821:21]
  wire  cache_io_cpu_req_ready; // @[DandelionShell.scala 821:21]
  wire  cache_io_cpu_req_valid; // @[DandelionShell.scala 821:21]
  wire [63:0] cache_io_cpu_req_bits_addr; // @[DandelionShell.scala 821:21]
  wire [63:0] cache_io_cpu_req_bits_data; // @[DandelionShell.scala 821:21]
  wire [7:0] cache_io_cpu_req_bits_mask; // @[DandelionShell.scala 821:21]
  wire [7:0] cache_io_cpu_req_bits_tag; // @[DandelionShell.scala 821:21]
  wire  cache_io_cpu_resp_valid; // @[DandelionShell.scala 821:21]
  wire [63:0] cache_io_cpu_resp_bits_data; // @[DandelionShell.scala 821:21]
  wire [7:0] cache_io_cpu_resp_bits_tag; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_rd_cmd_ready; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_rd_cmd_valid; // @[DandelionShell.scala 821:21]
  wire [63:0] cache_io_mem_rd_cmd_bits_addr; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_rd_data_ready; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_rd_data_valid; // @[DandelionShell.scala 821:21]
  wire [511:0] cache_io_mem_rd_data_bits; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_wr_cmd_ready; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_wr_cmd_valid; // @[DandelionShell.scala 821:21]
  wire [63:0] cache_io_mem_wr_cmd_bits_addr; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_wr_data_ready; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_wr_data_valid; // @[DandelionShell.scala 821:21]
  wire [511:0] cache_io_mem_wr_data_bits; // @[DandelionShell.scala 821:21]
  wire  cache_io_mem_wr_ack; // @[DandelionShell.scala 821:21]
  wire  accel_clock; // @[DandelionShell.scala 824:21]
  wire  accel_reset; // @[DandelionShell.scala 824:21]
  wire  accel_io_in_ready; // @[DandelionShell.scala 824:21]
  wire  accel_io_in_valid; // @[DandelionShell.scala 824:21]
  wire [63:0] accel_io_in_bits_dataPtrs_field1_data; // @[DandelionShell.scala 824:21]
  wire [63:0] accel_io_in_bits_dataPtrs_field0_data; // @[DandelionShell.scala 824:21]
  wire [63:0] accel_io_in_bits_dataVals_field0_data; // @[DandelionShell.scala 824:21]
  wire  accel_io_MemResp_valid; // @[DandelionShell.scala 824:21]
  wire [63:0] accel_io_MemResp_bits_data; // @[DandelionShell.scala 824:21]
  wire [7:0] accel_io_MemResp_bits_tag; // @[DandelionShell.scala 824:21]
  wire  accel_io_MemReq_ready; // @[DandelionShell.scala 824:21]
  wire  accel_io_MemReq_valid; // @[DandelionShell.scala 824:21]
  wire [63:0] accel_io_MemReq_bits_addr; // @[DandelionShell.scala 824:21]
  wire [63:0] accel_io_MemReq_bits_data; // @[DandelionShell.scala 824:21]
  wire [7:0] accel_io_MemReq_bits_mask; // @[DandelionShell.scala 824:21]
  wire [7:0] accel_io_MemReq_bits_tag; // @[DandelionShell.scala 824:21]
  wire  accel_io_out_ready; // @[DandelionShell.scala 824:21]
  wire  accel_io_out_valid; // @[DandelionShell.scala 824:21]
  wire  debug_module_clock; // @[DandelionShell.scala 826:50]
  wire  debug_module_reset; // @[DandelionShell.scala 826:50]
  wire [63:0] debug_module_io_addrDebug_0; // @[DandelionShell.scala 826:50]
  wire [63:0] debug_module_io_addrDebug_1; // @[DandelionShell.scala 826:50]
  wire [63:0] debug_module_io_addrDebug_2; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_0_cmd_ready; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_0_cmd_valid; // @[DandelionShell.scala 826:50]
  wire [63:0] debug_module_io_vmeOut_0_cmd_bits_addr; // @[DandelionShell.scala 826:50]
  wire [7:0] debug_module_io_vmeOut_0_cmd_bits_len; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_0_data_ready; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_0_data_valid; // @[DandelionShell.scala 826:50]
  wire [511:0] debug_module_io_vmeOut_0_data_bits; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_0_ack; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_1_cmd_ready; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_1_cmd_valid; // @[DandelionShell.scala 826:50]
  wire [63:0] debug_module_io_vmeOut_1_cmd_bits_addr; // @[DandelionShell.scala 826:50]
  wire [7:0] debug_module_io_vmeOut_1_cmd_bits_len; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_1_data_ready; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_1_data_valid; // @[DandelionShell.scala 826:50]
  wire [511:0] debug_module_io_vmeOut_1_data_bits; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_1_ack; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_2_cmd_ready; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_2_cmd_valid; // @[DandelionShell.scala 826:50]
  wire [63:0] debug_module_io_vmeOut_2_cmd_bits_addr; // @[DandelionShell.scala 826:50]
  wire [7:0] debug_module_io_vmeOut_2_cmd_bits_len; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_2_data_ready; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_2_data_valid; // @[DandelionShell.scala 826:50]
  wire [511:0] debug_module_io_vmeOut_2_data_bits; // @[DandelionShell.scala 826:50]
  wire  debug_module_io_vmeOut_2_ack; // @[DandelionShell.scala 826:50]
  reg [1:0] state; // @[DandelionShell.scala 845:22]
  reg [31:0] cycles; // @[DandelionShell.scala 846:23]
  wire  _T = state == 2'h0; // @[DandelionShell.scala 851:14]
  wire  _T_1 = state != 2'h2; // @[DandelionShell.scala 853:20]
  wire [31:0] _T_3 = cycles + 32'h1; // @[DandelionShell.scala 854:22]
  reg [63:0] ptrs_0; // @[Reg.scala 27:20]
  reg [63:0] ptrs_1; // @[Reg.scala 27:20]
  reg [63:0] ptrs_2; // @[Reg.scala 27:20]
  reg [63:0] ptrs_3; // @[Reg.scala 27:20]
  reg [63:0] ptrs_4; // @[Reg.scala 27:20]
  reg [63:0] vals_0; // @[Reg.scala 27:20]
  wire  _T_14 = state == 2'h2; // @[DandelionShell.scala 902:31]
  reg  dme_ack_0; // @[DandelionShell.scala 913:46]
  reg  dme_ack_1; // @[DandelionShell.scala 913:46]
  reg  dme_ack_2; // @[DandelionShell.scala 913:46]
  wire  _GEN_8 = dmem_io_dme_wr_1_ack | dme_ack_0; // @[DandelionShell.scala 915:37]
  wire  _GEN_9 = dmem_io_dme_wr_2_ack | dme_ack_1; // @[DandelionShell.scala 915:37]
  wire  _GEN_10 = dmem_io_dme_wr_3_ack | dme_ack_2; // @[DandelionShell.scala 915:37]
  reg  cache_done; // @[DandelionShell.scala 928:27]
  wire  _GEN_11 = cache_io_cpu_flush_done | cache_done; // @[DandelionShell.scala 930:35]
  wire  _T_17 = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_19 = ~reset; // @[DandelionShell.scala 938:15]
  wire  _T_36 = accel_io_in_ready & accel_io_in_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_14 = dcr_io_dcr_launch; // @[DandelionShell.scala 937:31]
  wire  _T_37 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_38 = accel_io_out_ready & accel_io_out_valid; // @[Decoupled.scala 40:37]
  wire  _T_39 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire  _T_40 = dme_ack_0 & dme_ack_1; // @[DandelionShell.scala 924:32]
  wire  _T_41 = _T_40 & dme_ack_2; // @[DandelionShell.scala 924:32]
  wire  _T_42 = cache_done & _T_41; // @[DandelionShell.scala 959:23]
  wire  _T_43 = 2'h3 == state; // @[Conditional.scala 37:30]
  wire  _GEN_23 = _T_17 & dcr_io_dcr_launch; // @[DandelionShell.scala 938:15]
  DCRF1 dcr ( // @[DandelionShell.scala 819:19]
    .clock(dcr_clock),
    .reset(dcr_reset),
    .io_host_addr(dcr_io_host_addr),
    .io_host_wdata(dcr_io_host_wdata),
    .io_host_wr(dcr_io_host_wr),
    .io_host_rd(dcr_io_host_rd),
    .io_host_ack(dcr_io_host_ack),
    .io_host_rdata(dcr_io_host_rdata),
    .io_dcr_launch(dcr_io_dcr_launch),
    .io_dcr_finish(dcr_io_dcr_finish),
    .io_dcr_ecnt_0_valid(dcr_io_dcr_ecnt_0_valid),
    .io_dcr_ecnt_0_bits(dcr_io_dcr_ecnt_0_bits),
    .io_dcr_vals_0(dcr_io_dcr_vals_0),
    .io_dcr_ptrs_0(dcr_io_dcr_ptrs_0),
    .io_dcr_ptrs_1(dcr_io_dcr_ptrs_1),
    .io_dcr_ptrs_2(dcr_io_dcr_ptrs_2),
    .io_dcr_ptrs_3(dcr_io_dcr_ptrs_3),
    .io_dcr_ptrs_4(dcr_io_dcr_ptrs_4)
  );
  DME dmem ( // @[DandelionShell.scala 820:20]
    .clock(dmem_clock),
    .reset(dmem_reset),
    .io_mem_aw_ready(dmem_io_mem_aw_ready),
    .io_mem_aw_valid(dmem_io_mem_aw_valid),
    .io_mem_aw_bits_addr(dmem_io_mem_aw_bits_addr),
    .io_mem_aw_bits_len(dmem_io_mem_aw_bits_len),
    .io_mem_w_ready(dmem_io_mem_w_ready),
    .io_mem_w_valid(dmem_io_mem_w_valid),
    .io_mem_w_bits_data(dmem_io_mem_w_bits_data),
    .io_mem_w_bits_last(dmem_io_mem_w_bits_last),
    .io_mem_b_ready(dmem_io_mem_b_ready),
    .io_mem_b_valid(dmem_io_mem_b_valid),
    .io_mem_ar_ready(dmem_io_mem_ar_ready),
    .io_mem_ar_valid(dmem_io_mem_ar_valid),
    .io_mem_ar_bits_addr(dmem_io_mem_ar_bits_addr),
    .io_mem_r_ready(dmem_io_mem_r_ready),
    .io_mem_r_valid(dmem_io_mem_r_valid),
    .io_mem_r_bits_data(dmem_io_mem_r_bits_data),
    .io_mem_r_bits_last(dmem_io_mem_r_bits_last),
    .io_dme_rd_0_cmd_ready(dmem_io_dme_rd_0_cmd_ready),
    .io_dme_rd_0_cmd_valid(dmem_io_dme_rd_0_cmd_valid),
    .io_dme_rd_0_cmd_bits_addr(dmem_io_dme_rd_0_cmd_bits_addr),
    .io_dme_rd_0_data_ready(dmem_io_dme_rd_0_data_ready),
    .io_dme_rd_0_data_valid(dmem_io_dme_rd_0_data_valid),
    .io_dme_rd_0_data_bits(dmem_io_dme_rd_0_data_bits),
    .io_dme_wr_0_cmd_ready(dmem_io_dme_wr_0_cmd_ready),
    .io_dme_wr_0_cmd_valid(dmem_io_dme_wr_0_cmd_valid),
    .io_dme_wr_0_cmd_bits_addr(dmem_io_dme_wr_0_cmd_bits_addr),
    .io_dme_wr_0_data_ready(dmem_io_dme_wr_0_data_ready),
    .io_dme_wr_0_data_valid(dmem_io_dme_wr_0_data_valid),
    .io_dme_wr_0_data_bits(dmem_io_dme_wr_0_data_bits),
    .io_dme_wr_0_ack(dmem_io_dme_wr_0_ack),
    .io_dme_wr_1_cmd_ready(dmem_io_dme_wr_1_cmd_ready),
    .io_dme_wr_1_cmd_valid(dmem_io_dme_wr_1_cmd_valid),
    .io_dme_wr_1_cmd_bits_addr(dmem_io_dme_wr_1_cmd_bits_addr),
    .io_dme_wr_1_cmd_bits_len(dmem_io_dme_wr_1_cmd_bits_len),
    .io_dme_wr_1_data_ready(dmem_io_dme_wr_1_data_ready),
    .io_dme_wr_1_data_valid(dmem_io_dme_wr_1_data_valid),
    .io_dme_wr_1_data_bits(dmem_io_dme_wr_1_data_bits),
    .io_dme_wr_1_ack(dmem_io_dme_wr_1_ack),
    .io_dme_wr_2_cmd_ready(dmem_io_dme_wr_2_cmd_ready),
    .io_dme_wr_2_cmd_valid(dmem_io_dme_wr_2_cmd_valid),
    .io_dme_wr_2_cmd_bits_addr(dmem_io_dme_wr_2_cmd_bits_addr),
    .io_dme_wr_2_cmd_bits_len(dmem_io_dme_wr_2_cmd_bits_len),
    .io_dme_wr_2_data_ready(dmem_io_dme_wr_2_data_ready),
    .io_dme_wr_2_data_valid(dmem_io_dme_wr_2_data_valid),
    .io_dme_wr_2_data_bits(dmem_io_dme_wr_2_data_bits),
    .io_dme_wr_2_ack(dmem_io_dme_wr_2_ack),
    .io_dme_wr_3_cmd_ready(dmem_io_dme_wr_3_cmd_ready),
    .io_dme_wr_3_cmd_valid(dmem_io_dme_wr_3_cmd_valid),
    .io_dme_wr_3_cmd_bits_addr(dmem_io_dme_wr_3_cmd_bits_addr),
    .io_dme_wr_3_cmd_bits_len(dmem_io_dme_wr_3_cmd_bits_len),
    .io_dme_wr_3_data_ready(dmem_io_dme_wr_3_data_ready),
    .io_dme_wr_3_data_valid(dmem_io_dme_wr_3_data_valid),
    .io_dme_wr_3_data_bits(dmem_io_dme_wr_3_data_bits),
    .io_dme_wr_3_ack(dmem_io_dme_wr_3_ack)
  );
  DMECache cache ( // @[DandelionShell.scala 821:21]
    .clock(cache_clock),
    .reset(cache_reset),
    .io_cpu_flush(cache_io_cpu_flush),
    .io_cpu_flush_done(cache_io_cpu_flush_done),
    .io_cpu_req_ready(cache_io_cpu_req_ready),
    .io_cpu_req_valid(cache_io_cpu_req_valid),
    .io_cpu_req_bits_addr(cache_io_cpu_req_bits_addr),
    .io_cpu_req_bits_data(cache_io_cpu_req_bits_data),
    .io_cpu_req_bits_mask(cache_io_cpu_req_bits_mask),
    .io_cpu_req_bits_tag(cache_io_cpu_req_bits_tag),
    .io_cpu_resp_valid(cache_io_cpu_resp_valid),
    .io_cpu_resp_bits_data(cache_io_cpu_resp_bits_data),
    .io_cpu_resp_bits_tag(cache_io_cpu_resp_bits_tag),
    .io_mem_rd_cmd_ready(cache_io_mem_rd_cmd_ready),
    .io_mem_rd_cmd_valid(cache_io_mem_rd_cmd_valid),
    .io_mem_rd_cmd_bits_addr(cache_io_mem_rd_cmd_bits_addr),
    .io_mem_rd_data_ready(cache_io_mem_rd_data_ready),
    .io_mem_rd_data_valid(cache_io_mem_rd_data_valid),
    .io_mem_rd_data_bits(cache_io_mem_rd_data_bits),
    .io_mem_wr_cmd_ready(cache_io_mem_wr_cmd_ready),
    .io_mem_wr_cmd_valid(cache_io_mem_wr_cmd_valid),
    .io_mem_wr_cmd_bits_addr(cache_io_mem_wr_cmd_bits_addr),
    .io_mem_wr_data_ready(cache_io_mem_wr_data_ready),
    .io_mem_wr_data_valid(cache_io_mem_wr_data_valid),
    .io_mem_wr_data_bits(cache_io_mem_wr_data_bits),
    .io_mem_wr_ack(cache_io_mem_wr_ack)
  );
  reluDF accel ( // @[DandelionShell.scala 824:21]
    .clock(accel_clock),
    .reset(accel_reset),
    .io_in_ready(accel_io_in_ready),
    .io_in_valid(accel_io_in_valid),
    .io_in_bits_dataPtrs_field1_data(accel_io_in_bits_dataPtrs_field1_data),
    .io_in_bits_dataPtrs_field0_data(accel_io_in_bits_dataPtrs_field0_data),
    .io_in_bits_dataVals_field0_data(accel_io_in_bits_dataVals_field0_data),
    .io_MemResp_valid(accel_io_MemResp_valid),
    .io_MemResp_bits_data(accel_io_MemResp_bits_data),
    .io_MemResp_bits_tag(accel_io_MemResp_bits_tag),
    .io_MemReq_ready(accel_io_MemReq_ready),
    .io_MemReq_valid(accel_io_MemReq_valid),
    .io_MemReq_bits_addr(accel_io_MemReq_bits_addr),
    .io_MemReq_bits_data(accel_io_MemReq_bits_data),
    .io_MemReq_bits_mask(accel_io_MemReq_bits_mask),
    .io_MemReq_bits_tag(accel_io_MemReq_bits_tag),
    .io_out_ready(accel_io_out_ready),
    .io_out_valid(accel_io_out_valid)
  );
  DebugBufferWriters debug_module ( // @[DandelionShell.scala 826:50]
    .clock(debug_module_clock),
    .reset(debug_module_reset),
    .io_addrDebug_0(debug_module_io_addrDebug_0),
    .io_addrDebug_1(debug_module_io_addrDebug_1),
    .io_addrDebug_2(debug_module_io_addrDebug_2),
    .io_vmeOut_0_cmd_ready(debug_module_io_vmeOut_0_cmd_ready),
    .io_vmeOut_0_cmd_valid(debug_module_io_vmeOut_0_cmd_valid),
    .io_vmeOut_0_cmd_bits_addr(debug_module_io_vmeOut_0_cmd_bits_addr),
    .io_vmeOut_0_cmd_bits_len(debug_module_io_vmeOut_0_cmd_bits_len),
    .io_vmeOut_0_data_ready(debug_module_io_vmeOut_0_data_ready),
    .io_vmeOut_0_data_valid(debug_module_io_vmeOut_0_data_valid),
    .io_vmeOut_0_data_bits(debug_module_io_vmeOut_0_data_bits),
    .io_vmeOut_0_ack(debug_module_io_vmeOut_0_ack),
    .io_vmeOut_1_cmd_ready(debug_module_io_vmeOut_1_cmd_ready),
    .io_vmeOut_1_cmd_valid(debug_module_io_vmeOut_1_cmd_valid),
    .io_vmeOut_1_cmd_bits_addr(debug_module_io_vmeOut_1_cmd_bits_addr),
    .io_vmeOut_1_cmd_bits_len(debug_module_io_vmeOut_1_cmd_bits_len),
    .io_vmeOut_1_data_ready(debug_module_io_vmeOut_1_data_ready),
    .io_vmeOut_1_data_valid(debug_module_io_vmeOut_1_data_valid),
    .io_vmeOut_1_data_bits(debug_module_io_vmeOut_1_data_bits),
    .io_vmeOut_1_ack(debug_module_io_vmeOut_1_ack),
    .io_vmeOut_2_cmd_ready(debug_module_io_vmeOut_2_cmd_ready),
    .io_vmeOut_2_cmd_valid(debug_module_io_vmeOut_2_cmd_valid),
    .io_vmeOut_2_cmd_bits_addr(debug_module_io_vmeOut_2_cmd_bits_addr),
    .io_vmeOut_2_cmd_bits_len(debug_module_io_vmeOut_2_cmd_bits_len),
    .io_vmeOut_2_data_ready(debug_module_io_vmeOut_2_data_ready),
    .io_vmeOut_2_data_valid(debug_module_io_vmeOut_2_data_valid),
    .io_vmeOut_2_data_bits(debug_module_io_vmeOut_2_data_bits),
    .io_vmeOut_2_ack(debug_module_io_vmeOut_2_ack)
  );
  assign io_host_ack = dcr_io_host_ack; // @[DandelionShell.scala 972:11]
  assign io_host_rdata = dcr_io_host_rdata; // @[DandelionShell.scala 972:11]
  assign io_mem_aw_valid = dmem_io_mem_aw_valid; // @[DandelionShell.scala 971:10]
  assign io_mem_aw_bits_addr = dmem_io_mem_aw_bits_addr; // @[DandelionShell.scala 971:10]
  assign io_mem_aw_bits_len = dmem_io_mem_aw_bits_len; // @[DandelionShell.scala 971:10]
  assign io_mem_w_valid = dmem_io_mem_w_valid; // @[DandelionShell.scala 971:10]
  assign io_mem_w_bits_data = dmem_io_mem_w_bits_data; // @[DandelionShell.scala 971:10]
  assign io_mem_w_bits_last = dmem_io_mem_w_bits_last; // @[DandelionShell.scala 971:10]
  assign io_mem_ar_valid = dmem_io_mem_ar_valid; // @[DandelionShell.scala 971:10]
  assign io_mem_ar_bits_addr = dmem_io_mem_ar_bits_addr; // @[DandelionShell.scala 971:10]
  assign io_mem_r_ready = dmem_io_mem_r_ready; // @[DandelionShell.scala 971:10]
  assign dcr_clock = clock;
  assign dcr_reset = reset;
  assign dcr_io_host_addr = io_host_addr; // @[DandelionShell.scala 972:11]
  assign dcr_io_host_wdata = io_host_wdata; // @[DandelionShell.scala 972:11]
  assign dcr_io_host_wr = io_host_wr; // @[DandelionShell.scala 972:11]
  assign dcr_io_host_rd = io_host_rd; // @[DandelionShell.scala 972:11]
  assign dcr_io_dcr_finish = state == 2'h3; // @[DandelionShell.scala 969:21]
  assign dcr_io_dcr_ecnt_0_valid = state == 2'h3; // @[DandelionShell.scala 861:28]
  assign dcr_io_dcr_ecnt_0_bits = cycles; // @[DandelionShell.scala 862:27]
  assign dmem_clock = clock;
  assign dmem_reset = reset;
  assign dmem_io_mem_aw_ready = io_mem_aw_ready; // @[DandelionShell.scala 971:10]
  assign dmem_io_mem_w_ready = io_mem_w_ready; // @[DandelionShell.scala 971:10]
  assign dmem_io_mem_b_valid = io_mem_b_valid; // @[DandelionShell.scala 971:10]
  assign dmem_io_mem_ar_ready = io_mem_ar_ready; // @[DandelionShell.scala 971:10]
  assign dmem_io_mem_r_valid = io_mem_r_valid; // @[DandelionShell.scala 971:10]
  assign dmem_io_mem_r_bits_data = io_mem_r_bits_data; // @[DandelionShell.scala 971:10]
  assign dmem_io_mem_r_bits_last = io_mem_r_bits_last; // @[DandelionShell.scala 971:10]
  assign dmem_io_dme_rd_0_cmd_valid = cache_io_mem_rd_cmd_valid; // @[DandelionShell.scala 835:21]
  assign dmem_io_dme_rd_0_cmd_bits_addr = cache_io_mem_rd_cmd_bits_addr; // @[DandelionShell.scala 835:21]
  assign dmem_io_dme_rd_0_data_ready = cache_io_mem_rd_data_ready; // @[DandelionShell.scala 835:21]
  assign dmem_io_dme_wr_0_cmd_valid = cache_io_mem_wr_cmd_valid; // @[DandelionShell.scala 836:21]
  assign dmem_io_dme_wr_0_cmd_bits_addr = cache_io_mem_wr_cmd_bits_addr; // @[DandelionShell.scala 836:21]
  assign dmem_io_dme_wr_0_data_valid = cache_io_mem_wr_data_valid; // @[DandelionShell.scala 836:21]
  assign dmem_io_dme_wr_0_data_bits = cache_io_mem_wr_data_bits; // @[DandelionShell.scala 836:21]
  assign dmem_io_dme_wr_1_cmd_valid = debug_module_io_vmeOut_0_cmd_valid; // @[DandelionShell.scala 906:37]
  assign dmem_io_dme_wr_1_cmd_bits_addr = debug_module_io_vmeOut_0_cmd_bits_addr; // @[DandelionShell.scala 905:36]
  assign dmem_io_dme_wr_1_cmd_bits_len = debug_module_io_vmeOut_0_cmd_bits_len; // @[DandelionShell.scala 905:36]
  assign dmem_io_dme_wr_1_data_valid = debug_module_io_vmeOut_0_data_valid; // @[DandelionShell.scala 909:32]
  assign dmem_io_dme_wr_1_data_bits = debug_module_io_vmeOut_0_data_bits; // @[DandelionShell.scala 909:32]
  assign dmem_io_dme_wr_2_cmd_valid = debug_module_io_vmeOut_1_cmd_valid; // @[DandelionShell.scala 906:37]
  assign dmem_io_dme_wr_2_cmd_bits_addr = debug_module_io_vmeOut_1_cmd_bits_addr; // @[DandelionShell.scala 905:36]
  assign dmem_io_dme_wr_2_cmd_bits_len = debug_module_io_vmeOut_1_cmd_bits_len; // @[DandelionShell.scala 905:36]
  assign dmem_io_dme_wr_2_data_valid = debug_module_io_vmeOut_1_data_valid; // @[DandelionShell.scala 909:32]
  assign dmem_io_dme_wr_2_data_bits = debug_module_io_vmeOut_1_data_bits; // @[DandelionShell.scala 909:32]
  assign dmem_io_dme_wr_3_cmd_valid = debug_module_io_vmeOut_2_cmd_valid; // @[DandelionShell.scala 906:37]
  assign dmem_io_dme_wr_3_cmd_bits_addr = debug_module_io_vmeOut_2_cmd_bits_addr; // @[DandelionShell.scala 905:36]
  assign dmem_io_dme_wr_3_cmd_bits_len = debug_module_io_vmeOut_2_cmd_bits_len; // @[DandelionShell.scala 905:36]
  assign dmem_io_dme_wr_3_data_valid = debug_module_io_vmeOut_2_data_valid; // @[DandelionShell.scala 909:32]
  assign dmem_io_dme_wr_3_data_bits = debug_module_io_vmeOut_2_data_bits; // @[DandelionShell.scala 909:32]
  assign cache_clock = clock;
  assign cache_reset = reset;
  assign cache_io_cpu_flush = state == 2'h2; // @[DandelionShell.scala 902:22]
  assign cache_io_cpu_req_valid = accel_io_MemReq_valid; // @[DandelionShell.scala 828:20]
  assign cache_io_cpu_req_bits_addr = accel_io_MemReq_bits_addr; // @[DandelionShell.scala 828:20]
  assign cache_io_cpu_req_bits_data = accel_io_MemReq_bits_data; // @[DandelionShell.scala 828:20]
  assign cache_io_cpu_req_bits_mask = accel_io_MemReq_bits_mask; // @[DandelionShell.scala 828:20]
  assign cache_io_cpu_req_bits_tag = accel_io_MemReq_bits_tag; // @[DandelionShell.scala 828:20]
  assign cache_io_mem_rd_cmd_ready = dmem_io_dme_rd_0_cmd_ready; // @[DandelionShell.scala 835:21]
  assign cache_io_mem_rd_data_valid = dmem_io_dme_rd_0_data_valid; // @[DandelionShell.scala 835:21]
  assign cache_io_mem_rd_data_bits = dmem_io_dme_rd_0_data_bits; // @[DandelionShell.scala 835:21]
  assign cache_io_mem_wr_cmd_ready = dmem_io_dme_wr_0_cmd_ready; // @[DandelionShell.scala 836:21]
  assign cache_io_mem_wr_data_ready = dmem_io_dme_wr_0_data_ready; // @[DandelionShell.scala 836:21]
  assign cache_io_mem_wr_ack = dmem_io_dme_wr_0_ack; // @[DandelionShell.scala 836:21]
  assign accel_clock = clock;
  assign accel_reset = reset;
  assign accel_io_in_valid = _T_17 & _GEN_14; // @[DandelionShell.scala 899:21 DandelionShell.scala 947:27]
  assign accel_io_in_bits_dataPtrs_field1_data = ptrs_1; // @[DandelionShell.scala 881:45]
  assign accel_io_in_bits_dataPtrs_field0_data = ptrs_0; // @[DandelionShell.scala 881:45]
  assign accel_io_in_bits_dataVals_field0_data = vals_0; // @[DandelionShell.scala 893:45]
  assign accel_io_MemResp_valid = cache_io_cpu_resp_valid; // @[DandelionShell.scala 829:20]
  assign accel_io_MemResp_bits_data = cache_io_cpu_resp_bits_data; // @[DandelionShell.scala 829:20]
  assign accel_io_MemResp_bits_tag = cache_io_cpu_resp_bits_tag; // @[DandelionShell.scala 829:20]
  assign accel_io_MemReq_ready = cache_io_cpu_req_ready; // @[DandelionShell.scala 828:20]
  assign accel_io_out_ready = state == 2'h1; // @[DandelionShell.scala 900:22]
  assign debug_module_clock = clock;
  assign debug_module_reset = reset;
  assign debug_module_io_addrDebug_0 = dcr_io_dcr_ptrs_2; // @[DandelionShell.scala 888:38]
  assign debug_module_io_addrDebug_1 = dcr_io_dcr_ptrs_3; // @[DandelionShell.scala 888:38]
  assign debug_module_io_addrDebug_2 = dcr_io_dcr_ptrs_4; // @[DandelionShell.scala 888:38]
  assign debug_module_io_vmeOut_0_cmd_ready = dmem_io_dme_wr_1_cmd_ready; // @[DandelionShell.scala 907:45]
  assign debug_module_io_vmeOut_0_data_ready = dmem_io_dme_wr_1_data_ready; // @[DandelionShell.scala 909:32]
  assign debug_module_io_vmeOut_0_ack = dmem_io_dme_wr_1_ack; // @[DandelionShell.scala 910:39]
  assign debug_module_io_vmeOut_1_cmd_ready = dmem_io_dme_wr_2_cmd_ready; // @[DandelionShell.scala 907:45]
  assign debug_module_io_vmeOut_1_data_ready = dmem_io_dme_wr_2_data_ready; // @[DandelionShell.scala 909:32]
  assign debug_module_io_vmeOut_1_ack = dmem_io_dme_wr_2_ack; // @[DandelionShell.scala 910:39]
  assign debug_module_io_vmeOut_2_cmd_ready = dmem_io_dme_wr_3_cmd_ready; // @[DandelionShell.scala 907:45]
  assign debug_module_io_vmeOut_2_data_ready = dmem_io_dme_wr_3_data_ready; // @[DandelionShell.scala 909:32]
  assign debug_module_io_vmeOut_2_ack = dmem_io_dme_wr_3_ack; // @[DandelionShell.scala 910:39]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  cycles = _RAND_1[31:0];
  _RAND_2 = {2{`RANDOM}};
  ptrs_0 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  ptrs_1 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  ptrs_2 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  ptrs_3 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  ptrs_4 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  vals_0 = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  dme_ack_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  dme_ack_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  dme_ack_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  cache_done = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else if (_T_17) begin
      if (dcr_io_dcr_launch) begin
        if (_T_36) begin
          state <= 2'h1;
        end
      end
    end else if (_T_37) begin
      if (_T_38) begin
        state <= 2'h2;
      end
    end else if (_T_39) begin
      if (_T_42) begin
        state <= 2'h3;
      end
    end else if (_T_43) begin
      state <= 2'h0;
    end
    if (reset) begin
      cycles <= 32'h0;
    end else if (_T) begin
      cycles <= 32'h0;
    end else if (_T_1) begin
      cycles <= _T_3;
    end
    if (reset) begin
      ptrs_0 <= 64'h0;
    end else if (_T) begin
      ptrs_0 <= dcr_io_dcr_ptrs_0;
    end
    if (reset) begin
      ptrs_1 <= 64'h0;
    end else if (_T) begin
      ptrs_1 <= dcr_io_dcr_ptrs_1;
    end
    if (reset) begin
      ptrs_2 <= 64'h0;
    end else if (_T) begin
      ptrs_2 <= dcr_io_dcr_ptrs_2;
    end
    if (reset) begin
      ptrs_3 <= 64'h0;
    end else if (_T) begin
      ptrs_3 <= dcr_io_dcr_ptrs_3;
    end
    if (reset) begin
      ptrs_4 <= 64'h0;
    end else if (_T) begin
      ptrs_4 <= dcr_io_dcr_ptrs_4;
    end
    if (reset) begin
      vals_0 <= 64'h0;
    end else if (_T) begin
      vals_0 <= {{32'd0}, dcr_io_dcr_vals_0};
    end
    if (reset) begin
      dme_ack_0 <= 1'h0;
    end else begin
      dme_ack_0 <= _GEN_8;
    end
    if (reset) begin
      dme_ack_1 <= 1'h0;
    end else begin
      dme_ack_1 <= _GEN_9;
    end
    if (reset) begin
      dme_ack_2 <= 1'h0;
    end else begin
      dme_ack_2 <= _GEN_10;
    end
    if (reset) begin
      cache_done <= 1'h0;
    end else if (_T_14) begin
      cache_done <= _GEN_11;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"Ptrs: "); // @[DandelionShell.scala 938:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"ptr(0): 0x%x, ",ptrs_0); // @[DandelionShell.scala 939:46]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"ptr(1): 0x%x, ",ptrs_1); // @[DandelionShell.scala 939:46]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"ptr(2): 0x%x, ",ptrs_2); // @[DandelionShell.scala 939:46]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"ptr(3): 0x%x, ",ptrs_3); // @[DandelionShell.scala 939:46]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"ptr(4): 0x%x, ",ptrs_4); // @[DandelionShell.scala 939:46]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"\nVals: "); // @[DandelionShell.scala 940:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"val(0): 0x%x, ",vals_0); // @[DandelionShell.scala 942:48]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & _T_19) begin
          $fwrite(32'h80000002,"\n"); // @[DandelionShell.scala 946:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module F1Shell(
  input          ap_clk,
  input          ap_rst_n,
  output         cl_axi_mstr_bus_AWVALID,
  input          cl_axi_mstr_bus_AWREADY,
  output [63:0]  cl_axi_mstr_bus_AWADDR,
  output [15:0]  cl_axi_mstr_bus_AWID,
  output [9:0]   cl_axi_mstr_bus_AWUSER,
  output [7:0]   cl_axi_mstr_bus_AWLEN,
  output [2:0]   cl_axi_mstr_bus_AWSIZE,
  output [1:0]   cl_axi_mstr_bus_AWBURST,
  output [1:0]   cl_axi_mstr_bus_AWLOCK,
  output [3:0]   cl_axi_mstr_bus_AWCACHE,
  output [2:0]   cl_axi_mstr_bus_AWPROT,
  output [3:0]   cl_axi_mstr_bus_AWQOS,
  output [3:0]   cl_axi_mstr_bus_AWREGION,
  output         cl_axi_mstr_bus_WVALID,
  input          cl_axi_mstr_bus_WREADY,
  output [511:0] cl_axi_mstr_bus_WDATA,
  output [63:0]  cl_axi_mstr_bus_WSTRB,
  output         cl_axi_mstr_bus_WLAST,
  output [15:0]  cl_axi_mstr_bus_WID,
  output [9:0]   cl_axi_mstr_bus_WUSER,
  input          cl_axi_mstr_bus_BVALID,
  output         cl_axi_mstr_bus_BREADY,
  input  [1:0]   cl_axi_mstr_bus_BRESP,
  input  [15:0]  cl_axi_mstr_bus_BID,
  input  [9:0]   cl_axi_mstr_bus_BUSER,
  output         cl_axi_mstr_bus_ARVALID,
  input          cl_axi_mstr_bus_ARREADY,
  output [63:0]  cl_axi_mstr_bus_ARADDR,
  output [15:0]  cl_axi_mstr_bus_ARID,
  output [9:0]   cl_axi_mstr_bus_ARUSER,
  output [7:0]   cl_axi_mstr_bus_ARLEN,
  output [2:0]   cl_axi_mstr_bus_ARSIZE,
  output [1:0]   cl_axi_mstr_bus_ARBURST,
  output [1:0]   cl_axi_mstr_bus_ARLOCK,
  output [3:0]   cl_axi_mstr_bus_ARCACHE,
  output [2:0]   cl_axi_mstr_bus_ARPROT,
  output [3:0]   cl_axi_mstr_bus_ARQOS,
  output [3:0]   cl_axi_mstr_bus_ARREGION,
  input          cl_axi_mstr_bus_RVALID,
  output         cl_axi_mstr_bus_RREADY,
  input  [511:0] cl_axi_mstr_bus_RDATA,
  input  [1:0]   cl_axi_mstr_bus_RRESP,
  input          cl_axi_mstr_bus_RLAST,
  input  [15:0]  cl_axi_mstr_bus_RID,
  input  [9:0]   cl_axi_mstr_bus_RUSER,
  input  [15:0]  axi_mstr_cfg_bus_addr,
  input  [31:0]  axi_mstr_cfg_bus_wdata,
  input          axi_mstr_cfg_bus_wr,
  input          axi_mstr_cfg_bus_rd,
  output         axi_mstr_cfg_bus_ack,
  output [31:0]  axi_mstr_cfg_bus_rdata
);
  wire  shell_clock; // @[XilinxShell.scala 33:11]
  wire  shell_reset; // @[XilinxShell.scala 33:11]
  wire [15:0] shell_io_host_addr; // @[XilinxShell.scala 33:11]
  wire [31:0] shell_io_host_wdata; // @[XilinxShell.scala 33:11]
  wire  shell_io_host_wr; // @[XilinxShell.scala 33:11]
  wire  shell_io_host_rd; // @[XilinxShell.scala 33:11]
  wire  shell_io_host_ack; // @[XilinxShell.scala 33:11]
  wire [31:0] shell_io_host_rdata; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_aw_ready; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_aw_valid; // @[XilinxShell.scala 33:11]
  wire [63:0] shell_io_mem_aw_bits_addr; // @[XilinxShell.scala 33:11]
  wire [7:0] shell_io_mem_aw_bits_len; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_w_ready; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_w_valid; // @[XilinxShell.scala 33:11]
  wire [511:0] shell_io_mem_w_bits_data; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_w_bits_last; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_b_valid; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_ar_ready; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_ar_valid; // @[XilinxShell.scala 33:11]
  wire [63:0] shell_io_mem_ar_bits_addr; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_r_ready; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_r_valid; // @[XilinxShell.scala 33:11]
  wire [511:0] shell_io_mem_r_bits_data; // @[XilinxShell.scala 33:11]
  wire  shell_io_mem_r_bits_last; // @[XilinxShell.scala 33:11]
  DandelionDebugFPGAShell shell ( // @[XilinxShell.scala 33:11]
    .clock(shell_clock),
    .reset(shell_reset),
    .io_host_addr(shell_io_host_addr),
    .io_host_wdata(shell_io_host_wdata),
    .io_host_wr(shell_io_host_wr),
    .io_host_rd(shell_io_host_rd),
    .io_host_ack(shell_io_host_ack),
    .io_host_rdata(shell_io_host_rdata),
    .io_mem_aw_ready(shell_io_mem_aw_ready),
    .io_mem_aw_valid(shell_io_mem_aw_valid),
    .io_mem_aw_bits_addr(shell_io_mem_aw_bits_addr),
    .io_mem_aw_bits_len(shell_io_mem_aw_bits_len),
    .io_mem_w_ready(shell_io_mem_w_ready),
    .io_mem_w_valid(shell_io_mem_w_valid),
    .io_mem_w_bits_data(shell_io_mem_w_bits_data),
    .io_mem_w_bits_last(shell_io_mem_w_bits_last),
    .io_mem_b_valid(shell_io_mem_b_valid),
    .io_mem_ar_ready(shell_io_mem_ar_ready),
    .io_mem_ar_valid(shell_io_mem_ar_valid),
    .io_mem_ar_bits_addr(shell_io_mem_ar_bits_addr),
    .io_mem_r_ready(shell_io_mem_r_ready),
    .io_mem_r_valid(shell_io_mem_r_valid),
    .io_mem_r_bits_data(shell_io_mem_r_bits_data),
    .io_mem_r_bits_last(shell_io_mem_r_bits_last)
  );
  assign cl_axi_mstr_bus_AWVALID = shell_io_mem_aw_valid; // @[XilinxShell.scala 40:27]
  assign cl_axi_mstr_bus_AWADDR = shell_io_mem_aw_bits_addr; // @[XilinxShell.scala 42:26]
  assign cl_axi_mstr_bus_AWID = 16'h0; // @[XilinxShell.scala 43:24]
  assign cl_axi_mstr_bus_AWUSER = 10'h0; // @[XilinxShell.scala 44:26]
  assign cl_axi_mstr_bus_AWLEN = shell_io_mem_aw_bits_len; // @[XilinxShell.scala 45:25]
  assign cl_axi_mstr_bus_AWSIZE = 3'h6; // @[XilinxShell.scala 46:26]
  assign cl_axi_mstr_bus_AWBURST = 2'h1; // @[XilinxShell.scala 47:27]
  assign cl_axi_mstr_bus_AWLOCK = 2'h0; // @[XilinxShell.scala 48:26]
  assign cl_axi_mstr_bus_AWCACHE = 4'h3; // @[XilinxShell.scala 49:27]
  assign cl_axi_mstr_bus_AWPROT = 3'h0; // @[XilinxShell.scala 50:26]
  assign cl_axi_mstr_bus_AWQOS = 4'h0; // @[XilinxShell.scala 51:25]
  assign cl_axi_mstr_bus_AWREGION = 4'h0; // @[XilinxShell.scala 52:28]
  assign cl_axi_mstr_bus_WVALID = shell_io_mem_w_valid; // @[XilinxShell.scala 54:26]
  assign cl_axi_mstr_bus_WDATA = shell_io_mem_w_bits_data; // @[XilinxShell.scala 56:25]
  assign cl_axi_mstr_bus_WSTRB = 64'hffffffffffffffff; // @[XilinxShell.scala 57:25]
  assign cl_axi_mstr_bus_WLAST = shell_io_mem_w_bits_last; // @[XilinxShell.scala 58:25]
  assign cl_axi_mstr_bus_WID = 16'h0; // @[XilinxShell.scala 59:23]
  assign cl_axi_mstr_bus_WUSER = 10'h0; // @[XilinxShell.scala 60:25]
  assign cl_axi_mstr_bus_BREADY = shell_io_mem_b_valid; // @[XilinxShell.scala 63:26]
  assign cl_axi_mstr_bus_ARVALID = shell_io_mem_ar_valid; // @[XilinxShell.scala 68:27]
  assign cl_axi_mstr_bus_ARADDR = shell_io_mem_ar_bits_addr; // @[XilinxShell.scala 70:26]
  assign cl_axi_mstr_bus_ARID = 16'h0; // @[XilinxShell.scala 71:24]
  assign cl_axi_mstr_bus_ARUSER = 10'h0; // @[XilinxShell.scala 72:26]
  assign cl_axi_mstr_bus_ARLEN = 8'h0; // @[XilinxShell.scala 73:25]
  assign cl_axi_mstr_bus_ARSIZE = 3'h6; // @[XilinxShell.scala 74:26]
  assign cl_axi_mstr_bus_ARBURST = 2'h1; // @[XilinxShell.scala 75:27]
  assign cl_axi_mstr_bus_ARLOCK = 2'h0; // @[XilinxShell.scala 76:26]
  assign cl_axi_mstr_bus_ARCACHE = 4'h3; // @[XilinxShell.scala 77:27]
  assign cl_axi_mstr_bus_ARPROT = 3'h0; // @[XilinxShell.scala 78:26]
  assign cl_axi_mstr_bus_ARQOS = 4'h0; // @[XilinxShell.scala 79:25]
  assign cl_axi_mstr_bus_ARREGION = 4'h0; // @[XilinxShell.scala 80:28]
  assign cl_axi_mstr_bus_RREADY = shell_io_mem_r_ready; // @[XilinxShell.scala 83:26]
  assign axi_mstr_cfg_bus_ack = shell_io_host_ack; // @[XilinxShell.scala 95:24]
  assign axi_mstr_cfg_bus_rdata = shell_io_host_rdata; // @[XilinxShell.scala 96:26]
  assign shell_clock = ap_clk;
  assign shell_reset = ~ap_rst_n;
  assign shell_io_host_addr = axi_mstr_cfg_bus_addr; // @[XilinxShell.scala 91:22]
  assign shell_io_host_wdata = axi_mstr_cfg_bus_wdata; // @[XilinxShell.scala 92:23]
  assign shell_io_host_wr = axi_mstr_cfg_bus_wr; // @[XilinxShell.scala 93:20]
  assign shell_io_host_rd = axi_mstr_cfg_bus_rd; // @[XilinxShell.scala 94:20]
  assign shell_io_mem_aw_ready = cl_axi_mstr_bus_AWREADY; // @[XilinxShell.scala 41:25]
  assign shell_io_mem_w_ready = cl_axi_mstr_bus_WREADY; // @[XilinxShell.scala 55:24]
  assign shell_io_mem_b_valid = cl_axi_mstr_bus_BVALID; // @[XilinxShell.scala 62:24]
  assign shell_io_mem_ar_ready = cl_axi_mstr_bus_ARREADY; // @[XilinxShell.scala 69:25]
  assign shell_io_mem_r_valid = cl_axi_mstr_bus_RVALID; // @[XilinxShell.scala 82:24]
  assign shell_io_mem_r_bits_data = cl_axi_mstr_bus_RDATA; // @[XilinxShell.scala 84:28]
  assign shell_io_mem_r_bits_last = cl_axi_mstr_bus_RLAST; // @[XilinxShell.scala 86:28]
endmodule
