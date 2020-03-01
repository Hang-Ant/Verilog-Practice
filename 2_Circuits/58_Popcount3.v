module test_module( 
    input [2:0] in,
    output reg [1:0] out );
    
    integer i;
    
    always @(*) 
	begin
        out = 0;
        for(i = 0; i < 3; i = i + 1) 
		begin
            if(in[i])
                out = out + 1;
        end
    end
endmodule
/*
Bugs and solutions:
1.  if the third line is written as : output [1:0] out);
	Will get this error : Verilog HDL Procedural Assignment
	error at test_module.v(9): object "out" on left-hand 
	side of assignment must have a variable data type.
2.  If the tenth line is written as : ...;i++)
	will get this error : Ignored design unit "test_module"
	at test_module.v(1) due to previous errors
*/
