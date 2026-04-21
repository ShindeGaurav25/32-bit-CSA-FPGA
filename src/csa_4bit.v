module csa_4bit (
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] sum0, sum1;
    wire c0, c1;

    // RCA assuming Cin = 0
    rca_4bit rca0(a, b, 1'b0, sum0, c0);

    // RCA assuming Cin = 1
    rca_4bit rca1(a, b, 1'b1, sum1, c1);

    // MUX selection
    assign sum  = (cin == 1'b0) ? sum0 : sum1;
    assign cout = (cin == 1'b0) ? c0   : c1;

endmodule
