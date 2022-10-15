# System Verilog
A hardware description and hardware verification language used for Digital Design Course (EE1010).
## Introduction
SystemVerilog, standardized as IEEE 1800, is a hardware description and hardware verification language used to model, design, simulate, test and implement electronic systems. SystemVerilog is based on Verilog and some extensions, and since 2008 Verilog is now part of the same IEEE standard. It is commonly used in the semiconductor and electronic design industry as an evolution of Verilog.
## About Intel Quartus Prime
Intel Quartus Prime is programmable logic device design software produced by Intel; prior to Intel's acquisition of Altera the tool was called Altera Quartus Prime, earlier Altera Quartus II. Quartus Prime enables analysis and synthesis of HDL designs, which enables the developer to compile their designs, perform timing analysis, examine RTL diagrams, simulate a design's reaction to different stimuli, and configure the target device with the programmer. Quartus Prime includes an implementation of VHDL and Verilog for hardware description, visual editing of logic circuits, and vector waveform simulation.

## SystemVerilog RTL Tutorial
This tutorial introduces some of the new features in SystemVerilog that will make RTL design easier and more productive.
### New Operators
SystemVerilog adds a number of new operators, mostly borrowed from C. These include increment (++) and decrement (--), and assignment operators (+=, -=, ...). The wild equality operators (=== and !==) act like the comparisons in a casex statement, with X and Z values meaning “don’t care”.
### New loop statements
Also from C is the do-while loop statement and break and continue. The new foreach loop is used with array variables. The for loop has been enhanced, so that the following is permitted:
```sh
for (int i = 15, logic j = 0 ; i > 0 ; i--, j = ~j) ...
```
### Labelling
In Verilog, you may label begin and fork statements:
```sh
begin : a_label
```
In SystemVerilog the label may be repeated at the end:
```sh
end : a_label
```
This is useful for documenting the code. The label at the end must be the same as the one at the beginning. Modules, tasks and functions may also have their names repeated at the end:
```sh
module MyModule ...
endmodule : MyModule
```
In SystemVerilog any procedural statement may be labelled:
```sh
loop : for (int i=0; ...
```

### Case and if statements
Case and if statements are used inside an always_comb
or always_ff blocks to conditionally perform operations.
Example:
```sh
always_ff @(posedge clock)
if(add1 && add2) r <= r+3;
else if(add2) r <= r+2;
else if(add1) r <= r+1;
```
![alt text](https://github.com/LTPhat/SystemVerilog/blob/main/if_statement.png)

![alt text](https://github.com/LTPhat/SystemVerilog/blob/main/case_statement.png)

### Concatenate and duplicate

Create vector with some bits or duplicate bits:

![alt text](https://github.com/LTPhat/SystemVerilog/blob/main/concatenate.png)

## Reference
[1] SystemVerilog, Wiki, https://en.wikipedia.org/wiki/SystemVerilog.

[2] SystemVerilog Tutorial for Beginners, https://verificationguide.com/systemverilog/systemverilog-tutorial/.

[3] Intel Quartus Prime, https://en.wikipedia.org/wiki/Intel_Quartus_Prime.
