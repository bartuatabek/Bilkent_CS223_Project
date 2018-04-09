`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Case Controller Block for connecting the blocks and implementing the gameplay
// Engineer: Bartu Atabek
//////////////////////////////////////////////////////////////////////////////////


module case_statement(input [3:0] random, [3:0] key_value, key_valid, reset, restart,
       output logic [3:0] in0, logic [3:0] in1, logic [3:0] in2, logic [3:0] in3);
    
    logic [3:0] code, prev;
    
    always @(posedge key_valid, posedge reset)
    begin
    case (key_value)
    // Duration-Direction Duration-Direction
    4'b0000: code = 4'b0011;
    4'b0001: code = 4'b1011;
    4'b0010: code = 4'b1000;
    4'b0011: code = 4'b1111;
    4'b0100: code = 4'b0000;
    4'b0101: code = 4'b0110;
    4'b0110: code = 4'b1010;
    4'b0111: code = 4'b0111;
    4'b1000: code = 4'b0101;
    4'b1001: code = 4'b0100;
    4'b1010: code = 4'b0001;
    4'b1011: code = 4'b0010;
    4'b1100: code = 4'b1001;
    4'b1101: code = 4'b1100;
    4'b1110: code = 4'b1101;
    4'b1111: code = 4'b1110;
    default: code = 4'b0;
    endcase
    
    if (~restart)
    begin
    if (reset)
    begin
        in3 <= 0;   
        in2 <= 0;   
        in1 <= 0;   
        in0 <= 0;   
    end
    else if(prev == code )
        in0 <= in0 + 1'b1;
    else if (in0)
        in0 <= in0 - 1'b1;
    end
    prev <= random;
    end
endmodule