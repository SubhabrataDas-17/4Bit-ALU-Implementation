# 4-bit ALU in Verilog

## Overview
This project implements a 4-bit Arithmetic Logic Unit (ALU) in Verilog. The ALU performs arithmetic and logical operations based on a 3-bit select input (sel).

## Operations Supported

| sel | Operation |
|-----|----------|
| 000 | A + B |
| 001 | A - B |
| 010 | A AND B |
| 011 | A OR B |
| 100 | A XOR B |
| 101 | NOT A |

## Module Description

### Inputs
- A [3:0] : 4-bit input  
- B [3:0] : 4-bit input  
- sel [2:0] : Operation selector  

### Outputs
- Y [3:0] : Result output  
- carry : Carry (addition) / Borrow (subtraction)  

## Testbench
- Instantiates the ALU module  
- Uses a task to apply test cases  
- Displays results using $display  
- Tests all operations including overflow and subtraction cases  

## Simulation
- Timescale: 1ns / 1ps  
- Delay of #10 between test cases  
- Outputs printed in binary format  

## Files
- alu_4bit.v  
- alu_4bit_tb.v  

## Result
The ALU performs all specified operations correctly for the given test cases.
