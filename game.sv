`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Top game module for the project
// Engineer: Bartu Atabek
//////////////////////////////////////////////////////////////////////////////////


module game(input logic clk, reset, logic [3:0] key_col, logic preset, logic restart,
       output logic [3:0] motor_out, logic a,b,c,d,e,f,g, logic [3:0] key_row, an, logic dp,
       logic [3:0] leds, logic [3:0] leds2);
    
    // Internal wires
    logic key_valid;
    logic [3:0] key_value;
    logic [3:0] in0, in1, in2, in3;
    
    logic [3:0] random;
    logic [3:0] phases;
    
    // Connecting Keypad module
    keypad4X4 keypad(clk, key_row, key_col, key_value, key_valid);
    
    assign leds = key_value;
    
    // Connecting Random Number Generator
    LFSR rndGen(clk, preset, random);
    
    
    assign leds2 = random;
    
    // Connecting Stepper Motor Wrapper
    steppermotor_wrapper motor(clk, {random[1], random[3]}, {random[0], random[2]}, phases, key_valid);
    
    assign motor_out = phases;
    
    case_statement caseStatement(random, key_value, key_valid, reset, restart, in0, in1, in2, in3);
    
    // Connecting Seven Segment Display module
    SevSeg_4digit display(clk, in0, in1, in2, in3, a, b, c, d, e, f, g, dp, an);
endmodule
