`timescale 1ns/1ps

module alu_4bit_tb;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] Y;
wire carry;

alu_4bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .carry(carry)
);

initial begin
    $display("A B sel | Y carry");
    $monitor("%b %b %b | %b %b", A, B, sel, Y, carry);

    // Test cases
    A = 4'b0101; B = 4'b0011;

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT

    // Edge cases
    A = 4'b1111; B = 4'b0001;
    sel = 3'b000; #10; // Overflow case

    $finish;
end

endmodule
