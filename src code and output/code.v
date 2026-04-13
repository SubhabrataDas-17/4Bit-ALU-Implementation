module alu_4bit (
    input [3:0] A,       // 4-bit input A
    input [3:0] B,       // 4-bit input B
    input [2:0] sel,     // Operation select
    output reg [3:0] Y,  // 4-bit result
    output reg carry     // Carry/Borrow output
);

always @(*) begin
    case (sel)
        3'b000: begin // Addition
            {carry, Y} = A + B;
        end
        
        3'b001: begin // Subtraction
            {carry, Y} = A - B;
        end
        
        3'b010: begin // AND
            Y = A & B;
            carry = 0;
        end
        
        3'b011: begin // OR
            Y = A | B;
            carry = 0;
        end
        
        3'b100: begin // XOR
            Y = A ^ B;
            carry = 0;
        end
        
        3'b101: begin // NOT A
            Y = ~A;
            carry = 0;
        end
        
        default: begin
            Y = 4'b0000;
            carry = 0;
        end
    endcase
end

endmodule
