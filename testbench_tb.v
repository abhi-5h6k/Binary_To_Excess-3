`timescale 1ns / 1ps

module tb();

reg [3:0] a = 0;
wire [4:0] y;
integer i = 0;

bin_XS_3 dut(a,y);

initial begin

for(i = 0; i < 20; i = i + 1)
begin
 a = $urandom();
 #10;
 $display("value of I/P : %0d and value of O/P : %0d",a,y);
end

end


endmodule
