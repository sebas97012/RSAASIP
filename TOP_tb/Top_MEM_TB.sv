`timescale 1ms / 1ns 

module Top_MEM_TB();

	parameter ARQ = 16;
	parameter MEMORY_ADDR_SIZE = 13;

	logic clk, rst, rst_ALU, wr_reg_en;
	logic [ARQ-1:0] wb_result_in;
	logic [ARQ-1:0] instr_out;
	
	logic wb_mux_contrl, wb_enable_wb_in, pc_en_wb_in;
	logic[ARQ - 1:0] alu_result_wb_in, mem_result_wb_in;
	
	TOP_MEMPipe uut(clk, rst, rst_ALU, wr_reg_en, wb_result_in, instr_out, wb_mux_contrl, wb_enable_wb_in, pc_en_wb_in,  alu_result_wb_in, mem_result_wb_in);
	
	initial begin 
		clk = 1; rst = 1; wb_result_in = 16'd17; wr_reg_en = 1;   
		#5 rst = 0; 
	end 
	
	always #5 clk = ~clk; 




endmodule
