module not_from_nand(
    input wire in,
    output wire out
);
    // Internal wire isn't necessary here but helps show the concept
    wire nand_in;
    assign nand_in = in;
    
    // Instantiate our NAND gate with both inputs connected to 'in'
    nand_gate nand1(
        .a(nand_in),
        .b(nand_in),
        .out(out)
    );
endmodule