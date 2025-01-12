// The simplest possible logic gate - a NOT gate (inverter)
module not_gate(
    input wire in,
    output wire out
);
    assign out = ~in;
endmodule