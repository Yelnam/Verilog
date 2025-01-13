module nand_gate_tb;
    reg test_a, test_b;
    wire test_out;
    
    nand_gate uut(
        .a(test_a),
        .b(test_b),
        .out(test_out)
    );
    
    initial begin
        $dumpfile("tests/gates/basic/nand_gate_tb.vcd");
        $dumpvars(0, nand_gate_tb);
        
        // Test all input combinations
        test_a = 0; test_b = 0; #10;
        test_a = 0; test_b = 1; #10;
        test_a = 1; test_b = 0; #10;
        test_a = 1; test_b = 1; #10;
        
        $finish;
    end
    
    initial begin
        $monitor("Time=%0d a=%b b=%b out=%b", 
                 $time, test_a, test_b, test_out);
    end
endmodule