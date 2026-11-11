Components List

This document lists the hardware components used in the Happy Diwali 2026 project.

Main Development Hardware

1. Development Board: Vicharak Shrike-Fi (1)

LED Driver Circuit

1. NPN Transistor: BC337 (1)
2. LED: 5V LED lighting circuit
3. Base Resistor: 1 kΩ (1)
4. LED Current-Limiting Resistor: 100 Ω (1)

Power Supply

1. External Power Supply: 5V DC (1)
2. Connecting Wires: Jumper / hookup wires

Software and Development Tools

1. Arduino IDE – ESP32-S3 firmware development.
2. Verilog HDL – FPGA logic development.
3. ForgeFPGA Development Tools – FPGA synthesis and bitstream generation.
4. Vicharak Shrike Library – FPGA programming from ESP32-S3.

Electrical Notes

1. BC337 is used as an NPN switching transistor.
2. The 1 kΩ resistor limits transistor base current.
3. The 100 Ω resistor is used for LED current limiting.
4. The controller and external LED power supply must share a common ground.
5. Verify LED current and resistor power ratings for the actual LED configuration.

---

Happy Diwali 2026.
