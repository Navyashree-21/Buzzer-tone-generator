# Buzzer Tone Generator using FPGA

This project implements a **buzzer tone generator using Verilog HDL** on the **Digilent Nexys A7 FPGA board**.  
The design uses the onboard **100 MHz clock**, divides it to **1 MHz**, and generates different buzzer tones.

## Features
- Generates multiple buzzer tones
- Implemented in **Verilog HDL**
- Simulated in **Vivado**
- Target board: **Nexys A7**
- Tone selection using FPGA switches

## Tone Modes
| Mode (`mode[1:0]`) | Output Frequency |
|--------------------|------------------|
| `00` | OFF |
| `01` | 800 Hz |
| `10` | 2 kHz |
| `11` | 4 kHz |

## Project Structure
```text
Buzzer_Tone_Generator_FPGA/
│
├── src/
│   ├── clk_div.v
│   ├── buzzer.v
│   └── top.v
│
├── sim/
│   └── tb_top.v
│
├── constraints/
│   └── buzzer_top.xdc
│

