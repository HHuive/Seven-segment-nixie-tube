module decode3_8 (A,Y);
input [ 2:0]A;
output reg [ 7:0]Y;
always@(A)
begin
		case (A)
		0 :Y=8'b1111_1110;
		1 :Y=8'b1111_1101;
		2 :Y=8'b1111_1011;
		3 :Y=8'b1111_0111;
		4 :Y=8'b1110_1111;
		5 :Y=8'b1101_1111;
		6 :Y=8'b1011_1111;
		7 :Y=8'b0111_1111;
		default : Y=8'b1111_1111;
		endcase
end
endmodule
