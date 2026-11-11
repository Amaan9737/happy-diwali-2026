Bill of Materials (BOM)

This document lists the hardware components used in the Happy Diwali 2026 project.

1. Main Development Hardware

No.| Component| Model / Specification| Quantity
1| Development board| Vicharak Shrike-Fi| 1

2. LED Driver Circuit

No.| Component| Model / Specification| Quantity
1| NPN transistor| BC337| 1
2| LED| 5V LED lighting circuit| As required
3| Base resistor| 1 kΩ| 1
4| LED current-limiting resistor| 100 Ω| 1

3. Power Supply

No.| Component| Specification| Quantity
1| External power supply| 5V DC| 1
2| Connecting wires| Jumper / hookup wires| As required

4. Software and Development Tools

Tool| Purpose
Arduino IDE| ESP32-S3 firmware development
Verilog HDL| FPGA logic development
ForgeFPGA development tools| FPGA synthesis and bitstream generation
Vicharak Shrike library| FPGA programming from ESP32-S3

 Notes

- BC337 is used as an NPN switching transistor.
- The 1 kΩ resistor limits transistor base current.
- The 100 Ω resistor is used for LED current limiting.
- The controller and external LED power supply must share a common ground.
- Verify LED current and resistor power ratings for the actual LED configuration.

---

Happy Diwali 2026.
