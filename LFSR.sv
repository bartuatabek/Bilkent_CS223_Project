`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Linear Feedback Shift Register LFSR for generating 4-bit pseudo random numbers
// Engineer: Bartu Atabek
//////////////////////////////////////////////////////////////////////////////////

// clk_in is the original clock signal coming from the FPGA board (100 MHz)
// clk_out is the slowed-down clock signal that you can use for your modules (~1Hz)
module ClockDivider(
 input clk_in,
 output clk_out
 );

logic [26:0] count = {27{1'b0}};
logic clk_NoBuf;
always@ (posedge clk_in) begin
count <= count + 1;
end//always
assign clk_NoBuf = count[26];
BUFG BUFG_inst (
 .I(clk_NoBuf), // 1-bit input: Clock input
 .O(clk_out) // 1-bit output: Clock output

);
endmodule

module dff(input clk, preset, d, output logic q);

    always_ff @(posedge clk)
        if (preset) q <= 1'b1;
        else        q <= d;
endmodule

module LFSR(input clk, preset, output logic [3:0] code);
 
 logic clk_out;
 ClockDivider divider(clk, clk_out);
 
 logic q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15;
 logic out1, out2, out3;
 
    dff f0(clk, preset, out3, q0);
    dff f1(clk, preset, q0, q1);
    dff f2(clk, preset, q1, q2);
    dff f3(clk, preset, q2, q3);
    dff f4(clk, preset, q3, q4);
    dff f5(clk, preset, q4, q5);
    dff f6(clk, preset, q5, q6);
    dff f7(clk, preset, q6, q7);
    dff f8(clk, preset, q7, q8);
    dff f9(clk, preset, q8, q9);
    dff f10(clk, preset, q9, q10);
    dff f11(clk, preset, q10, q11);
    dff f12(clk, preset, q11, q12);
    dff f13(clk, preset, q12, q13);
    dff f14(clk, preset, q13, q14);
    dff f15(clk, preset, q14, q15);

    xor(out1, q13, q15);
    xor(out2, q12, out1);
    xor(out3, q10, out2);
  
    always @(posedge clk_out)
        code <= {q12, q13, q14, q15};
endmodule