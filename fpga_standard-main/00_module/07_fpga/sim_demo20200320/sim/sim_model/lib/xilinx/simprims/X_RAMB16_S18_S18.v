// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_RAMB16_S18_S18.v,v 1.10 2005/05/11 21:15:29 wloo Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  16K-Bit Data and 2K-Bit Parity Dual Port Block RAM
// /___/   /\     Filename : X_RAMB16_S18_S18.v
// \   \  /  \    Timestamp : Thu Mar 10 16:43:58 PST 2005
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/10/05 - Added LOC parameter, removed GSR port
// End Revision

`ifdef legacy_model

`timescale 1 ps/1 ps

module X_RAMB16_S18_S18 (DOA, DOB, DOPA, DOPB, ADDRA, ADDRB, CLKA, CLKB, DIA, DIB, DIPA, DIPB, ENA, ENB, SSRA, SSRB, WEA, WEB);

    parameter INIT_A = 18'h0;
    parameter INIT_B = 18'h0;
    parameter SRVAL_A = 18'h0;
    parameter SRVAL_B = 18'h0;
    parameter WRITE_MODE_A = "WRITE_FIRST";
    parameter WRITE_MODE_B = "WRITE_FIRST";
    parameter SIM_COLLISION_CHECK = "ALL";
    parameter LOC = "UNPLACED";
    parameter SETUP_ALL = 1000;
    parameter SETUP_READ_FIRST = 3000;

    parameter INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

    output [15:0] DOA;
    output [1:0] DOPA;
    reg [15:0] doa_out;
    reg [1:0] dopa_out;
    wire doa_out0, doa_out1, doa_out2, doa_out3, doa_out4, doa_out5, doa_out6, doa_out7, doa_out8, doa_out9, doa_out10, doa_out11, doa_out12, doa_out13, doa_out14, doa_out15;
    wire dopa0_out, dopa1_out;

    input [9:0] ADDRA;
    input [15:0] DIA;
    input [1:0] DIPA;
    input ENA, CLKA, WEA, SSRA;

    output [15:0] DOB;
    output [1:0] DOPB;
    reg [15:0] dob_out;
    reg [1:0] dopb_out;
    wire dob_out0, dob_out1, dob_out2, dob_out3, dob_out4, dob_out5, dob_out6, dob_out7, dob_out8, dob_out9, dob_out10, dob_out11, dob_out12, dob_out13, dob_out14, dob_out15;
    wire dopb0_out, dopb1_out;

    input [9:0] ADDRB;
    input [15:0] DIB;
    input [1:0] DIPB;
    input ENB, CLKB, WEB, SSRB;

    reg [18431:0] mem;
    reg [8:0] count;
    reg [1:0] wr_mode_a, wr_mode_b;

    reg [5:0] dmi, dbi;
    reg [5:0] pmi, pbi;

    wire [9:0] addra_int;
    reg [9:0] addra_reg;
    wire [15:0] dia_int;
    wire [1:0] dipa_int;
    wire ena_int, clka_int, wea_int, ssra_int;
    reg ena_reg, wea_reg, ssra_reg;
    wire [9:0] addrb_int;
    reg [9:0] addrb_reg;
    wire [15:0] dib_int;
    wire [1:0] dipb_int;
    wire enb_int, clkb_int, web_int, ssrb_int;
    reg display_flag;
    reg enb_reg, web_reg, ssrb_reg;

    time time_clka, time_clkb;
    time time_clka_clkb;
    time time_clkb_clka;

    reg setup_all_a_b;
    reg setup_all_b_a;
    reg setup_zero;
    reg setup_rf_a_b;
    reg setup_rf_b_a;
    reg [1:0] data_collision, data_collision_a_b, data_collision_b_a;
    reg memory_collision, memory_collision_a_b, memory_collision_b_a;
    reg address_collision, address_collision_a_b, address_collision_b_a;
    reg change_clka;
    reg change_clkb;

    wire [14:0] data_addra_int;
    wire [14:0] data_addra_reg;
    wire [14:0] data_addrb_int;
    wire [14:0] data_addrb_reg;
    wire [15:0] parity_addra_int;
    wire [15:0] parity_addra_reg;
    wire [15:0] parity_addrb_int;
    wire [15:0] parity_addrb_reg;

    wire dia_enable = ena_int && wea_int;
    wire dib_enable = enb_int && web_int;
    reg notifier, notifier_a, notifier_b;

    tri0 GSR = glbl.GSR;
    wire gsr_int;

    always @(gsr_int)
	if (gsr_int) begin
	    assign doa_out = INIT_A[15:0];
	    assign dopa_out = INIT_A[17:16];
	    assign dob_out = INIT_B[15:0];
	    assign dopb_out = INIT_B[17:16];
	end
	else begin
	    deassign doa_out;
	    deassign dopa_out;
	    deassign dob_out;
	    deassign dopb_out;
	end

    buf b_gsr (gsr_int, GSR);
    buf b_doa_out0 (doa_out0, doa_out[0]);
    buf b_doa_out1 (doa_out1, doa_out[1]);
    buf b_doa_out2 (doa_out2, doa_out[2]);
    buf b_doa_out3 (doa_out3, doa_out[3]);
    buf b_doa_out4 (doa_out4, doa_out[4]);
    buf b_doa_out5 (doa_out5, doa_out[5]);
    buf b_doa_out6 (doa_out6, doa_out[6]);
    buf b_doa_out7 (doa_out7, doa_out[7]);
    buf b_doa_out8 (doa_out8, doa_out[8]);
    buf b_doa_out9 (doa_out9, doa_out[9]);
    buf b_doa_out10 (doa_out10, doa_out[10]);
    buf b_doa_out11 (doa_out11, doa_out[11]);
    buf b_doa_out12 (doa_out12, doa_out[12]);
    buf b_doa_out13 (doa_out13, doa_out[13]);
    buf b_doa_out14 (doa_out14, doa_out[14]);
    buf b_doa_out15 (doa_out15, doa_out[15]);
    buf b_dopa_out0 (dopa_out0, dopa_out[0]);
    buf b_dopa_out1 (dopa_out1, dopa_out[1]);
    buf b_dob_out0 (dob_out0, dob_out[0]);
    buf b_dob_out1 (dob_out1, dob_out[1]);
    buf b_dob_out2 (dob_out2, dob_out[2]);
    buf b_dob_out3 (dob_out3, dob_out[3]);
    buf b_dob_out4 (dob_out4, dob_out[4]);
    buf b_dob_out5 (dob_out5, dob_out[5]);
    buf b_dob_out6 (dob_out6, dob_out[6]);
    buf b_dob_out7 (dob_out7, dob_out[7]);
    buf b_dob_out8 (dob_out8, dob_out[8]);
    buf b_dob_out9 (dob_out9, dob_out[9]);
    buf b_dob_out10 (dob_out10, dob_out[10]);
    buf b_dob_out11 (dob_out11, dob_out[11]);
    buf b_dob_out12 (dob_out12, dob_out[12]);
    buf b_dob_out13 (dob_out13, dob_out[13]);
    buf b_dob_out14 (dob_out14, dob_out[14]);
    buf b_dob_out15 (dob_out15, dob_out[15]);
    buf b_dopb_out0 (dopb_out0, dopb_out[0]);
    buf b_dopb_out1 (dopb_out1, dopb_out[1]);

    buf b_doa0 (DOA[0], doa_out0);
    buf b_doa1 (DOA[1], doa_out1);
    buf b_doa2 (DOA[2], doa_out2);
    buf b_doa3 (DOA[3], doa_out3);
    buf b_doa4 (DOA[4], doa_out4);
    buf b_doa5 (DOA[5], doa_out5);
    buf b_doa6 (DOA[6], doa_out6);
    buf b_doa7 (DOA[7], doa_out7);
    buf b_doa8 (DOA[8], doa_out8);
    buf b_doa9 (DOA[9], doa_out9);
    buf b_doa10 (DOA[10], doa_out10);
    buf b_doa11 (DOA[11], doa_out11);
    buf b_doa12 (DOA[12], doa_out12);
    buf b_doa13 (DOA[13], doa_out13);
    buf b_doa14 (DOA[14], doa_out14);
    buf b_doa15 (DOA[15], doa_out15);
    buf b_dopa0 (DOPA[0], dopa_out0);
    buf b_dopa1 (DOPA[1], dopa_out1);
    buf b_dob0 (DOB[0], dob_out0);
    buf b_dob1 (DOB[1], dob_out1);
    buf b_dob2 (DOB[2], dob_out2);
    buf b_dob3 (DOB[3], dob_out3);
    buf b_dob4 (DOB[4], dob_out4);
    buf b_dob5 (DOB[5], dob_out5);
    buf b_dob6 (DOB[6], dob_out6);
    buf b_dob7 (DOB[7], dob_out7);
    buf b_dob8 (DOB[8], dob_out8);
    buf b_dob9 (DOB[9], dob_out9);
    buf b_dob10 (DOB[10], dob_out10);
    buf b_dob11 (DOB[11], dob_out11);
    buf b_dob12 (DOB[12], dob_out12);
    buf b_dob13 (DOB[13], dob_out13);
    buf b_dob14 (DOB[14], dob_out14);
    buf b_dob15 (DOB[15], dob_out15);
    buf b_dopb0 (DOPB[0], dopb_out0);
    buf b_dopb1 (DOPB[1], dopb_out1);

    buf b_addra_0 (addra_int[0], ADDRA[0]);
    buf b_addra_1 (addra_int[1], ADDRA[1]);
    buf b_addra_2 (addra_int[2], ADDRA[2]);
    buf b_addra_3 (addra_int[3], ADDRA[3]);
    buf b_addra_4 (addra_int[4], ADDRA[4]);
    buf b_addra_5 (addra_int[5], ADDRA[5]);
    buf b_addra_6 (addra_int[6], ADDRA[6]);
    buf b_addra_7 (addra_int[7], ADDRA[7]);
    buf b_addra_8 (addra_int[8], ADDRA[8]);
    buf b_addra_9 (addra_int[9], ADDRA[9]);
    buf b_dia_0 (dia_int[0], DIA[0]);
    buf b_dia_1 (dia_int[1], DIA[1]);
    buf b_dia_2 (dia_int[2], DIA[2]);
    buf b_dia_3 (dia_int[3], DIA[3]);
    buf b_dia_4 (dia_int[4], DIA[4]);
    buf b_dia_5 (dia_int[5], DIA[5]);
    buf b_dia_6 (dia_int[6], DIA[6]);
    buf b_dia_7 (dia_int[7], DIA[7]);
    buf b_dia_8 (dia_int[8], DIA[8]);
    buf b_dia_9 (dia_int[9], DIA[9]);
    buf b_dia_10 (dia_int[10], DIA[10]);
    buf b_dia_11 (dia_int[11], DIA[11]);
    buf b_dia_12 (dia_int[12], DIA[12]);
    buf b_dia_13 (dia_int[13], DIA[13]);
    buf b_dia_14 (dia_int[14], DIA[14]);
    buf b_dia_15 (dia_int[15], DIA[15]);
    buf b_dipa_0 (dipa_int[0], DIPA[0]);
    buf b_dipa_1 (dipa_int[1], DIPA[1]);
    buf b_ena (ena_int, ENA);
    buf b_clka (clka_int, CLKA);
    buf b_ssra (ssra_int, SSRA);
    buf b_wea (wea_int, WEA);
    buf b_addrb_0 (addrb_int[0], ADDRB[0]);
    buf b_addrb_1 (addrb_int[1], ADDRB[1]);
    buf b_addrb_2 (addrb_int[2], ADDRB[2]);
    buf b_addrb_3 (addrb_int[3], ADDRB[3]);
    buf b_addrb_4 (addrb_int[4], ADDRB[4]);
    buf b_addrb_5 (addrb_int[5], ADDRB[5]);
    buf b_addrb_6 (addrb_int[6], ADDRB[6]);
    buf b_addrb_7 (addrb_int[7], ADDRB[7]);
    buf b_addrb_8 (addrb_int[8], ADDRB[8]);
    buf b_addrb_9 (addrb_int[9], ADDRB[9]);
    buf b_dib_0 (dib_int[0], DIB[0]);
    buf b_dib_1 (dib_int[1], DIB[1]);
    buf b_dib_2 (dib_int[2], DIB[2]);
    buf b_dib_3 (dib_int[3], DIB[3]);
    buf b_dib_4 (dib_int[4], DIB[4]);
    buf b_dib_5 (dib_int[5], DIB[5]);
    buf b_dib_6 (dib_int[6], DIB[6]);
    buf b_dib_7 (dib_int[7], DIB[7]);
    buf b_dib_8 (dib_int[8], DIB[8]);
    buf b_dib_9 (dib_int[9], DIB[9]);
    buf b_dib_10 (dib_int[10], DIB[10]);
    buf b_dib_11 (dib_int[11], DIB[11]);
    buf b_dib_12 (dib_int[12], DIB[12]);
    buf b_dib_13 (dib_int[13], DIB[13]);
    buf b_dib_14 (dib_int[14], DIB[14]);
    buf b_dib_15 (dib_int[15], DIB[15]);
    buf b_dipb_0 (dipb_int[0], DIPB[0]);
    buf b_dipb_1 (dipb_int[1], DIPB[1]);
    buf b_enb (enb_int, ENB);
    buf b_clkb (clkb_int, CLKB);
    buf b_ssrb (ssrb_int, SSRB);
    buf b_web (web_int, WEB);

    initial begin
	for (count = 0; count < 256; count = count + 1) begin
	    mem[count]		  <= INIT_00[count];
	    mem[256 * 1 + count]  <= INIT_01[count];
	    mem[256 * 2 + count]  <= INIT_02[count];
	    mem[256 * 3 + count]  <= INIT_03[count];
	    mem[256 * 4 + count]  <= INIT_04[count];
	    mem[256 * 5 + count]  <= INIT_05[count];
	    mem[256 * 6 + count]  <= INIT_06[count];
	    mem[256 * 7 + count]  <= INIT_07[count];
	    mem[256 * 8 + count]  <= INIT_08[count];
	    mem[256 * 9 + count]  <= INIT_09[count];
	    mem[256 * 10 + count] <= INIT_0A[count];
	    mem[256 * 11 + count] <= INIT_0B[count];
	    mem[256 * 12 + count] <= INIT_0C[count];
	    mem[256 * 13 + count] <= INIT_0D[count];
	    mem[256 * 14 + count] <= INIT_0E[count];
	    mem[256 * 15 + count] <= INIT_0F[count];
	    mem[256 * 16 + count] <= INIT_10[count];
	    mem[256 * 17 + count] <= INIT_11[count];
	    mem[256 * 18 + count] <= INIT_12[count];
	    mem[256 * 19 + count] <= INIT_13[count];
	    mem[256 * 20 + count] <= INIT_14[count];
	    mem[256 * 21 + count] <= INIT_15[count];
	    mem[256 * 22 + count] <= INIT_16[count];
	    mem[256 * 23 + count] <= INIT_17[count];
	    mem[256 * 24 + count] <= INIT_18[count];
	    mem[256 * 25 + count] <= INIT_19[count];
	    mem[256 * 26 + count] <= INIT_1A[count];
	    mem[256 * 27 + count] <= INIT_1B[count];
	    mem[256 * 28 + count] <= INIT_1C[count];
	    mem[256 * 29 + count] <= INIT_1D[count];
	    mem[256 * 30 + count] <= INIT_1E[count];
	    mem[256 * 31 + count] <= INIT_1F[count];
	    mem[256 * 32 + count] <= INIT_20[count];
	    mem[256 * 33 + count] <= INIT_21[count];
	    mem[256 * 34 + count] <= INIT_22[count];
	    mem[256 * 35 + count] <= INIT_23[count];
	    mem[256 * 36 + count] <= INIT_24[count];
	    mem[256 * 37 + count] <= INIT_25[count];
	    mem[256 * 38 + count] <= INIT_26[count];
	    mem[256 * 39 + count] <= INIT_27[count];
	    mem[256 * 40 + count] <= INIT_28[count];
	    mem[256 * 41 + count] <= INIT_29[count];
	    mem[256 * 42 + count] <= INIT_2A[count];
	    mem[256 * 43 + count] <= INIT_2B[count];
	    mem[256 * 44 + count] <= INIT_2C[count];
	    mem[256 * 45 + count] <= INIT_2D[count];
	    mem[256 * 46 + count] <= INIT_2E[count];
	    mem[256 * 47 + count] <= INIT_2F[count];
	    mem[256 * 48 + count] <= INIT_30[count];
	    mem[256 * 49 + count] <= INIT_31[count];
	    mem[256 * 50 + count] <= INIT_32[count];
	    mem[256 * 51 + count] <= INIT_33[count];
	    mem[256 * 52 + count] <= INIT_34[count];
	    mem[256 * 53 + count] <= INIT_35[count];
	    mem[256 * 54 + count] <= INIT_36[count];
	    mem[256 * 55 + count] <= INIT_37[count];
	    mem[256 * 56 + count] <= INIT_38[count];
	    mem[256 * 57 + count] <= INIT_39[count];
	    mem[256 * 58 + count] <= INIT_3A[count];
	    mem[256 * 59 + count] <= INIT_3B[count];
	    mem[256 * 60 + count] <= INIT_3C[count];
	    mem[256 * 61 + count] <= INIT_3D[count];
	    mem[256 * 62 + count] <= INIT_3E[count];
	    mem[256 * 63 + count] <= INIT_3F[count];
	    mem[256 * 64 + count] <= INITP_00[count];
	    mem[256 * 65 + count] <= INITP_01[count];
	    mem[256 * 66 + count] <= INITP_02[count];
	    mem[256 * 67 + count] <= INITP_03[count];
	    mem[256 * 68 + count] <= INITP_04[count];
	    mem[256 * 69 + count] <= INITP_05[count];
	    mem[256 * 70 + count] <= INITP_06[count];
	    mem[256 * 71 + count] <= INITP_07[count];
	end
	address_collision <= 0;
	address_collision_a_b <= 0;
	address_collision_b_a <= 0;
	change_clka <= 0;
	change_clkb <= 0;
	data_collision <= 0;
	data_collision_a_b <= 0;
	data_collision_b_a <= 0;
	memory_collision <= 0;
	memory_collision_a_b <= 0;
	memory_collision_b_a <= 0;
	setup_all_a_b <= 0;
	setup_all_b_a <= 0;
	setup_zero <= 0;
	setup_rf_a_b <= 0;
	setup_rf_b_a <= 0;
    end

    assign data_addra_int = addra_int * 16;
    assign data_addra_reg = addra_reg * 16;
    assign data_addrb_int = addrb_int * 16;
    assign data_addrb_reg = addrb_reg * 16;
    assign parity_addra_int = 16384 + addra_int * 2;
    assign parity_addra_reg = 16384 + addra_reg * 2;
    assign parity_addrb_int = 16384 + addrb_int * 2;
    assign parity_addrb_reg = 16384 + addrb_reg * 2;


    initial begin

	display_flag = 1;

	case (SIM_COLLISION_CHECK)

	    "NONE" : begin
		         assign setup_all_a_b = 1'b0;
	                 assign setup_all_b_a = 1'b0;
	                 assign setup_zero = 1'b0;
	                 assign setup_rf_a_b = 1'b0;
	                 assign setup_rf_b_a = 1'b0;
	                 assign display_flag = 0;
	             end
	    "WARNING_ONLY" : begin
		                 assign data_collision = 2'b00;
	                         assign data_collision_a_b = 2'b00;
	                         assign data_collision_b_a = 2'b00;
	                         assign memory_collision = 1'b0;
	                         assign memory_collision_a_b = 1'b0;
	                         assign memory_collision_b_a = 1'b0;
	                     end
	    "GENERATE_X_ONLY" : begin
		                    assign display_flag = 0;
	                        end
	    "ALL" : ;
	    default : begin
		          $display("Attribute Syntax Error : The Attribute SIM_COLLISION_CHECK on X_RAMB16_S18_S18 instance %m is set to %s.  Legal values for this attribute are ALL, NONE, WARNING_ONLY or GENERATE_X_ONLY.", SIM_COLLISION_CHECK);
		          $finish;
	              end

	endcase // case(SIM_COLLISION_CHECK)

    end // initial begin


    always @(posedge clka_int) begin
	time_clka = $time;
	#0 time_clkb_clka = time_clka - time_clkb;
	change_clka = ~change_clka;
    end

    always @(posedge clkb_int) begin
	time_clkb = $time;
	#0 time_clka_clkb = time_clkb - time_clka;
	change_clkb = ~change_clkb;
    end

    always @(change_clkb) begin
	if ((0 < time_clka_clkb) && (time_clka_clkb < SETUP_ALL))
	    setup_all_a_b = 1;
	if ((0 < time_clka_clkb) && (time_clka_clkb < SETUP_READ_FIRST))
	    setup_rf_a_b = 1;
    end

    always @(change_clka) begin
	if ((0 < time_clkb_clka) && (time_clkb_clka < SETUP_ALL))
	    setup_all_b_a = 1;
	if ((0 < time_clkb_clka) && (time_clkb_clka < SETUP_READ_FIRST))
	    setup_rf_b_a = 1;
    end

    always @(change_clkb or change_clka) begin
	if ((time_clkb_clka == 0) && (time_clka_clkb == 0))
	    setup_zero = 1;
    end

    always @(posedge setup_zero) begin
	if ((ena_int == 1) && (wea_int == 1) &&
	    (enb_int == 1) && (web_int == 1) &&
	    (data_addra_int[14:4] == data_addrb_int[14:4]))
	    memory_collision <= 1;
    end

    always @(posedge setup_all_a_b or posedge setup_rf_a_b) begin
	if ((ena_reg == 1) && (wea_reg == 1) &&
	    (enb_int == 1) && (web_int == 1) &&
	    (data_addra_reg[14:4] == data_addrb_int[14:4]))
	    memory_collision_a_b <= 1;
    end

    always @(posedge setup_all_b_a or posedge setup_rf_b_a) begin
	if ((ena_int == 1) && (wea_int == 1) &&
	    (enb_reg == 1) && (web_reg == 1) &&
	    (data_addra_int[14:4] == data_addrb_reg[14:4]))
	    memory_collision_b_a <= 1;
    end

    always @(posedge setup_all_a_b) begin
	if (data_addra_reg[14:4] == data_addrb_int[14:4]) begin
	if ((ena_reg == 1) && (enb_int == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_reg, web_int})
		6'b000011 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b000111 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b001011 : begin data_collision_a_b <= 2'b10; display_wa_wb; end
//		6'b010011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b010111 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b011011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
		6'b100011 : begin data_collision_a_b <= 2'b01; display_wa_wb; end
		6'b100111 : begin data_collision_a_b <= 2'b01; display_wa_wb; end
		6'b101011 : begin display_wa_wb; end
		6'b000001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
//		6'b000101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
		6'b001001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
		6'b010001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
//		6'b010101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
		6'b011001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
		6'b100001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
//		6'b100101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
		6'b101001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
		6'b000010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b000110 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b001010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
//		6'b010010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
		6'b100010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b100110 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b101010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
	    endcase
	end
	end
	setup_all_a_b <= 0;
    end


    always @(posedge setup_all_b_a) begin
	if (data_addra_int[14:4] == data_addrb_reg[14:4]) begin
	if ((ena_int == 1) && (enb_reg == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_int, web_reg})
		6'b000011 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b000111 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b001011 : begin data_collision_b_a <= 2'b10; display_wa_wb; end
		6'b010011 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b010111 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b011011 : begin data_collision_b_a <= 2'b10; display_wa_wb; end
		6'b100011 : begin data_collision_b_a <= 2'b01; display_wa_wb; end
		6'b100111 : begin data_collision_b_a <= 2'b01; display_wa_wb; end
		6'b101011 : begin display_wa_wb; end
		6'b000001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b000101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b001001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b010001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b010101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b011001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b100001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b100101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b101001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b000010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b000110 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b001010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
//		6'b010010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
		6'b100010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b100110 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b101010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
	    endcase
	end
	end
	setup_all_b_a <= 0;
    end


    always @(posedge setup_zero) begin
	if (data_addra_int[14:4] == data_addrb_int[14:4]) begin
	if ((ena_int == 1) && (enb_int == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_int, web_int})
		6'b000011 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b000111 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b001011 : begin data_collision <= 2'b10; display_wa_wb; end
		6'b010011 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b010111 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b011011 : begin data_collision <= 2'b10; display_wa_wb; end
		6'b100011 : begin data_collision <= 2'b01; display_wa_wb; end
		6'b100111 : begin data_collision <= 2'b01; display_wa_wb; end
		6'b101011 : begin display_wa_wb; end
		6'b000001 : begin data_collision <= 2'b10; display_ra_wb; end
//		6'b000101 : begin data_collision <= 2'b00; display_ra_wb; end
		6'b001001 : begin data_collision <= 2'b10; display_ra_wb; end
		6'b010001 : begin data_collision <= 2'b10; display_ra_wb; end
//		6'b010101 : begin data_collision <= 2'b00; display_ra_wb; end
		6'b011001 : begin data_collision <= 2'b10; display_ra_wb; end
		6'b100001 : begin data_collision <= 2'b10; display_ra_wb; end
//		6'b100101 : begin data_collision <= 2'b00; display_ra_wb; end
		6'b101001 : begin data_collision <= 2'b10; display_ra_wb; end
		6'b000010 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b000110 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b001010 : begin data_collision <= 2'b01; display_wa_rb; end
//		6'b010010 : begin data_collision <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision <= 2'b00; display_wa_rb; end
		6'b100010 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b100110 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b101010 : begin data_collision <= 2'b01; display_wa_rb; end
	    endcase
	end
	end
	setup_zero <= 0;
    end

    task display_ra_wb;
    begin
	if (display_flag)
        $display("Memory Collision Error on X_RAMB16_S18_S18:%m at simulation time %.3f ns\nA read was performed on address %h (hex) of Port A while a write was requested to the same address on Port B. The write will be successful however the read value on Port A is unknown until the next CLKA cycle.", $time/1000.0, addra_int);
    end
    endtask

    task display_wa_rb;
    begin
	if (display_flag)
        $display("Memory Collision Error on X_RAMB16_S18_S18:%m at simulation time %.3f ns\nA read was performed on address %h (hex) of Port B while a write was requested to the same address on Port A. The write will be successful however the read value on Port B is unknown until the next CLKB cycle.", $time/1000.0, addrb_int);
    end
    endtask

    task display_wa_wb;
    begin
	if (display_flag)
        $display("Memory Collision Error on X_RAMB16_S18_S18:%m at simulation time %.3f ns\nA write was requested to the same address simultaneously at both Port A and Port B of the RAM. The contents written to the RAM at address location %h (hex) of Port A and address location %h (hex) of Port B are unknown.", $time/1000.0, addra_int, addrb_int);
    end
    endtask


    always @(posedge setup_rf_a_b) begin
	if (data_addra_reg[14:4] == data_addrb_int[14:4]) begin
	if ((ena_reg == 1) && (enb_int == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_reg, web_int})
//		6'b000011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b000111 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b001011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
		6'b010011 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b010111 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b011011 : begin data_collision_a_b <= 2'b10; display_wa_wb; end
//		6'b100011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b100111 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b101011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b000001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b000101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b001001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b010001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b010101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b011001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b100001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b100101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b101001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b000010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b000110 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b001010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
		6'b010010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b010110 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b011010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
//		6'b100010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b100110 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b101010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
	    endcase
	end
	end
	setup_rf_a_b <= 0;
    end


    always @(posedge setup_rf_b_a) begin
	if (data_addra_int[14:4] == data_addrb_reg[14:4]) begin
	if ((ena_int == 1) && (enb_reg == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_int, web_reg})
//		6'b000011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b000111 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b001011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
//		6'b010011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b010111 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b011011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
//		6'b100011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b100111 : begin data_collision_b_a <= 2'b01; display_wa_wb; end
//		6'b101011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
//		6'b000001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
		6'b000101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
//		6'b001001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
//		6'b010001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
		6'b010101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
//		6'b011001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
//		6'b100001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
		6'b100101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
//		6'b101001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
//		6'b000010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b000110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b001010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b010010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b100010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b100110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b101010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
	    endcase
	end
	end
	setup_rf_b_a <= 0;
    end


    always @(posedge clka_int) begin
	addra_reg <= addra_int;
	ena_reg <= ena_int;
	ssra_reg <= ssra_int;
	wea_reg <= wea_int;
    end

    always @(posedge clkb_int) begin
	addrb_reg <= addrb_int;
	enb_reg <= enb_int;
	ssrb_reg <= ssrb_int;
	web_reg <= web_int;
    end

    // Data
    always @(posedge memory_collision) begin
	for (dmi = 0; dmi < 16; dmi = dmi + 1) begin
	    mem[data_addra_int + dmi] <= 1'bX;
	end
	memory_collision <= 0;
    end

    always @(posedge memory_collision_a_b) begin
	for (dmi = 0; dmi < 16; dmi = dmi + 1) begin
	    mem[data_addra_reg + dmi] <= 1'bX;
	end
	memory_collision_a_b <= 0;
    end

    always @(posedge memory_collision_b_a) begin
	for (dmi = 0; dmi < 16; dmi = dmi + 1) begin
	    mem[data_addra_int + dmi] <= 1'bX;
	end
	memory_collision_b_a <= 0;
    end

    always @(posedge data_collision[1]) begin
	if (ssra_int == 0) begin
	    doa_out <= 16'bX;
	end
	data_collision[1] <= 0;
    end

    always @(posedge data_collision[0]) begin
	if (ssrb_int == 0) begin
	    dob_out <= 16'bX;
	end
	data_collision[0] <= 0;
    end

    always @(posedge data_collision_a_b[1]) begin
	if (ssra_reg == 0) begin
	    doa_out <= 16'bX;
	end
	data_collision_a_b[1] <= 0;
    end

    always @(posedge data_collision_a_b[0]) begin
	if (ssrb_int == 0) begin
	    dob_out <= 16'bX;
	end
	data_collision_a_b[0] <= 0;
    end

    always @(posedge data_collision_b_a[1]) begin
	if (ssra_int == 0) begin
	    doa_out <= 16'bX;
	end
	data_collision_b_a[1] <= 0;
    end

    always @(posedge data_collision_b_a[0]) begin
	if (ssrb_reg == 0) begin
	dob_out <= 16'bX;
	end
	data_collision_b_a[0] <= 0;
    end

    // Parity
    always @(posedge memory_collision) begin
	for (pmi = 0; pmi < 2; pmi = pmi + 1) begin
	    mem[parity_addra_int + pmi] <= 1'bX;
	end
    end

    always @(posedge memory_collision_a_b) begin
	for (pmi = 0; pmi < 2; pmi = pmi + 1) begin
	    mem[parity_addra_reg + pmi] <= 1'bX;
	end
    end

    always @(posedge memory_collision_b_a) begin
	for (pmi = 0; pmi < 2; pmi = pmi + 1) begin
	    mem[parity_addra_int + pmi] <= 1'bX;
	end
    end

    always @(posedge data_collision[1]) begin
	if (ssra_int == 0) begin
	    dopa_out <= 2'bX;
	end
    end

    always @(posedge data_collision[0]) begin
	if (ssrb_int == 0) begin
	    dopb_out <= 2'bX;
	end
    end

    always @(posedge data_collision_a_b[1]) begin
	if (ssra_reg == 0) begin
	    dopa_out <= 2'bX;
	end
    end

    always @(posedge data_collision_a_b[0]) begin
	if (ssrb_int == 0) begin
	dopb_out <= 2'bX;
	end
    end

    always @(posedge data_collision_b_a[1]) begin
	if (ssra_int == 0) begin
	    dopa_out <= 2'bX;
	end
    end

    always @(posedge data_collision_b_a[0]) begin
	if (ssrb_reg == 0) begin
	    dopb_out <= 2'bX;
	end
    end


    initial begin
	case (WRITE_MODE_A)
	    "WRITE_FIRST" : wr_mode_a <= 2'b00;
	    "READ_FIRST"  : wr_mode_a <= 2'b01;
	    "NO_CHANGE"   : wr_mode_a <= 2'b10;
	    default       : begin
				$display("Attribute Syntax Error : The Attribute WRITE_MODE_A on X_RAMB16_S18_S18 instance %m is set to %s.  Legal values for this attribute are WRITE_FIRST, READ_FIRST or NO_CHANGE.", WRITE_MODE_A);
				$finish;
			    end
	endcase
    end

    initial begin
	case (WRITE_MODE_B)
	    "WRITE_FIRST" : wr_mode_b <= 2'b00;
	    "READ_FIRST"  : wr_mode_b <= 2'b01;
	    "NO_CHANGE"   : wr_mode_b <= 2'b10;
	    default       : begin
				$display("Attribute Syntax Error : The Attribute WRITE_MODE_B on X_RAMB16_S18_S18 instance %m is set to %s.  Legal values for this attribute are WRITE_FIRST, READ_FIRST or NO_CHANGE.", WRITE_MODE_B);
				$finish;
			    end
	endcase
    end

    // Port A
    always @(posedge clka_int) begin
	if (ena_int == 1'b1) begin
	    if (ssra_int == 1'b1) begin
		doa_out[0] <= SRVAL_A[0];
		doa_out[1] <= SRVAL_A[1];
		doa_out[2] <= SRVAL_A[2];
		doa_out[3] <= SRVAL_A[3];
		doa_out[4] <= SRVAL_A[4];
		doa_out[5] <= SRVAL_A[5];
		doa_out[6] <= SRVAL_A[6];
		doa_out[7] <= SRVAL_A[7];
		doa_out[8] <= SRVAL_A[8];
		doa_out[9] <= SRVAL_A[9];
		doa_out[10] <= SRVAL_A[10];
		doa_out[11] <= SRVAL_A[11];
		doa_out[12] <= SRVAL_A[12];
		doa_out[13] <= SRVAL_A[13];
		doa_out[14] <= SRVAL_A[14];
		doa_out[15] <= SRVAL_A[15];
		dopa_out[0] <= SRVAL_A[16];
		dopa_out[1] <= SRVAL_A[17];
	    end
	    else begin
		if (wea_int == 1'b1) begin
		    if (wr_mode_a == 2'b00) begin
			doa_out <= dia_int;
			dopa_out <= dipa_int;
		    end
		    else if (wr_mode_a == 2'b01) begin
			doa_out[0] <= mem[data_addra_int + 0];
			doa_out[1] <= mem[data_addra_int + 1];
			doa_out[2] <= mem[data_addra_int + 2];
			doa_out[3] <= mem[data_addra_int + 3];
			doa_out[4] <= mem[data_addra_int + 4];
			doa_out[5] <= mem[data_addra_int + 5];
			doa_out[6] <= mem[data_addra_int + 6];
			doa_out[7] <= mem[data_addra_int + 7];
			doa_out[8] <= mem[data_addra_int + 8];
			doa_out[9] <= mem[data_addra_int + 9];
			doa_out[10] <= mem[data_addra_int + 10];
			doa_out[11] <= mem[data_addra_int + 11];
			doa_out[12] <= mem[data_addra_int + 12];
			doa_out[13] <= mem[data_addra_int + 13];
			doa_out[14] <= mem[data_addra_int + 14];
			doa_out[15] <= mem[data_addra_int + 15];
			dopa_out[0] <= mem[parity_addra_int + 0];
			dopa_out[1] <= mem[parity_addra_int + 1];
		    end
		end
		else begin
		    doa_out[0] <= mem[data_addra_int + 0];
		    doa_out[1] <= mem[data_addra_int + 1];
		    doa_out[2] <= mem[data_addra_int + 2];
		    doa_out[3] <= mem[data_addra_int + 3];
		    doa_out[4] <= mem[data_addra_int + 4];
		    doa_out[5] <= mem[data_addra_int + 5];
		    doa_out[6] <= mem[data_addra_int + 6];
		    doa_out[7] <= mem[data_addra_int + 7];
		    doa_out[8] <= mem[data_addra_int + 8];
		    doa_out[9] <= mem[data_addra_int + 9];
		    doa_out[10] <= mem[data_addra_int + 10];
		    doa_out[11] <= mem[data_addra_int + 11];
		    doa_out[12] <= mem[data_addra_int + 12];
		    doa_out[13] <= mem[data_addra_int + 13];
		    doa_out[14] <= mem[data_addra_int + 14];
		    doa_out[15] <= mem[data_addra_int + 15];
		    dopa_out[0] <= mem[parity_addra_int + 0];
		    dopa_out[1] <= mem[parity_addra_int + 1];
		end
	    end
	end
    end

    always @(posedge clka_int) begin
	if (ena_int == 1'b1 && wea_int == 1'b1) begin
	    mem[data_addra_int + 0] <= dia_int[0];
	    mem[data_addra_int + 1] <= dia_int[1];
	    mem[data_addra_int + 2] <= dia_int[2];
	    mem[data_addra_int + 3] <= dia_int[3];
	    mem[data_addra_int + 4] <= dia_int[4];
	    mem[data_addra_int + 5] <= dia_int[5];
	    mem[data_addra_int + 6] <= dia_int[6];
	    mem[data_addra_int + 7] <= dia_int[7];
	    mem[data_addra_int + 8] <= dia_int[8];
	    mem[data_addra_int + 9] <= dia_int[9];
	    mem[data_addra_int + 10] <= dia_int[10];
	    mem[data_addra_int + 11] <= dia_int[11];
	    mem[data_addra_int + 12] <= dia_int[12];
	    mem[data_addra_int + 13] <= dia_int[13];
	    mem[data_addra_int + 14] <= dia_int[14];
	    mem[data_addra_int + 15] <= dia_int[15];
	    mem[parity_addra_int + 0] <= dipa_int[0];
	    mem[parity_addra_int + 1] <= dipa_int[1];
	end
    end

    // Port B
    always @(posedge clkb_int) begin
	if (enb_int == 1'b1) begin
	    if (ssrb_int == 1'b1) begin
		dob_out[0] <= SRVAL_B[0];
		dob_out[1] <= SRVAL_B[1];
		dob_out[2] <= SRVAL_B[2];
		dob_out[3] <= SRVAL_B[3];
		dob_out[4] <= SRVAL_B[4];
		dob_out[5] <= SRVAL_B[5];
		dob_out[6] <= SRVAL_B[6];
		dob_out[7] <= SRVAL_B[7];
		dob_out[8] <= SRVAL_B[8];
		dob_out[9] <= SRVAL_B[9];
		dob_out[10] <= SRVAL_B[10];
		dob_out[11] <= SRVAL_B[11];
		dob_out[12] <= SRVAL_B[12];
		dob_out[13] <= SRVAL_B[13];
		dob_out[14] <= SRVAL_B[14];
		dob_out[15] <= SRVAL_B[15];
		dopb_out[0] <= SRVAL_B[16];
		dopb_out[1] <= SRVAL_B[17];
	    end
	    else begin
		if (web_int == 1'b1) begin
		    if (wr_mode_b == 2'b00) begin
			dob_out <= dib_int;
			dopb_out <= dipb_int;
		    end
		    else if (wr_mode_b == 2'b01) begin
			dob_out[0] <= mem[data_addrb_int + 0];
			dob_out[1] <= mem[data_addrb_int + 1];
			dob_out[2] <= mem[data_addrb_int + 2];
			dob_out[3] <= mem[data_addrb_int + 3];
			dob_out[4] <= mem[data_addrb_int + 4];
			dob_out[5] <= mem[data_addrb_int + 5];
			dob_out[6] <= mem[data_addrb_int + 6];
			dob_out[7] <= mem[data_addrb_int + 7];
			dob_out[8] <= mem[data_addrb_int + 8];
			dob_out[9] <= mem[data_addrb_int + 9];
			dob_out[10] <= mem[data_addrb_int + 10];
			dob_out[11] <= mem[data_addrb_int + 11];
			dob_out[12] <= mem[data_addrb_int + 12];
			dob_out[13] <= mem[data_addrb_int + 13];
			dob_out[14] <= mem[data_addrb_int + 14];
			dob_out[15] <= mem[data_addrb_int + 15];
			dopb_out[0] <= mem[parity_addrb_int + 0];
			dopb_out[1] <= mem[parity_addrb_int + 1];
		    end
		end
		else begin
		    dob_out[0] <= mem[data_addrb_int + 0];
		    dob_out[1] <= mem[data_addrb_int + 1];
		    dob_out[2] <= mem[data_addrb_int + 2];
		    dob_out[3] <= mem[data_addrb_int + 3];
		    dob_out[4] <= mem[data_addrb_int + 4];
		    dob_out[5] <= mem[data_addrb_int + 5];
		    dob_out[6] <= mem[data_addrb_int + 6];
		    dob_out[7] <= mem[data_addrb_int + 7];
		    dob_out[8] <= mem[data_addrb_int + 8];
		    dob_out[9] <= mem[data_addrb_int + 9];
		    dob_out[10] <= mem[data_addrb_int + 10];
		    dob_out[11] <= mem[data_addrb_int + 11];
		    dob_out[12] <= mem[data_addrb_int + 12];
		    dob_out[13] <= mem[data_addrb_int + 13];
		    dob_out[14] <= mem[data_addrb_int + 14];
		    dob_out[15] <= mem[data_addrb_int + 15];
		    dopb_out[0] <= mem[parity_addrb_int + 0];
		    dopb_out[1] <= mem[parity_addrb_int + 1];
		end
	    end
	end
    end

    always @(posedge clkb_int) begin
	if (enb_int == 1'b1 && web_int == 1'b1) begin
	    mem[data_addrb_int + 0] <= dib_int[0];
	    mem[data_addrb_int + 1] <= dib_int[1];
	    mem[data_addrb_int + 2] <= dib_int[2];
	    mem[data_addrb_int + 3] <= dib_int[3];
	    mem[data_addrb_int + 4] <= dib_int[4];
	    mem[data_addrb_int + 5] <= dib_int[5];
	    mem[data_addrb_int + 6] <= dib_int[6];
	    mem[data_addrb_int + 7] <= dib_int[7];
	    mem[data_addrb_int + 8] <= dib_int[8];
	    mem[data_addrb_int + 9] <= dib_int[9];
	    mem[data_addrb_int + 10] <= dib_int[10];
	    mem[data_addrb_int + 11] <= dib_int[11];
	    mem[data_addrb_int + 12] <= dib_int[12];
	    mem[data_addrb_int + 13] <= dib_int[13];
	    mem[data_addrb_int + 14] <= dib_int[14];
	    mem[data_addrb_int + 15] <= dib_int[15];
	    mem[parity_addrb_int + 0] <= dipb_int[0];
	    mem[parity_addrb_int + 1] <= dipb_int[1];
	end
    end

    always @(notifier or notifier_a) begin
	doa_out[0] <= 1'bx;
	doa_out[1] <= 1'bx;
	doa_out[2] <= 1'bx;
	doa_out[3] <= 1'bx;
	doa_out[4] <= 1'bx;
	doa_out[5] <= 1'bx;
	doa_out[6] <= 1'bx;
	doa_out[7] <= 1'bx;
	doa_out[8] <= 1'bx;
	doa_out[9] <= 1'bx;
	doa_out[10] <= 1'bx;
	doa_out[11] <= 1'bx;
	doa_out[12] <= 1'bx;
	doa_out[13] <= 1'bx;
	doa_out[14] <= 1'bx;
	doa_out[15] <= 1'bx;
	dopa_out[0] <= 1'bx;
	dopa_out[1] <= 1'bx;
    end 

    always @(notifier or notifier_b) begin
	dob_out[0] <= 1'bx;
	dob_out[1] <= 1'bx;
	dob_out[2] <= 1'bx;
	dob_out[3] <= 1'bx;
	dob_out[4] <= 1'bx;
	dob_out[5] <= 1'bx;
	dob_out[6] <= 1'bx;
	dob_out[7] <= 1'bx;
	dob_out[8] <= 1'bx;
	dob_out[9] <= 1'bx;
	dob_out[10] <= 1'bx;
	dob_out[11] <= 1'bx;
	dob_out[12] <= 1'bx;
	dob_out[13] <= 1'bx;
	dob_out[14] <= 1'bx;
	dob_out[15] <= 1'bx;
	dopb_out[0] <= 1'bx;
	dopb_out[1] <= 1'bx;
    end

    specify

        (CLKA => DOA[0]) = (100:100:100, 100:100:100);
        (CLKA => DOA[1]) = (100:100:100, 100:100:100);
        (CLKA => DOA[2]) = (100:100:100, 100:100:100);
        (CLKA => DOA[3]) = (100:100:100, 100:100:100);
        (CLKA => DOA[4]) = (100:100:100, 100:100:100);
        (CLKA => DOA[5]) = (100:100:100, 100:100:100);
        (CLKA => DOA[6]) = (100:100:100, 100:100:100);
        (CLKA => DOA[7]) = (100:100:100, 100:100:100);
        (CLKA => DOA[8]) = (100:100:100, 100:100:100);
        (CLKA => DOA[9]) = (100:100:100, 100:100:100);
        (CLKA => DOA[10]) = (100:100:100, 100:100:100);
        (CLKA => DOA[11]) = (100:100:100, 100:100:100);
        (CLKA => DOA[12]) = (100:100:100, 100:100:100);
        (CLKA => DOA[13]) = (100:100:100, 100:100:100);
        (CLKA => DOA[14]) = (100:100:100, 100:100:100);
        (CLKA => DOA[15]) = (100:100:100, 100:100:100);
        (CLKA => DOPA[0]) = (100:100:100, 100:100:100);
        (CLKA => DOPA[1]) = (100:100:100, 100:100:100);
        (CLKB => DOB[0]) = (100:100:100, 100:100:100);
        (CLKB => DOB[1]) = (100:100:100, 100:100:100);
        (CLKB => DOB[2]) = (100:100:100, 100:100:100);
        (CLKB => DOB[3]) = (100:100:100, 100:100:100);
        (CLKB => DOB[4]) = (100:100:100, 100:100:100);
        (CLKB => DOB[5]) = (100:100:100, 100:100:100);
        (CLKB => DOB[6]) = (100:100:100, 100:100:100);
        (CLKB => DOB[7]) = (100:100:100, 100:100:100);
        (CLKB => DOB[8]) = (100:100:100, 100:100:100);
        (CLKB => DOB[9]) = (100:100:100, 100:100:100);
        (CLKB => DOB[10]) = (100:100:100, 100:100:100);
        (CLKB => DOB[11]) = (100:100:100, 100:100:100);
        (CLKB => DOB[12]) = (100:100:100, 100:100:100);
        (CLKB => DOB[13]) = (100:100:100, 100:100:100);
        (CLKB => DOB[14]) = (100:100:100, 100:100:100);
        (CLKB => DOB[15]) = (100:100:100, 100:100:100);
        (CLKB => DOPB[0]) = (100:100:100, 100:100:100);
        (CLKB => DOPB[1]) = (100:100:100, 100:100:100);

       	$setuphold (posedge CLKA, posedge ADDRA[0] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[0] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[1] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[1] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[2] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[2] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[3] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[3] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[4] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[4] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[5] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[5] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[6] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[6] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[7] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[7] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[8] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[8] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[9] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[9] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[2] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[2] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[3] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[3] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[4] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[4] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[5] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[5] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[6] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[6] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[7] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[7] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[8] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[8] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[9] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[9] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[10] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[10] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[11] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[11] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[12] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[12] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[13] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[13] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[14] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[14] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[15] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[15] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIPA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIPA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIPA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIPA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge SSRA &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge SSRA &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge WEA &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge WEA &&& ENA, 0:0:0, 0:0:0, notifier_a);

       	$setuphold (posedge CLKB, posedge ADDRB[0] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[0] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[1] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[1] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[2] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[2] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[3] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[3] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[4] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[4] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[5] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[5] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[6] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[6] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[7] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[7] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[8] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[8] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[9] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[9] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[2] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[2] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[3] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[3] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[4] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[4] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[5] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[5] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[6] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[6] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[7] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[7] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[8] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[8] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[9] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[9] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[10] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[10] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[11] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[11] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[12] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[12] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[13] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[13] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[14] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[14] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[15] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[15] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIPB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIPB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIPB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIPB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge SSRB &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge SSRB &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge WEB &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge WEB &&& ENB, 0:0:0, 0:0:0, notifier_b);

        $width (posedge CLKA &&& ENA, 0:0:0, 0, notifier_a);
        $width (negedge CLKA &&& ENA, 0:0:0, 0, notifier_a);
        $width (posedge CLKB &&& ENB, 0:0:0, 0, notifier_b);
        $width (negedge CLKB &&& ENB, 0:0:0, 0, notifier_b);

	specparam PATHPULSE$ = 0;

    endspecify

endmodule

`else

// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_RAMB16_S18_S18.v,v 1.10 2005/05/11 21:15:29 wloo Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  16K-Bit Data and 2K-Bit Parity Dual Port Block RAM
// /___/   /\     Filename : X_RAMB16_S18_S18.v
// \   \  /  \    Timestamp : Thu Mar 10 16:44:01 PST 2005
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/10/05 - Added LOC parameter, removed GSR port and initialized outputs.
// End Revision

`timescale 1 ps/1 ps

module X_RAMB16_S18_S18 (DOA, DOB, DOPA, DOPB, ADDRA, ADDRB, CLKA, CLKB, DIA, DIB, DIPA, DIPB, ENA, ENB, SSRA, SSRB, WEA, WEB);

    parameter INIT_A = 18'h0;
    parameter INIT_B = 18'h0;
    parameter LOC = "UNPLACED";
    parameter SRVAL_A = 18'h0;
    parameter SRVAL_B = 18'h0;
    parameter WRITE_MODE_A = "WRITE_FIRST";
    parameter WRITE_MODE_B = "WRITE_FIRST";
    parameter SIM_COLLISION_CHECK = "ALL";
    parameter SETUP_ALL = 1000;
    parameter SETUP_READ_FIRST = 3000;

    parameter INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

    output [15:0] DOA;
    output [1:0] DOPA;
    output [15:0] DOB;
    output [1:0] DOPB;

    input [9:0] ADDRA;
    input [15:0] DIA;
    input [1:0] DIPA;
    input ENA, CLKA, WEA, SSRA;
    input [9:0] ADDRB;
    input [15:0] DIB;
    input [1:0] DIPB;
    input ENB, CLKB, WEB, SSRB;

    reg [15:0] doa_out = INIT_A[15:0];
    reg [1:0] dopa_out = INIT_A[17:16];
    reg [15:0] dob_out = INIT_B[15:0];
    reg [1:0] dopb_out = INIT_B[17:16];
    
    reg [15:0] mem [1023:0];
    reg [1:0] memp [1023:0];
    
    reg [8:0] count, countp;
    reg [1:0] wr_mode_a, wr_mode_b;

    reg [5:0] dmi, dbi;
    reg [5:0] pmi, pbi;

    wire [9:0] addra_int;
    reg [9:0] addra_reg;
    wire [15:0] dia_int;
    wire [1:0] dipa_int;
    wire ena_int, clka_int, wea_int, ssra_int;
    reg ena_reg, wea_reg, ssra_reg;
    wire [9:0] addrb_int;
    reg [9:0] addrb_reg;
    wire [15:0] dib_int;
    wire [1:0] dipb_int;
    wire enb_int, clkb_int, web_int, ssrb_int;
    reg display_flag, output_flag;
    reg enb_reg, web_reg, ssrb_reg;

    time time_clka, time_clkb;
    time time_clka_clkb;
    time time_clkb_clka;

    reg setup_all_a_b;
    reg setup_all_b_a;
    reg setup_zero;
    reg setup_rf_a_b;
    reg setup_rf_b_a;
    reg [1:0] data_collision, data_collision_a_b, data_collision_b_a;
    reg memory_collision, memory_collision_a_b, memory_collision_b_a;
    reg change_clka;
    reg change_clkb;

    wire [14:0] data_addra_int;
    wire [14:0] data_addra_reg;
    wire [14:0] data_addrb_int;
    wire [14:0] data_addrb_reg;

    wire dia_enable = ena_int && wea_int;
    wire dib_enable = enb_int && web_int;
    reg notifier, notifier_a, notifier_b;

    tri0 GSR = glbl.GSR;
    wire gsr_int;

    buf b_gsr (gsr_int, GSR);

    buf b_doa [15:0] (DOA, doa_out);
    buf b_dopa [1:0] (DOPA, dopa_out);
    buf b_addra [9:0] (addra_int, ADDRA);
    buf b_dia [15:0] (dia_int, DIA);
    buf b_dipa [1:0] (dipa_int, DIPA);
    buf b_ena (ena_int, ENA);
    buf b_clka (clka_int, CLKA);
    buf b_ssra (ssra_int, SSRA);
    buf b_wea (wea_int, WEA);

    buf b_dob [15:0] (DOB, dob_out);
    buf b_dopb [1:0] (DOPB, dopb_out);
    buf b_addrb [9:0] (addrb_int, ADDRB);
    buf b_dib [15:0] (dib_int, DIB);
    buf b_dipb [1:0] (dipb_int, DIPB);
    buf b_enb (enb_int, ENB);
    buf b_clkb (clkb_int, CLKB);
    buf b_ssrb (ssrb_int, SSRB);
    buf b_web (web_int, WEB);

    
    always @(gsr_int)
	if (gsr_int) begin
	    assign {dopa_out, doa_out} = INIT_A;
	    assign {dopb_out, dob_out} = INIT_B;
	end
	else begin
	    deassign doa_out;
	    deassign dopa_out;
	    deassign dob_out;
	    deassign dopb_out;
	end

    
    initial begin

	for (count = 0; count < 16; count = count + 1) begin
	    mem[count]          = INIT_00[(count * 16) +: 16];
	    mem[16 * 1 + count]  = INIT_01[(count * 16) +: 16];
	    mem[16 * 2 + count]  = INIT_02[(count * 16) +: 16];
	    mem[16 * 3 + count]  = INIT_03[(count * 16) +: 16];
	    mem[16 * 4 + count]  = INIT_04[(count * 16) +: 16];
	    mem[16 * 5 + count]  = INIT_05[(count * 16) +: 16];
	    mem[16 * 6 + count]  = INIT_06[(count * 16) +: 16];
	    mem[16 * 7 + count]  = INIT_07[(count * 16) +: 16];
	    mem[16 * 8 + count]  = INIT_08[(count * 16) +: 16];
	    mem[16 * 9 + count]  = INIT_09[(count * 16) +: 16];
	    mem[16 * 10 + count] = INIT_0A[(count * 16) +: 16];
	    mem[16 * 11 + count] = INIT_0B[(count * 16) +: 16];
	    mem[16 * 12 + count] = INIT_0C[(count * 16) +: 16];
	    mem[16 * 13 + count] = INIT_0D[(count * 16) +: 16];
	    mem[16 * 14 + count] = INIT_0E[(count * 16) +: 16];
	    mem[16 * 15 + count] = INIT_0F[(count * 16) +: 16];
	    mem[16 * 16 + count] = INIT_10[(count * 16) +: 16];
	    mem[16 * 17 + count] = INIT_11[(count * 16) +: 16];
	    mem[16 * 18 + count] = INIT_12[(count * 16) +: 16];
	    mem[16 * 19 + count] = INIT_13[(count * 16) +: 16];
	    mem[16 * 20 + count] = INIT_14[(count * 16) +: 16];
	    mem[16 * 21 + count] = INIT_15[(count * 16) +: 16];
	    mem[16 * 22 + count] = INIT_16[(count * 16) +: 16];
	    mem[16 * 23 + count] = INIT_17[(count * 16) +: 16];
	    mem[16 * 24 + count] = INIT_18[(count * 16) +: 16];
	    mem[16 * 25 + count] = INIT_19[(count * 16) +: 16];
	    mem[16 * 26 + count] = INIT_1A[(count * 16) +: 16];
	    mem[16 * 27 + count] = INIT_1B[(count * 16) +: 16];
	    mem[16 * 28 + count] = INIT_1C[(count * 16) +: 16];
	    mem[16 * 29 + count] = INIT_1D[(count * 16) +: 16];
	    mem[16 * 30 + count] = INIT_1E[(count * 16) +: 16];
	    mem[16 * 31 + count] = INIT_1F[(count * 16) +: 16];
	    mem[16 * 32 + count] = INIT_20[(count * 16) +: 16];
	    mem[16 * 33 + count] = INIT_21[(count * 16) +: 16];
	    mem[16 * 34 + count] = INIT_22[(count * 16) +: 16];
	    mem[16 * 35 + count] = INIT_23[(count * 16) +: 16];
	    mem[16 * 36 + count] = INIT_24[(count * 16) +: 16];
	    mem[16 * 37 + count] = INIT_25[(count * 16) +: 16];
	    mem[16 * 38 + count] = INIT_26[(count * 16) +: 16];
	    mem[16 * 39 + count] = INIT_27[(count * 16) +: 16];
	    mem[16 * 40 + count] = INIT_28[(count * 16) +: 16];
	    mem[16 * 41 + count] = INIT_29[(count * 16) +: 16];
	    mem[16 * 42 + count] = INIT_2A[(count * 16) +: 16];
	    mem[16 * 43 + count] = INIT_2B[(count * 16) +: 16];
	    mem[16 * 44 + count] = INIT_2C[(count * 16) +: 16];
	    mem[16 * 45 + count] = INIT_2D[(count * 16) +: 16];
	    mem[16 * 46 + count] = INIT_2E[(count * 16) +: 16];
	    mem[16 * 47 + count] = INIT_2F[(count * 16) +: 16];
	    mem[16 * 48 + count] = INIT_30[(count * 16) +: 16];
	    mem[16 * 49 + count] = INIT_31[(count * 16) +: 16];
	    mem[16 * 50 + count] = INIT_32[(count * 16) +: 16];
	    mem[16 * 51 + count] = INIT_33[(count * 16) +: 16];
	    mem[16 * 52 + count] = INIT_34[(count * 16) +: 16];
	    mem[16 * 53 + count] = INIT_35[(count * 16) +: 16];
	    mem[16 * 54 + count] = INIT_36[(count * 16) +: 16];
	    mem[16 * 55 + count] = INIT_37[(count * 16) +: 16];
	    mem[16 * 56 + count] = INIT_38[(count * 16) +: 16];
	    mem[16 * 57 + count] = INIT_39[(count * 16) +: 16];
	    mem[16 * 58 + count] = INIT_3A[(count * 16) +: 16];
	    mem[16 * 59 + count] = INIT_3B[(count * 16) +: 16];
	    mem[16 * 60 + count] = INIT_3C[(count * 16) +: 16];
	    mem[16 * 61 + count] = INIT_3D[(count * 16) +: 16];
	    mem[16 * 62 + count] = INIT_3E[(count * 16) +: 16];
	    mem[16 * 63 + count] = INIT_3F[(count * 16) +: 16];
	end

// initiate parity start
	for (countp = 0; countp < 128; countp = countp + 1) begin
	    memp[countp]          = INITP_00[(countp * 2) +: 2];
	    memp[128 * 1 + countp] = INITP_01[(countp * 2) +: 2];
	    memp[128 * 2 + countp] = INITP_02[(countp * 2) +: 2];
	    memp[128 * 3 + countp] = INITP_03[(countp * 2) +: 2];
	    memp[128 * 4 + countp] = INITP_04[(countp * 2) +: 2];
	    memp[128 * 5 + countp] = INITP_05[(countp * 2) +: 2];
	    memp[128 * 6 + countp] = INITP_06[(countp * 2) +: 2];
	    memp[128 * 7 + countp] = INITP_07[(countp * 2) +: 2];
	end
// initiate parity end
	
	change_clka <= 0;
	change_clkb <= 0;
	data_collision <= 0;
	data_collision_a_b <= 0;
	data_collision_b_a <= 0;
	memory_collision <= 0;
	memory_collision_a_b <= 0;
	memory_collision_b_a <= 0;
	setup_all_a_b <= 0;
	setup_all_b_a <= 0;
	setup_zero <= 0;
	setup_rf_a_b <= 0;
	setup_rf_b_a <= 0;
    end

    assign data_addra_int = addra_int * 16;
    assign data_addra_reg = addra_reg * 16;
    assign data_addrb_int = addrb_int * 16;
    assign data_addrb_reg = addrb_reg * 16;


    initial begin

	display_flag = 1;
	output_flag = 1;
	
	case (SIM_COLLISION_CHECK)

	    "NONE" : begin
		         output_flag = 0;
	                 display_flag = 0;
	             end
	    "WARNING_ONLY" : output_flag = 0;
	    "GENERATE_X_ONLY" : display_flag = 0;
	    "ALL" : ;

	    default : begin
		          $display("Attribute Syntax Error : The Attribute SIM_COLLISION_CHECK on X_RAMB16_S18_S18 instance %m is set to %s.  Legal values for this attribute are ALL, NONE, WARNING_ONLY or GENERATE_X_ONLY.", SIM_COLLISION_CHECK);
		          $finish;
	              end

	endcase // case(SIM_COLLISION_CHECK)

    end // initial begin

    
    always @(posedge clka_int) begin
	if ((output_flag || display_flag)) begin
	    time_clka = $time;
	    #0 time_clkb_clka = time_clka - time_clkb;
	    change_clka = ~change_clka;
	end
    end
    
    always @(posedge clkb_int) begin
	if ((output_flag || display_flag)) begin
	    time_clkb = $time;
	    #0 time_clka_clkb = time_clkb - time_clka;
	    change_clkb = ~change_clkb;
	end
    end
    
    always @(change_clkb) begin
	if ((0 < time_clka_clkb) && (time_clka_clkb < SETUP_ALL))
	    setup_all_a_b = 1;
	if ((0 < time_clka_clkb) && (time_clka_clkb < SETUP_READ_FIRST))
	    setup_rf_a_b = 1;
    end

    always @(change_clka) begin
	if ((0 < time_clkb_clka) && (time_clkb_clka < SETUP_ALL))
	    setup_all_b_a = 1;
	if ((0 < time_clkb_clka) && (time_clkb_clka < SETUP_READ_FIRST))
	    setup_rf_b_a = 1;
    end

    always @(change_clkb or change_clka) begin
	if ((time_clkb_clka == 0) && (time_clka_clkb == 0))
	    setup_zero = 1;
    end

    always @(posedge setup_zero) begin
	if ((ena_int == 1) && (wea_int == 1) &&
	    (enb_int == 1) && (web_int == 1) &&
	    (data_addra_int[14:4] == data_addrb_int[14:4]))
	    memory_collision <= 1;
    end

    always @(posedge setup_all_a_b or posedge setup_rf_a_b) begin
	if ((ena_reg == 1) && (wea_reg == 1) &&
	    (enb_int == 1) && (web_int == 1) &&
	    (data_addra_reg[14:4] == data_addrb_int[14:4]))
	    memory_collision_a_b <= 1;
    end

    always @(posedge setup_all_b_a or posedge setup_rf_b_a) begin
	if ((ena_int == 1) && (wea_int == 1) &&
	    (enb_reg == 1) && (web_reg == 1) &&
	    (data_addra_int[14:4] == data_addrb_reg[14:4]))
	    memory_collision_b_a <= 1;
    end

    always @(posedge setup_all_a_b) begin
	if (data_addra_reg[14:4] == data_addrb_int[14:4]) begin
	if ((ena_reg == 1) && (enb_int == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_reg, web_int})
		6'b000011 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b000111 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b001011 : begin data_collision_a_b <= 2'b10; display_wa_wb; end
//		6'b010011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b010111 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b011011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
		6'b100011 : begin data_collision_a_b <= 2'b01; display_wa_wb; end
		6'b100111 : begin data_collision_a_b <= 2'b01; display_wa_wb; end
		6'b101011 : begin display_wa_wb; end
		6'b000001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
//		6'b000101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
		6'b001001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
		6'b010001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
//		6'b010101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
		6'b011001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
		6'b100001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
//		6'b100101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
		6'b101001 : begin data_collision_a_b <= 2'b10; display_ra_wb; end
		6'b000010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b000110 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b001010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
//		6'b010010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
		6'b100010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b100110 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b101010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
	    endcase
	end
	end
	setup_all_a_b <= 0;
    end


    always @(posedge setup_all_b_a) begin
	if (data_addra_int[14:4] == data_addrb_reg[14:4]) begin
	if ((ena_int == 1) && (enb_reg == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_int, web_reg})
		6'b000011 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b000111 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b001011 : begin data_collision_b_a <= 2'b10; display_wa_wb; end
		6'b010011 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b010111 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b011011 : begin data_collision_b_a <= 2'b10; display_wa_wb; end
		6'b100011 : begin data_collision_b_a <= 2'b01; display_wa_wb; end
		6'b100111 : begin data_collision_b_a <= 2'b01; display_wa_wb; end
		6'b101011 : begin display_wa_wb; end
		6'b000001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b000101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b001001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b010001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b010101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b011001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b100001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b100101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b101001 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
		6'b000010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b000110 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b001010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
//		6'b010010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
		6'b100010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b100110 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
		6'b101010 : begin data_collision_b_a <= 2'b01; display_wa_rb; end
	    endcase
	end
	end
	setup_all_b_a <= 0;
    end


    always @(posedge setup_zero) begin
	if (data_addra_int[14:4] == data_addrb_int[14:4]) begin
	if ((ena_int == 1) && (enb_int == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_int, web_int})
		6'b000011 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b000111 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b001011 : begin data_collision <= 2'b10; display_wa_wb; end
		6'b010011 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b010111 : begin data_collision <= 2'b11; display_wa_wb; end
		6'b011011 : begin data_collision <= 2'b10; display_wa_wb; end
		6'b100011 : begin data_collision <= 2'b01; display_wa_wb; end
		6'b100111 : begin data_collision <= 2'b01; display_wa_wb; end
		6'b101011 : begin display_wa_wb; end
		6'b000001 : begin data_collision <= 2'b10; display_ra_wb; end
//		6'b000101 : begin data_collision <= 2'b00; display_ra_wb; end
		6'b001001 : begin data_collision <= 2'b10; display_ra_wb; end
		6'b010001 : begin data_collision <= 2'b10; display_ra_wb; end
//		6'b010101 : begin data_collision <= 2'b00; display_ra_wb; end
		6'b011001 : begin data_collision <= 2'b10; display_ra_wb; end
		6'b100001 : begin data_collision <= 2'b10; display_ra_wb; end
//		6'b100101 : begin data_collision <= 2'b00; display_ra_wb; end
		6'b101001 : begin data_collision <= 2'b10; display_ra_wb; end
		6'b000010 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b000110 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b001010 : begin data_collision <= 2'b01; display_wa_rb; end
//		6'b010010 : begin data_collision <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision <= 2'b00; display_wa_rb; end
		6'b100010 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b100110 : begin data_collision <= 2'b01; display_wa_rb; end
		6'b101010 : begin data_collision <= 2'b01; display_wa_rb; end
	    endcase
	end
	end
	setup_zero <= 0;
    end

    task display_ra_wb;
    begin
	if (display_flag)
        $display("Memory Collision Error on X_RAMB16_S18_S18:%m at simulation time %.3f ns\nA read was performed on address %h (hex) of Port A while a write was requested to the same address on Port B. The write will be successful however the read value on Port A is unknown until the next CLKA cycle.", $time/1000.0, addra_int);
    end
    endtask

    task display_wa_rb;
    begin
	if (display_flag)
        $display("Memory Collision Error on X_RAMB16_S18_S18:%m at simulation time %.3f ns\nA read was performed on address %h (hex) of Port B while a write was requested to the same address on Port A. The write will be successful however the read value on Port B is unknown until the next CLKB cycle.", $time/1000.0, addrb_int);
    end
    endtask

    task display_wa_wb;
    begin
	if (display_flag)
        $display("Memory Collision Error on X_RAMB16_S18_S18:%m at simulation time %.3f ns\nA write was requested to the same address simultaneously at both Port A and Port B of the RAM. The contents written to the RAM at address location %h (hex) of Port A and address location %h (hex) of Port B are unknown.", $time/1000.0, addra_int, addrb_int);
    end
    endtask


    always @(posedge setup_rf_a_b) begin
	if (data_addra_reg[14:4] == data_addrb_int[14:4]) begin
	if ((ena_reg == 1) && (enb_int == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_reg, web_int})
//		6'b000011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b000111 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b001011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
		6'b010011 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b010111 : begin data_collision_a_b <= 2'b11; display_wa_wb; end
		6'b011011 : begin data_collision_a_b <= 2'b10; display_wa_wb; end
//		6'b100011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b100111 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b101011 : begin data_collision_a_b <= 2'b00; display_wa_wb; end
//		6'b000001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b000101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b001001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b010001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b010101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b011001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b100001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b100101 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b101001 : begin data_collision_a_b <= 2'b00; display_ra_wb; end
//		6'b000010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b000110 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b001010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
		6'b010010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b010110 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
		6'b011010 : begin data_collision_a_b <= 2'b01; display_wa_rb; end
//		6'b100010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b100110 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
//		6'b101010 : begin data_collision_a_b <= 2'b00; display_wa_rb; end
	    endcase
	end
	end
	setup_rf_a_b <= 0;
    end


    always @(posedge setup_rf_b_a) begin
	if (data_addra_int[14:4] == data_addrb_reg[14:4]) begin
	if ((ena_int == 1) && (enb_reg == 1)) begin
	    case ({wr_mode_a, wr_mode_b, wea_int, web_reg})
//		6'b000011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b000111 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b001011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
//		6'b010011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b010111 : begin data_collision_b_a <= 2'b11; display_wa_wb; end
//		6'b011011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
//		6'b100011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
		6'b100111 : begin data_collision_b_a <= 2'b01; display_wa_wb; end
//		6'b101011 : begin data_collision_b_a <= 2'b00; display_wa_wb; end
//		6'b000001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
		6'b000101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
//		6'b001001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
//		6'b010001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
		6'b010101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
//		6'b011001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
//		6'b100001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
		6'b100101 : begin data_collision_b_a <= 2'b10; display_ra_wb; end
//		6'b101001 : begin data_collision_b_a <= 2'b00; display_ra_wb; end
//		6'b000010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b000110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b001010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b010010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b010110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b011010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b100010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b100110 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
//		6'b101010 : begin data_collision_b_a <= 2'b00; display_wa_rb; end
	    endcase
	end
	end
	setup_rf_b_a <= 0;
    end


    always @(posedge clka_int) begin
	if ((output_flag || display_flag)) begin
	    addra_reg <= addra_int;
	    ena_reg <= ena_int;
	    ssra_reg <= ssra_int;
	    wea_reg <= wea_int;
	end
    end
    
    always @(posedge clkb_int) begin
	if ((output_flag || display_flag)) begin
	    addrb_reg <= addrb_int;
	    enb_reg <= enb_int;
	    ssrb_reg <= ssrb_int;
	    web_reg <= web_int;
	end
    end
    
	    
    // Data
    always @(posedge memory_collision) begin
	if ((output_flag || display_flag)) begin
	    mem[addra_int] <= 16'bx;
	    memory_collision <= 0;
	end
	
    end

    always @(posedge memory_collision_a_b) begin
	if ((output_flag || display_flag)) begin
	    mem[addra_reg] <= 16'bx;
	    memory_collision_a_b <= 0;
	end
    end
    
    always @(posedge memory_collision_b_a) begin
	if ((output_flag || display_flag)) begin
	    mem[addra_int] <= 16'bx;
	    memory_collision_b_a <= 0;
	end
    end
    
    always @(posedge data_collision[1]) begin
	if (ssra_int == 0 && output_flag) begin
	    doa_out <= 16'bX;
	end
	data_collision[1] <= 0;
    end

    always @(posedge data_collision[0]) begin
	if (ssrb_int == 0 && output_flag) begin
	    dob_out <= 16'bX;
	end
	data_collision[0] <= 0;
    end

    always @(posedge data_collision_a_b[1]) begin
	if (ssra_reg == 0 && output_flag) begin
	    doa_out <= 16'bX;
	end
	data_collision_a_b[1] <= 0;
    end

    always @(posedge data_collision_a_b[0]) begin
	if (ssrb_int == 0 && output_flag) begin
	    dob_out <= 16'bX;
	end
	data_collision_a_b[0] <= 0;
    end

    always @(posedge data_collision_b_a[1]) begin
	if (ssra_int == 0 && output_flag) begin
	    doa_out <= 16'bX;
	end
	data_collision_b_a[1] <= 0;
    end

    always @(posedge data_collision_b_a[0]) begin
	if (ssrb_reg == 0 && output_flag) begin
	    dob_out <= 16'bX;
	end
	data_collision_b_a[0] <= 0;
    end

// x parity start
    always @(posedge memory_collision) begin
	if ((output_flag || display_flag))
	    memp[addra_int] <= 2'bx;
    end

    always @(posedge memory_collision_a_b) begin
	if ((output_flag || display_flag))
	    memp[addra_reg] <= 2'bx;
    end

    always @(posedge memory_collision_b_a) begin
	if ((output_flag || display_flag))
	    memp[addra_int] <= 2'bx;
    end
    
    always @(posedge data_collision[1]) begin
	if (ssra_int == 0 && output_flag) begin
	    dopa_out <= 2'bX;
	end
    end

    always @(posedge data_collision_a_b[1]) begin
	if (ssra_reg == 0 && output_flag) begin
	    dopa_out <= 2'bX;
	end
    end

    
    always @(posedge data_collision_b_a[1]) begin
	if (ssra_int == 0 && output_flag) begin
	    dopa_out <= 2'bX;
	end
    end

    always @(posedge data_collision[0]) begin
	if (ssrb_int == 0 && output_flag) begin
	    dopb_out <= 2'bx;
	end
    end

    always @(posedge data_collision_a_b[0]) begin
	if (ssrb_int == 0 && output_flag) begin
	    dopb_out <= 2'bx;
	end
    end

    always @(posedge data_collision_b_a[0]) begin
	if (ssrb_reg == 0 && output_flag) begin
	    dopb_out <= 2'bx;
	end
    end
// x parity end

    initial begin
	case (WRITE_MODE_A)
	    "WRITE_FIRST" : wr_mode_a <= 2'b00;
	    "READ_FIRST"  : wr_mode_a <= 2'b01;
	    "NO_CHANGE"   : wr_mode_a <= 2'b10;
	    default       : begin
				$display("Attribute Syntax Error : The Attribute WRITE_MODE_A on X_RAMB16_S18_S18 instance %m is set to %s.  Legal values for this attribute are WRITE_FIRST, READ_FIRST or NO_CHANGE.", WRITE_MODE_A);
				$finish;
			    end
	endcase
    end

    initial begin
	case (WRITE_MODE_B)
	    "WRITE_FIRST" : wr_mode_b <= 2'b00;
	    "READ_FIRST"  : wr_mode_b <= 2'b01;
	    "NO_CHANGE"   : wr_mode_b <= 2'b10;
	    default       : begin
				$display("Attribute Syntax Error : The Attribute WRITE_MODE_B on X_RAMB16_S18_S18 instance %m is set to %s.  Legal values for this attribute are WRITE_FIRST, READ_FIRST or NO_CHANGE.", WRITE_MODE_B);
				$finish;
			    end
	endcase
    end


    // Port A
    always @(posedge clka_int) begin

	if (ena_int == 1'b1) begin

	    if (ssra_int == 1'b1) begin
		{dopa_out, doa_out} <= SRVAL_A;
	    end
	    else begin
		if (wea_int == 1'b1) begin
		    if (wr_mode_a == 2'b00) begin
			doa_out <= dia_int;
			dopa_out <= dipa_int;
		    end
		    else if (wr_mode_a == 2'b01) begin

			doa_out <= mem[addra_int];
			dopa_out <= memp[addra_int];

		    end
		end
		else begin

		    doa_out <= mem[addra_int];
		    dopa_out <= memp[addra_int];
		    
		end
	    end

	    // memory
	    if (wea_int == 1'b1) begin
		mem[addra_int] <= dia_int;
		memp[addra_int] <= dipa_int;
	    end
	    
	end
    end


    // Port B
    always @(posedge clkb_int) begin

	if (enb_int == 1'b1) begin

	    if (ssrb_int == 1'b1) begin
		{dopb_out, dob_out} <= SRVAL_B;
	    end
	    else begin
		if (web_int == 1'b1) begin
		    if (wr_mode_b == 2'b00) begin
			dob_out <= dib_int;
			dopb_out <= dipb_int;
		    end
		    else if (wr_mode_b == 2'b01) begin
			dob_out <= mem[addrb_int];
			dopb_out <= memp[addrb_int];
		    end
		end
		else begin
		    dob_out <= mem[addrb_int];
		    dopb_out <= memp[addrb_int];
		end
	    end

	    // memory
	    if (web_int == 1'b1) begin
		mem[addrb_int] <= dib_int;
		memp[addrb_int] <= dipb_int;
	    end

	end
    end

//*** Timing Checks Start here
    always @(notifier or notifier_a) begin
	doa_out <= 16'bx;
	dopa_out <= 2'bx;
    end 
    
    always @(notifier or notifier_b) begin
	dob_out <= 16'bx;
	dopb_out <= 2'bx;
    end

    specify

        (CLKA => DOA[0]) = (100:100:100, 100:100:100);
        (CLKA => DOA[1]) = (100:100:100, 100:100:100);
        (CLKA => DOA[2]) = (100:100:100, 100:100:100);
        (CLKA => DOA[3]) = (100:100:100, 100:100:100);
        (CLKA => DOA[4]) = (100:100:100, 100:100:100);
        (CLKA => DOA[5]) = (100:100:100, 100:100:100);
        (CLKA => DOA[6]) = (100:100:100, 100:100:100);
        (CLKA => DOA[7]) = (100:100:100, 100:100:100);
        (CLKA => DOA[8]) = (100:100:100, 100:100:100);
        (CLKA => DOA[9]) = (100:100:100, 100:100:100);
        (CLKA => DOA[10]) = (100:100:100, 100:100:100);
        (CLKA => DOA[11]) = (100:100:100, 100:100:100);
        (CLKA => DOA[12]) = (100:100:100, 100:100:100);
        (CLKA => DOA[13]) = (100:100:100, 100:100:100);
        (CLKA => DOA[14]) = (100:100:100, 100:100:100);
        (CLKA => DOA[15]) = (100:100:100, 100:100:100);
        (CLKA => DOPA[0]) = (100:100:100, 100:100:100);
        (CLKA => DOPA[1]) = (100:100:100, 100:100:100);

        (CLKB => DOB[0]) = (100:100:100, 100:100:100);
        (CLKB => DOB[1]) = (100:100:100, 100:100:100);
        (CLKB => DOB[2]) = (100:100:100, 100:100:100);
        (CLKB => DOB[3]) = (100:100:100, 100:100:100);
        (CLKB => DOB[4]) = (100:100:100, 100:100:100);
        (CLKB => DOB[5]) = (100:100:100, 100:100:100);
        (CLKB => DOB[6]) = (100:100:100, 100:100:100);
        (CLKB => DOB[7]) = (100:100:100, 100:100:100);
        (CLKB => DOB[8]) = (100:100:100, 100:100:100);
        (CLKB => DOB[9]) = (100:100:100, 100:100:100);
        (CLKB => DOB[10]) = (100:100:100, 100:100:100);
        (CLKB => DOB[11]) = (100:100:100, 100:100:100);
        (CLKB => DOB[12]) = (100:100:100, 100:100:100);
        (CLKB => DOB[13]) = (100:100:100, 100:100:100);
        (CLKB => DOB[14]) = (100:100:100, 100:100:100);
        (CLKB => DOB[15]) = (100:100:100, 100:100:100);
        (CLKB => DOPB[0]) = (100:100:100, 100:100:100);
        (CLKB => DOPB[1]) = (100:100:100, 100:100:100);

       	$setuphold (posedge CLKA, posedge ADDRA[0] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[0] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[1] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[1] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[2] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[2] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[3] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[3] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[4] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[4] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[5] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[5] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[6] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[6] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[7] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[7] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[8] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[8] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ADDRA[9] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ADDRA[9] &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[2] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[2] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[3] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[3] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[4] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[4] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[5] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[5] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[6] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[6] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[7] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[7] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[8] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[8] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[9] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[9] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[10] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[10] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[11] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[11] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[12] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[12] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[13] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[13] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[14] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[14] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIA[15] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIA[15] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIPA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIPA[0] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge DIPA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge DIPA[1] &&& dia_enable, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge SSRA &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge SSRA &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, posedge WEA &&& ENA, 0:0:0, 0:0:0, notifier_a);
       	$setuphold (posedge CLKA, negedge WEA &&& ENA, 0:0:0, 0:0:0, notifier_a);

       	$setuphold (posedge CLKB, posedge ADDRB[0] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[0] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[1] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[1] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[2] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[2] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[3] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[3] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[4] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[4] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[5] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[5] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[6] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[6] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[7] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[7] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[8] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[8] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ADDRB[9] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ADDRB[9] &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[2] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[2] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[3] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[3] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[4] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[4] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[5] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[5] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[6] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[6] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[7] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[7] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[8] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[8] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[9] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[9] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[10] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[10] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[11] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[11] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[12] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[12] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[13] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[13] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[14] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[14] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIB[15] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIB[15] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIPB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIPB[0] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge DIPB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge DIPB[1] &&& dib_enable, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge SSRB &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge SSRB &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, posedge WEB &&& ENB, 0:0:0, 0:0:0, notifier_b);
       	$setuphold (posedge CLKB, negedge WEB &&& ENB, 0:0:0, 0:0:0, notifier_b);

        $width (posedge CLKA &&& ENA, 0:0:0, 0, notifier_a);
        $width (negedge CLKA &&& ENA, 0:0:0, 0, notifier_a);
        $width (posedge CLKB &&& ENB, 0:0:0, 0, notifier_b);
        $width (negedge CLKB &&& ENB, 0:0:0, 0, notifier_b);

	specparam PATHPULSE$ = 0;

    endspecify

endmodule

`endif
