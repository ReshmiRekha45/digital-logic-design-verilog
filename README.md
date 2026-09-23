# 🚦 FSM-Based Traffic Light Controller in Verilog

## 📌 Project Overview
This repository contains the RTL design and testbench for a 3-State **Finite State Machine (FSM)** traffic light controller in Verilog HDL. The circuit transitions sequentially through `RED`, `GREEN`, and `YELLOW` states based on clock edge triggers.

## 📐 State Diagram & Architecture
- **Architecture:** Moore Finite State Machine
- **State Encoding:**
  - `RED` (`2'b00`) -> Outputs `3'b100` (Stop)
  - `GREEN` (`2'b01`) -> Outputs `3'b001` (Go)
  - `YELLOW` (`2'b10`) -> Outputs `3'b010` (Caution)

## 📁 Repository Structure
- `traffic_light_controller.v`: Core RTL FSM design module
- `tb_traffic_light_controller.v`: Testbench for verification and VCD dump generation

## 🛠️ Simulation & Verification
- **Language:** Verilog HDL
- **Simulator:** Icarus Verilog (`iverilog`) / EDA Playground
- **Waveform Viewer:** GTKWave / EPWave

## 🚀 How to Run Simulation
```bash
# Compile design and testbench
iverilog -o traffic_tb.vvp traffic_light_controller.v tb_traffic_light_controller.v

# Run simulation executable
vvp traffic_tb.vvp

# Open waveform in GTKWave
gtkwave waveform.vcd
