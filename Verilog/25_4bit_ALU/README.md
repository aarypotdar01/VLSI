# 4-bit ALU – Verilog

## 📌 Project Overview

This project implements a **4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.

The ALU performs arithmetic, logical, shift, and comparison operations based on a 3-bit operation select signal. The design was developed and simulated using **Xilinx Vivado 2023.1**.

---

## 🧩 ALU Operations

| `ALU_SEL` | Operation   | Description |
| --------- | ----------- | ----------- |
| `000`     | ADD         | `A + B`     |
| `001`     | SUB         | `A - B`     |
| `010`     | AND         | `A & B`     |
| `011`     | OR          | `A \| B`    |
| `100`     | XOR         | `A ^ B`     |
| `101`     | LEFT SHIFT  | `A << 1`    |
| `110`     | RIGHT SHIFT | `A >> 1`    |
| `111`     | COMPARE     | `A == B`    |

---

## 🔌 Inputs and Outputs

### Inputs

| Signal    | Width | Description         |
| --------- | ----: | ------------------- |
| `A`       | 4-bit | First operand       |
| `B`       | 4-bit | Second operand      |
| `ALU_SEL` | 3-bit | Operation selection |

### Outputs

| Signal   | Width | Description                    |
| -------- | ----: | ------------------------------ |
| `RESULT` | 4-bit | ALU operation result           |
| `CARRY`  | 1-bit | Carry/borrow indication        |
| `ZERO`   | 1-bit | Indicates when `RESULT = 0000` |

---

## 🏗️ Block Diagram

```text
             ┌───────────────┐
 A[3:0] ────►│               │
             │               │
 B[3:0] ────►│    4-bit ALU  │────► RESULT[3:0]
             │               │
ALU_SEL[2:0]►│               │────► CARRY
             │               │
             │               │────► ZERO
             └───────────────┘
```

---

## 🧪 Simulation

The ALU was simulated using a Verilog testbench in **Xilinx Vivado 2023.1**.

The testbench verifies all eight supported operations.

### Simulation Results

| Operation   | Inputs         | Expected Result | Status |
| ----------- | -------------- | --------------- | ------ |
| ADD         | `0101 + 0011`  | `1000`          | ✅      |
| SUB         | `1000 - 0011`  | `0101`          | ✅      |
| AND         | `1100 & 1010`  | `1000`          | ✅      |
| OR          | `1100 \| 1010` | `1110`          | ✅      |
| XOR         | `1100 ^ 1010`  | `0110`          | ✅      |
| LEFT SHIFT  | `0011 << 1`    | `0110`          | ✅      |
| RIGHT SHIFT | `1100 >> 1`    | `0110`          | ✅      |
| COMPARE     | `0101 == 0101` | `0001`          | ✅      |

---

## 🚩 Status Flags

### ZERO Flag

The `ZERO` output becomes `1` whenever:

```text
RESULT = 0000
```

For example:

```text
A = 0101
B = 0101
Operation = SUB

0101 - 0101 = 0000

ZERO = 1
```

### CARRY Flag

For addition:

```text
A = 1111
B = 0001

1111 + 0001 = 1 0000
```

Therefore:

```text
RESULT = 0000
CARRY  = 1
```

For subtraction, `CARRY = 1` indicates that a borrow occurred (`A < B`).

---

## 📁 Project Structure

```text
25_4bit_ALU/
│
├── alu_4bit.v
├── alu_4bit_tb.v
├── waveform.png
└── README.md
```

---

## 🛠️ Tools Used

* **Verilog HDL**
* **Xilinx Vivado 2023.1**
* **Vivado Behavioral Simulation**
* **Windows**

---

## 🎯 Learning Outcomes

Through this project, the following concepts were practiced:

* Verilog module design
* Combinational logic
* `always @(*)`
* `case` statements
* Arithmetic operations
* Bitwise operations
* Shift operations
* Status flags
* Verilog testbench development
* Behavioral simulation
* Waveform analysis

---

## 🚀 Future Scope

The ALU can be extended to:

* 8-bit / 16-bit / 32-bit ALU
* Carry, overflow, sign and negative flags
* Multiplication and division
* Rotational operations
* Integration into a CPU datapath
* FPGA hardware implementation

---

**Project:** 25 – 4-bit ALU
**HDL:** Verilog
**Simulation Tool:** Xilinx Vivado 2023.1

