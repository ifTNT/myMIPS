//Read-only instruction memory that takes address and output cooresponding instruction.
module instructionMemory(addr, instruction);
	parameter dataWidth = 32;
	parameter addrSize = 32;
	
	input [addrSize-1:0] addr;
	output [dataWidth-1:0] instruction;
	
	reg [dataWidth-1:0] instruction;
	
	always@(addr) begin
		case (addr)
			0: instruction=32'b00000000000000111111111111111111;
			default: instruction=32'b0;
		endcase
	end
endmodule
