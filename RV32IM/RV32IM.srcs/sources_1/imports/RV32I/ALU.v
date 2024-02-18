/*
ALU module, which takes two operands of size 32-bits each and a 4-bit ALU_control as input.
Operation is performed on the basis of ALU_control value and output is 32-bit ALU_result. 
If the ALU_result is zero, a ZERO FLAG is set.
*/

/*
ALU Control lines | Function
-----------------------------
        0000    Bitwise-AND
        0001    Bitwise-OR
        0010	Add (A+B)
        0100	Subtract (A-B)
        1000	Set on less than
        0011    Shift left logical
        0101    Shift right logical
        0110    Multiply
        0111    Bitwise-XOR
*/

module ALU (in1, in2, alu_control, alu_result, zero_flag);
    input [31:0] in1,in2;
    input[4:0] alu_control;
    output reg [31:0] alu_result;
    output reg zero_flag;

    always @(*)
    begin
        
        case(alu_control)

        5'b00000: alu_result = in1&in2; //and / andi
        5'b00001: alu_result = in1|in2; //or / ori
        5'b00010: alu_result = in1+in2; //lw / sw / add / addi
        5'b00011: alu_result = in1-in2; //sub / beq / bne /blt /bge
        5'b00100: alu_result = in1^in2; //xor / xori
        5'b00101: alu_result = (in1<in2)?1:0; //slt / slti
        5'b00110: alu_result = in1<<in2; //sll 
        5'b01000: alu_result = in1>>in2; //srl
        
        5'b01001: alu_result = in1*in2; //multiplication
        5'b01010: alu_result = in1*in2; //multiplication signed  * signed
        5'b01011: alu_result = $unsigned(in1) * $unsigned(in2); //MULHU
        5'b01100: alu_result = $signed(in1) * $unsigned(in2); //MULHSU
        
        5'b01101: alu_result = in1/in2; //DIV
        5'b01110: alu_result = $unsigned(in1)/$unsigned(in2); //DIVU
        5'b01111: alu_result = in1%in2; //REM
        5'b10000: alu_result = in1%in2; //REMU
        
        5'b10001: alu_result = in1>>>in2; //sra
        default: alu_result = 32'b0;
        endcase

        // Set the Zero_flag if ALU_result is zero
        if (alu_result == 0)
            zero_flag = 1'b1;
        else
            zero_flag = 1'b0;
        
    end
endmodule