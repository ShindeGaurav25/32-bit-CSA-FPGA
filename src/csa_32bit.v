module csa_32bit (
    input [31:0] a, b,
    input cin,
    output [31:0] sum,
    output cout
);

    wire c1, c2, c3, c4, c5, c6, c7;

    // First block (RCA)
    rca_4bit rca0(a[3:0], b[3:0], cin, sum[3:0], c1);

    // CSA blocks
    csa_4bit csa1(a[7:4],   b[7:4],   c1, sum[7:4],   c2);
    csa_4bit csa2(a[11:8],  b[11:8],  c2, sum[11:8],  c3);
    csa_4bit csa3(a[15:12], b[15:12], c3, sum[15:12], c4);
    csa_4bit csa4(a[19:16], b[19:16], c4, sum[19:16], c5);
    csa_4bit csa5(a[23:20], b[23:20], c5, sum[23:20], c6);
    csa_4bit csa6(a[27:24], b[27:24], c6, sum[27:24], c7);
    csa_4bit csa7(a[31:28], b[31:28], c7, sum[31:28], cout);

endmodule
