# 32_bit_ALU

# 32-bit Arithmetic Logic Unit (ALU) — Verilog HDL

## Overview
This project implements a **32-bit ALU** using **Verilog HDL**, designed with a **controller–datapath architecture**.  
The ALU supports multiple arithmetic and logical operations and has been **verified through simulation** and **synthesized in Xilinx Vivado**.

---

## Features
- 32-bit datapath
- Modular controller–datapath design
- Supported operations:
  - ADD, SUB
  - AND, OR, XOR, NOT
  - Shift operations
  - Multiplication
  - Data transfer operations
- Fully synthesizable RTL design

---

## Tools Used
- Verilog HDL
- Xilinx Vivado Design Suite

---

## Verification
- Verified using a custom testbench
- Behavioral simulation performed in Vivado
- Synthesized schematic analyzed to understand FPGA hardware mapping

---

## How to Run
1. Open Vivado and create a new RTL project
2. Add all Verilog source files
3. Add the testbench as a simulation source
4. Run Behavioral Simulation
5. (Optional) Run Synthesis to view the schematic
