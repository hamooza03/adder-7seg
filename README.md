# 4-Bit Adder to 7-Segment Display (FPGA)

This project implements a 4-bit ripple-carry adder on an FPGA and displays the decimal result on **two 7-segment displays**.  



## 🧩 Features
- ✔️ 4-bit + 4-bit Ripple-Carry Adder  
- ✔️ Supports values 0 → 30  
- ✔️ Binary → BCD conversion  
- ✔️ Tens + Ones decimal digits


## 🗂️ File Overview
| File | Description |
|------|------------|
| `full_adder.v` | 1-bit full adder |
| `4bit_rca.v` | 4-bit ripple carry adder (uses 4 full adders) |
| `bin_to_bcd.v` | Converts 5-bit binary (0–30) to tens + ones |
| `hex_7seg_decoder.v` | Converts 4-bit hex digit → 7-segment pattern |
| `top.v` | Connects everything together for FPGA implementation |

---

## 🧠 System Overview
**Inputs**
- 4-bit A  
- 4-bit B  

**Processing Pipeline**
1️⃣ Add (Ripple Carry Adder)  
2️⃣ Extend to 5 bits: `{carry, sum}`  
3️⃣ Convert to BCD (Tens + Ones)  
4️⃣ Decode BCD digits to 7-segment  
5️⃣ Drive displays

**Outputs**
- HEX0 → Ones digit  
- HEX1 → Tens digit  
