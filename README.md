#  32-bit Carry Select Adder (CSA) on FPGA

##  About the Project

This project is a practical implementation of a **32-bit Carry Select Adder (CSA)** using Verilog HDL.
The goal was to design a faster adder by reducing the delay caused by carry propagation in traditional adders.

Instead of waiting for carry to ripple through all bits, this design computes results in parallel and selects the correct one using multiplexers — making it much more efficient.

---

##  Why This Project?

In digital systems, addition is one of the most frequently used operations.
Traditional adders like Ripple Carry Adders are simple but slow.

This project explores how we can **improve speed using smart architecture design**, which is a key concept in VLSI and FPGA-based systems.

---

##  How It Works (Simple Explanation)

* The 32-bit adder is divided into smaller **4-bit blocks**
* Each block calculates:

  * Result assuming carry = 0
  * Result assuming carry = 1
* A **multiplexer (MUX)** then selects the correct result

👉 This avoids long carry propagation delays and improves speed.

---

## 🛠️ Tech Stack

* Verilog HDL
* EDA Playground (Simulation)
* EPWave (Waveform Visualization)
* Xilinx Vivado (for FPGA implementation)

---

##  Project Structure

```
CSA_32bit_FPGA/
│── src/            # Verilog modules
│── sim/            # Testbench & waveform
│── constraints/    # FPGA pin mapping
│── docs/           # Diagrams / report
│── README.md
```

---

##  Simulation Results

The design was tested with multiple inputs:

| A        | B   | Cin | Sum | Cout |
| -------- | --- | --- | --- | ---- |
| 10       | 5   | 0   | 15  | 0    |
| 15       | 20  | 1   | 36  | 0    |
| 100      | 200 | 0   | 300 | 0    |
| FFFFFFFF | 1   | 0   | 0   | 1    |

👉 The last case clearly shows **overflow handling**, confirming correct functionality.

---

## 📸 Waveform Output

<p align="center">
  <img src="sim/waveform.png" width="700"/>
</p>

---

## 🔧 FPGA Implementation

Due to limited hardware inputs on FPGA boards:

* Only lower 8 bits are used for input/output
* Internally, the design still operates on full **32-bit data**

Inputs:

* Switches → Operands
* Push Button → Carry Input

Outputs:

* LEDs → Result
* LED → Carry Out

---

##  Key Highlights

* Faster than Ripple Carry Adder
* Modular and scalable design
* Clean separation of logic using smaller blocks
* Ready for FPGA deployment
* Verified using waveform analysis

---

##  What I Learned

* How different adder architectures affect performance
* Trade-offs between speed, area, and complexity
* Writing modular Verilog code
* Debugging using simulation waveforms
* Basics of FPGA implementation

---

## 🔮 Future Improvements

* Variable block size CSA (for better optimization)
* Integration into a full ALU design
* Power optimization
* Pipeline-based design

---

##  Author

**Gaurav Shinde**

---

##  Final Thoughts

This project helped me understand how small architectural changes can significantly improve performance in digital systems.
It’s a strong foundation for building more complex designs like ALUs and processors.

---
