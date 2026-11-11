FPGA Firmware

This directory contains the Verilog HDL source code for the Diwali-inspired LED flickering effect implemented on the Renesas ForgeFPGA.

Hardware

- Development Board: Vicharak Shrike-Fi
- FPGA: Renesas ForgeFPGA SLG47910V
- Hardware Description Language: Verilog HDL

Source File

File| Description
"main.v"| Main FPGA design implementing the LED lighting pattern

Lighting Effect

The FPGA generates a repeating Diwali-inspired lighting sequence:

1. Bright illumination
2. Gradual dimming
3. Very dim illumination
4. LED OFF
5. Pause
6. Repeat

PWM Generation

Pulse Width Modulation (PWM) controls LED brightness by varying the duty cycle of the output signal.

The FPGA implements the lighting sequence in hardware, allowing it to operate independently of the ESP32-S3 application loop.

Bitstream Generation

1. Open the ForgeFPGA development environment.
2. Open the FPGA project containing "main.v".
3. Configure the required FPGA I/O assignments.
4. Run synthesis and implementation.
5. Generate the MCU-compatible FPGA bitstream.
6. Save the generated bitstream as:

diwali_1.bin

FPGA Programming

The generated bitstream is loaded onto the FPGA by the ESP32-S3 using the Vicharak Shrike library.

See ""../esp32/README.md"" (../esp32/README.md) for the programming procedure.

Project Structure

fpga/
├── main.v
└── README.md

---

Part of Happy Diwali 2026 🪔.