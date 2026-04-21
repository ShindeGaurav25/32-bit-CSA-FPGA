module top_fpga (
    input [31:0] sw,     // Input A
    input [31:0] sw2,    // Input B
    input btn,           // Carry in
    output [31:0] led,   // Sum output
    output led_cout      // Carry out
);

    wire [31:0] sum;
    wire cout;

    csa_32bit uut (
        .a(sw),
        .b(sw2),
        .cin(btn),
        .sum(sum),
        .cout(cout)
    );

    assign led = sum;
    assign led_cout = cout;

endmodule
