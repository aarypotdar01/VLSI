# NOT Gate

## Objective

Design and simulate a NOT gate using Verilog HDL and verify its functionality using a Verilog testbench.

## Logic

A NOT gate produces an output that is the complement of its input.

### Boolean Expression

$$
Y = \overline{A}
$$

## Truth Table

| A | Y |
| - | - |
| 0 | 1 |
| 1 | 0 |

## Verilog Implementation

The NOT gate was implemented using the Verilog bitwise NOT operator:

```verilog
assign Y = ~A;
```

## Testbench

The testbench applies both possible input values:

* A = 0
* A = 1

The output `Y` is observed for each input condition.

## Simulation

**Tool:** Xilinx Vivado 2023.1

**Simulation Type:** Behavioral Simulation

### Simulation Waveform

![NOT Gate Simulation](waveform.jpg)

## Result

The simulation output matches the expected NOT gate truth table.

When:

$$
A=0
$$

the output is:

$$
Y=1
$$

When:

$$
A=1
$$

the output is:

$$
Y=0
$$

Therefore, the output is always the complement of the input.

## Files

| File            | Description                        |
| --------------- | ---------------------------------- |
| `not_gate.v`    | Verilog RTL design of the NOT gate |
| `not_gate_tb.v` | Verilog testbench                  |
| `waveform.png`  | Vivado simulation waveform         |
| `README.md`     | Project documentation              |

## Tools Used

* Verilog HDL
* Xilinx Vivado 2023.1

## Learning Outcome

This project helped me understand the implementation of a NOT gate using Verilog HDL, the use of the bitwise NOT operator, module instantiation, testbench development, and behavioral simulation using Vivado.

