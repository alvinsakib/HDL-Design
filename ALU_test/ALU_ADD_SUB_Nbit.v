module ALU_ADD_SUB_Nbit 
(
    input wire [2:0] A,B,  
    input wire Sel,        // Sel = 0 for Addition, Sel = 1 for Subtraction
    output wire [2:0] R,    
    output wire CF
);

    wire [2:0] B_complement;
    wire [2:0] B_selected;

    assign B_complement = ~B + 4'b0001;

    assign B_selected = (Sel) ? B_complement : B;

    assign {CF, R} = A + B_selected;


endmodule