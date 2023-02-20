module BCD_7Seg (BCD_Data , SEG7);
input [ 3:0]BCD_Data;
output reg [ 7 : 0]SEG7;
always@ (BCD_Data)
begin
		case (BCD_Data)
		0 : SEG7<=8'b1100_0000;
		1 : SEG7<=8'b1111_1001;
		2 : SEG7<=8'b1010_0100;
		3 : SEG7<=8'b1011_0000 ;
		4 : SEG7<=8'b1001_1001;
		5 : SEG7<=8'b1001_0010;
		6 : SEG7<=8'b1000_0010;
		7 : SEG7<=8'b1111_1000;
		8 : SEG7<=8'b1000_0000;
		9 : SEG7<=8'b1001_0000;
		default SEG7<=8'b1111_1111;
		endcase
end
endmodule
