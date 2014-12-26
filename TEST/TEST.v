`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:58 12/25/2014 
// Design Name: 
// Module Name:    TEST 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module TEST(
    input SYSCLK,
    output [0:7] LED
    );

	reg [7:0] aaa = 8'b00000001;

	reg [31:0] counter  = 32'd0;
	parameter  maxcount = 25000000; //20ns*25000000=500ms
	
	always @ ( posedge SYSCLK )	begin
	   if ( counter > maxcount )	begin
				aaa <= {aaa[6:0],aaa[7]};
				counter <= 32'd1;
		end
		else begin
				counter <= counter + 32'd1;
		end
	end

	assign LED = aaa;

	
	
	



endmodule


