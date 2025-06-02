// Y = A.B


`timescale 1ns/1ps
`include "and_gate.v"

module and_gate_tb;
    reg A;
    reg B;
    wire Y;

and_gate uut
(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);
    A = 0;
    B = 0; 

    #20;
    A = 1;

    #20;
    B = 1;

    #20;
    A = 0;

    #20;
    $finish;
end

initial begin
    $monitor("%d . %d = %d", A, B, Y);
end

endmodule