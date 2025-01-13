module not_from_nand_tb;
    reg test_in;
    wire test_out;
    
    not_from_nand uut(
        .in(test_in),
        .out(test_out)
    );
    
    initial begin
        $dumpfile("tests/gates/compound/not_from_nand_tb.vcd");
        $dumpvars(0, not_from_nand_tb);
        
        test_in = 0; #10;
        test_in = 1; #10;
        
        $finish;
    end
    
    initial begin
        $monitor("Time=%0d in=%b out=%b", 
                 $time, test_in, test_out);
    end
endmodule