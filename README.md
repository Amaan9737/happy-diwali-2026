🪔 Happy Diwali 2026

An FPGA and ESP32-S3 based electronic Diwali lighting project that creates a dynamic diya-inspired LED flickering effect using programmable PWM.

Project Overview

Happy Diwali 2026 is an embedded electronics project combining an ESP32-S3 microcontroller with a Renesas ForgeFPGA SLG47910V on the Vicharak Shrike-Fi development board.

The project generates a diya-inspired lighting pattern, transitioning between bright, dim, very dim, and OFF states to imitate the natural flickering of a traditional Diwali lamp.


- Vicharak Shrike-Fi development board
- ESP32-S3 microcontroller
- Renesas ForgeFPGA SLG47910V
- BC337 NPN transistor LED driver
- 5V LED circuit
- Current-limiting resistors
- External 5V power supply

How It Works

The project uses two programmable components:

1. FPGA — LED Flicker Generation

The ForgeFPGA generates the LED flickering pattern using hardware logic and PWM. This allows the lighting sequence to operate independently of the ESP32 software loop.

2. ESP32-S3 — Microcontroller Control

The ESP32-S3 handles the microcontroller-side functionality and can be used for additional features such as Wi-Fi-based control and configuration.

3. LED Driver Circuit

A BC337 NPN transistor acts as the LED switching driver, allowing the control signal to operate the external LED load.


- "firmware/esp32/" — ESP32-S3 Arduino firmware
- "firmware/fpga/" — FPGA Verilog source code
- "hardware/" — Circuit diagrams and component information
- "media/" — Project photographs and demonstration video
- "docs/" — Wiring, setup, and working-principle documentation

 Development Tools

- Arduino IDE
- ForgeFPGA development tools
- Verilog HDL
- Linux Mint
- Git and GitHub


License

This project is open source. See the "LICENSE" file for details.

---

Happy Diwali 2026! 🪔
