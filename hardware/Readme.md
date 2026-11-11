Hardware Documentation

This directory contains the hardware documentation for the Happy Diwali 2026 project.

The project uses the Vicharak Shrike-Fi development board and an external LED driver circuit to create a Diwali-inspired lighting effect using FPGA-based PWM generation.

Hardware Overview

The hardware consists of three main sections:

1. Development and control using the Vicharak Shrike-Fi board.
2. FPGA-based PWM generation using the onboard ForgeFPGA.
3. LED switching using a BC337 NPN transistor driver circuit.

Main Components

- Vicharak Shrike-Fi development board
- BC337 NPN transistor
- 1 kΩ base resistor
- 100 Ω LED current-limiting resistor
- 5V LED lighting circuit
- 5V DC external power supply
- Connecting wires

For the complete component list, see "components.md" (components.md).

Working Principle

1. The ESP32-S3 initializes the Shrike FPGA interface.
2. The generated FPGA bitstream is loaded onto the ForgeFPGA.
3. The FPGA generates the programmed PWM lighting pattern.
4. The PWM output controls the BC337 transistor.
5. The transistor switches the external LED circuit to produce the Diwali lighting effect.

Circuit Diagram

The circuit diagram will be added to this directory.

Power Supply and Connections

1. The LED circuit uses an external 5V DC supply.
2. The BC337 acts as an NPN switching transistor.
3. The 1 kΩ resistor is connected to the transistor base circuit.
4. The 100 Ω resistor provides current limiting for the LED circuit.
5. The ESP32-S3 ground and external LED supply ground must be connected together.

---

Part of Happy Diwali 2026.
