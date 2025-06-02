`timescale 1ns/1ps

module decode_tb;
    reg [1:0] A;
    reg E;
    wire [3:0] Y;

decode uut
(
    .A(A),
    .E(E),
    .Y(Y)
);

initial begin
    $dumpfile("decode.vcd");
    $dumpvars(0, decode_tb);

    A[1] = 0;
    A[0] = 0;
    E = 0;

    #20;
    E = 1;

    #20;
    A[0] = 1;

    #20;
    A[1] = 1;

    #20;
    A[0] = 0;

    #20;
    $finish;
end

initial begin
    $monitor("E=%d A[1]=%d A[0]=%d Y[3]=%d Y[2]=%d Y[1]=%d Y[0]=%d\n", E, A[1], A[0], Y[3], Y[2], Y[1], Y[0]);
end

endmodule