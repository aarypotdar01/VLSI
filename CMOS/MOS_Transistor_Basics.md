# MOS Transistor Basics

This document contains the fundamental concepts, definitions, and important equations related to MOS transistors studied as part of my CMOS learning journey.

> **Source:** NPTEL CMOS course by IIT Roorkee 
> **Purpose:** Personal learning notes and technical reference.

---

## 1. MOSFET as a Switch

A MOSFET can be used as a voltage-controlled switch. The gate-to-source voltage (V_{GS}) controls whether a conducting channel exists between the source and drain.

For an NMOS:

* When (V_{GS} < V_T), the transistor is **OFF**.
* When (V_{GS} > V_T), the transistor turns **ON** and a conducting inversion channel is formed.

Where:

* (V_{GS}) = Gate-to-Source voltage
* (V_T) = Threshold voltage

---

## 2. Types of MOSFET

MOSFETs can primarily be classified based on the type of channel:

### NMOS

An NMOS transistor uses an **n-type channel** for conduction.

### PMOS

A PMOS transistor uses a **p-type channel** for conduction.

MOSFETs can also be classified as:

* Enhancement-mode MOSFET
* Depletion-mode MOSFET

---

## 3. Threshold Voltage

The **threshold voltage (V_T)** is the minimum gate-to-source voltage required to create a strong inversion layer and form a conducting channel between source and drain.

For an NMOS, the condition for strong inversion is approximately:

[
V_{GS} > V_T
]

For a PMOS, the corresponding condition is expressed using the appropriate voltage polarities.

### Important factors affecting (V_T)

* Oxide thickness
* Substrate doping
* Body voltage
* Semiconductor material
* Temperature

---

## 4. Current-Voltage Characteristics

The drain current (I_D) of a MOSFET depends on the applied terminal voltages.

For a long-channel NMOS, the operation is commonly divided into:

1. Cutoff region
2. Linear/Triode region
3. Saturation region

### Cutoff Region

[
V_{GS} < V_T
]

Ideally:

[
I_D \approx 0
]

### Linear/Triode Region

Condition:

[
V_{GS} > V_T
]

and

[
V_{DS} < V_{GS}-V_T
]

Drain current:

[
I_D = \mu_n C_{ox}\frac{W}{L}
\left[
(V_{GS}-V_T)V_{DS}
-\frac{V_{DS}^2}{2}
\right]
]

### Saturation Region

Condition:

[
V_{GS} > V_T
]

and

[
V_{DS} \geq V_{GS}-V_T
]

For an ideal long-channel MOSFET:

[
I_D =
\frac{1}{2}\mu_n C_{ox}\frac{W}{L}(V_{GS}-V_T)^2
]

Where:

* (\mu_n) = Electron mobility
* (C_{ox}) = Oxide capacitance per unit area
* (W) = Channel width
* (L) = Channel length

---

## 5. Pinch-Off

**Pinch-off** occurs when the inversion channel disappears at the drain end of the channel as (V_{DS}) is increased.

The onset of pinch-off occurs approximately when:

[
V_{DS}=V_{GS}-V_T
]

At this point, the MOSFET enters the saturation region.

---

## 6. Assumptions for Long-Channel MOSFET

The basic long-channel MOSFET equations are derived using several assumptions.

Important assumptions include:

* Channel length is sufficiently large.
* Gradual channel approximation is valid.
* Carrier velocity does not reach saturation.
* Mobility is approximately constant.
* Short-channel effects are neglected.
* Channel length modulation is neglected in the ideal model.
* The oxide is considered ideal for basic analysis.

These assumptions allow simplified analytical equations to be used for manual MOSFET analysis.

---

## 7. Transfer Characteristics

The **transfer characteristic** describes the relationship between drain current (I_D) and gate-to-source voltage (V_{GS}), generally for a specified (V_{DS}).

For an ideal long-channel NMOS in saturation:

[
I_D =
\frac{1}{2}\mu_n C_{ox}\frac{W}{L}(V_{GS}-V_T)^2
]

Therefore:

[
I_D \propto (V_{GS}-V_T)^2
]

for the ideal saturation-region model.

The transfer characteristic is useful for understanding how the gate voltage controls the drain current.

---

## 8. Subthreshold Slope

When:

[
V_{GS}<V_T
]

the MOSFET is theoretically considered to be in cutoff. However, a small drain current still flows due to **subthreshold conduction**.

The **subthreshold slope** represents the change in gate voltage required to change the drain current by one decade.

It is commonly expressed in:

[
mV/decade
]

A lower subthreshold slope generally indicates better switching characteristics.

At room temperature, the ideal subthreshold slope is approximately:

[
60\ mV/decade
]

---

## 9. Body Effect

The **body effect** refers to the change in threshold voltage caused by a voltage difference between the source and body terminals.

For an NMOS, a commonly used expression is:

[
V_T =
V_{T0}
+
\gamma
\left(
\sqrt{2\phi_F+V_{SB}}
---------------------

\sqrt{2\phi_F}
\right)
]

Where:

* (V_T) = Threshold voltage with body bias
* (V_{T0}) = Threshold voltage when (V_{SB}=0)
* (\gamma) = Body-effect coefficient
* (\phi_F) = Fermi potential
* (V_{SB}) = Source-to-body voltage

Increasing (V_{SB}) generally increases the threshold voltage of an NMOS.

---

## 10. Channel Length Modulation (CLM)

In the ideal long-channel model, the drain current in saturation is assumed to be independent of (V_{DS}).

In an actual MOSFET, increasing (V_{DS}) beyond saturation causes the effective channel length to decrease slightly.

This phenomenon is called **Channel Length Modulation (CLM)**.

The drain current can be approximated as:

[
I_D =
\frac{1}{2}\mu_n C_{ox}\frac{W}{L}
(V_{GS}-V_T)^2
(1+\lambda V_{DS})
]

Where:

[
\lambda = \text{Channel Length Modulation coefficient}
]

Because of CLM, the (I_D-V_{DS}) curve has a finite slope in saturation.

---

## 11. Types of Device Scaling

Device scaling refers to reducing the dimensions of MOSFETs to achieve higher performance and greater circuit density.

Common approaches include:

### Constant-Field Scaling

Device dimensions and voltages are scaled such that the electric field remains approximately constant.

### Constant-Voltage Scaling

Device dimensions are reduced while supply voltage is not proportionally reduced.

Scaling affects:

* Device dimensions
* Supply voltage
* Electric field
* Current
* Power
* Speed
* Device density

---

## 12. Velocity Saturation

In a MOSFET, carrier velocity initially increases with electric field.

At sufficiently high electric fields, the carrier velocity approaches a maximum value known as the **saturation velocity**.

This phenomenon is called **velocity saturation**.

Instead of continuously increasing with electric field, carrier velocity approaches:

[
v \approx v_{sat}
]

Velocity saturation becomes increasingly important as MOSFET dimensions decrease and electric fields become stronger.

---

## 13. Drain-Induced Barrier Lowering (DIBL)

**Drain-Induced Barrier Lowering (DIBL)** is a short-channel effect in which an increase in drain voltage reduces the potential barrier near the source.

As a result, the threshold voltage decreases with increasing drain voltage.

The DIBL coefficient is commonly expressed as:

[
DIBL =
-\frac{\Delta V_T}{\Delta V_{DS}}
]

Typical units are:

[
mV/V
]

DIBL becomes more significant as the channel length is reduced.

---

## 14. Punchthrough

**Punchthrough** is a short-channel effect that occurs when the depletion regions associated with the source and drain extend toward each other and eventually interact.

As a result, the gate loses effective control over the channel and a significant current can flow between source and drain.

Punchthrough is therefore an important limitation in aggressively scaled MOSFETs.

---

## 15. Model for Manual Analysis

MOSFET models are used to simplify transistor analysis.

For basic manual analysis, the long-channel square-law model is commonly used.

For an NMOS:

### Cutoff

[
V_{GS}<V_T
]

[
I_D \approx 0
]

### Linear/Triode

[
V_{GS}>V_T
]

[
V_{DS}<V_{GS}-V_T
]

[
I_D =
\mu_n C_{ox}\frac{W}{L}
\left[
(V_{GS}-V_T)V_{DS}
-\frac{V_{DS}^2}{2}
\right]
]

### Saturation

[
V_{GS}>V_T
]

[
V_{DS}\geq V_{GS}-V_T
]

[
I_D =
\frac{1}{2}\mu_n C_{ox}\frac{W}{L}
(V_{GS}-V_T)^2
]

With channel length modulation:

[
I_D =
\frac{1}{2}\mu_n C_{ox}\frac{W}{L}
(V_{GS}-V_T)^2
(1+\lambda V_{DS})
]

These equations form the basic foundation for manual MOSFET calculations.

---

# Key Takeaways

* A MOSFET is a voltage-controlled device.
* (V_T) determines the approximate onset of strong inversion.
* MOSFET operation is commonly divided into cutoff, linear, and saturation regions.
* Pinch-off marks the onset of saturation in the long-channel model.
* The ideal square-law model is useful for basic manual analysis.
* Body effect changes threshold voltage.
* Channel length modulation causes the drain current to increase with (V_{DS}) in saturation.
* Short-channel effects become increasingly important as device dimensions shrink.
* Velocity saturation, DIBL, and punchthrough are important short-channel effects.
* Device scaling enables higher density and performance but introduces new physical limitations.

---

## References

* NPTEL – CMOS-related coursework, IIT Roorkee 
* Semiconductor device and CMOS design concepts studied during the course

> **Note:** These are personal learning notes based on concepts studied through the NPTEL course. The explanations have been organized and written for personal reference.
