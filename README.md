This repository contains the Verilog code for a binary to Excess-3 code converter. This module converts a 4-bit binary number to a 5-bit Excess-3 code.

📁 File Overview
bin_XS_3.v: The Verilog module implementing the binary to Excess-3 code converter.

🔍 Module Description
The bin_XS_3 module is designed to convert a 4-bit binary input into a 5-bit Excess-3 code. It has the following ports:

  1. a (input [3:0]): 4-bit binary input.
  2. y (output reg [4:0]): 5-bit Excess-3 output.
     
Module Functionality

  Conversion Logic: The Excess-3 code is obtained by adding the binary input to the constant value 3. The code effectively shifts the binary values such that:
     Binary 0000 (0) becomes 0011 (3 in decimal).
     Binary 0001 (1) becomes 0100 (4 in decimal).
     ...
     Binary 1001 (9) becomes 1100 (12 in decimal).

Explanation

  1. input [3:0] a: This is the 4-bit binary input.
  2. output reg [4:0] y: This is the 5-bit Excess-3 output, declared as a register since it is assigned a value inside an always block.
  3. always@(*): This always block triggers whenever there is a change in any of the inputs.
  4. y = {1'b0,a} + 5'b00011;: The binary input a is concatenated with a leading zero to form a 5-bit number and then 3 (5'b00011) is added to it to produce the Excess-3 code.
     
