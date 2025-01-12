module not_gate_tb;
    // Declare test signals
    reg test_in;
    wire test_out;

    // Instantiate the not gate
    not_gate uut (
        .in(test_in),
        .out(test_out)
    );

    //Test stimulus
    initial begin
        // Set up waveform dump file
        $dumpfile("not_gate_tb.vcd");
        $dumpvars(0, not_gate_tb);

        // Test possible inputs
        test_in = 0; #10;
        test_in = 1; #10;

        // End simulation
        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time=%0d input=%b output=%b",
                $time, test_in, test_out);
    end
endmodule
