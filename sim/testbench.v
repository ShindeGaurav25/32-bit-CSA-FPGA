`timescale 1ns/1ps

module testbench;

    reg [31:0] a, b;
    reg cin;
    wire [31:0] sum;
    wire cout;

    // Instantiate CSA
    csa_32bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Test case 1
        a = 32'd10; b = 32'd5; cin = 0;
        #10;

        // Test case 2
        a = 32'd15; b = 32'd20; cin = 1;
        #10;

        // Test case 3
        a = 32'd100; b = 32'd200; cin = 0;
        #10;

        // Test case 4
        a = 32'hFFFFFFFF; b = 1; cin = 0;
        #10;

        $stop;
    end

endmodule
