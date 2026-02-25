# Traffic_light_controller

🚦 Traffic Light Controller – Verilog FSM
📌 Project Overview

This project implements a 3-state Traffic Light Controller using Verilog HDL.

The design is based on a synchronous Finite State Machine (FSM) with counter-based timing control and verified using a behavioral testbench in Vivado.

🎯 Design Specifications
States

RED → 10 clock cycles

GREEN → 10 clock cycles

YELLOW → 5 clock cycles

State Sequence

RED → GREEN → YELLOW → repeat

Total Cycle Length

25 clock cycles per full traffic cycle.

🏗 Architecture

Single clocked always block

Active-high synchronous reset

2-bit state encoding

4-bit counter for timing control

No inferred latches

Clean state transition logic

🔁 State Transition Logic
Current State	Counter Condition	Next State
RED	counter == 9	GREEN
GREEN	counter == 9	YELLOW
YELLOW	counter == 4	RED

Counter resets to 0 on every state transition.

🧪 Verification Strategy

Testbench includes:

10 ns clock generator

Reset applied at start

Reset tested during operation

Long simulation run (multiple traffic cycles)

Verified in Waveform:

✔ Correct cycle duration per state
✔ Counter reset at transition
✔ Proper state sequencing
✔ Stable operation across multiple cycles
✔ Reset recovery behavior

🛠 Tools Used

Xilinx Vivado (Behavioral Simulation)

Verilog HDL

📂 Repository Structure
traffic-light-fsm/
│
├── traffic_light.v
├── traffic_light_tb.v
├── waveform.png
└── README.md
📚 Key Learning Outcomes

FSM design using synchronous logic

Cycle-accurate counter control

Reset polarity handling

Waveform-driven debugging

Clean RTL coding practices

🚀 Future Improvements

Add LED output signals

Implement asynchronous reset version

Add pedestrian crossing logic

Convert to parameterized timing design
