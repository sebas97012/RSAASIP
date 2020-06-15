module Instruction_Mem #(parameter ARQ = 16)(input logic[5:0] addr, output logic [ARQ - 1:0] instr);
	parameter MEMORY_SIZE = 64;

	reg [ARQ-1:0] memory [0:MEMORY_SIZE-1]; //Tamaño de la instrucción || Tamaño de la memoria
	initial 
		begin
			$readmemb("memfile.dat", memory);
		end

	assign instr = memory[addr];

endmodule