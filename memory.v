//A tri-state memory
module mem (r_wb,addr,d_q);
	parameter dataSize = 32;
	parameter addrSize = 16;
	
	input r_wb;
	input [addrSize-1:0] addr;
	inout [dataSize-1:0] d_q;
	
	reg [dataSize-1:0] data [0:2**(addrSize)-1];
	assign d_q = (r_wb) ? data[addr] : 8'hz ;
	
	always @(r_wb)
		if (!r_wb) data[addr] = d_q ;
	always @(addr)
		if (!r_wb) data[addr] = d_q ;
endmodule
