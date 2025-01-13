module or_gate_tb;
    reg test_a, test_b;
    wire test_out;
    
    or_gate uut(
        .a(test_a),
        .b(test_b),
        .out(test_out)
    );
    
    initial begin
        $dumpfile("tests/gates/basic/or_gate_tb.vcd");
        $dumpvars(0, or_gate_tb);
        
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