# MIPS CPU Project

A collaborative implementation of a custom MIPS-like processor using VHDL, including datapath, control unit, ALU, and testbenches, designed and tested using Xilinx.

---

## 📦 Project Overview

This project implements a MIPS-like processor architecture supporting custom instructions and full single-cycle datapath operation. It includes all main processor components such as ALU, Control Unit, Register File, Memory.

---

## 📁 Repository Structure

```
mips-cpu-project/
 ├── src/               # VHDL source files
 ├── tb/                # Testbench files
 ├── constraints/       # Clock or FPGA board files if needed
 ├── docs/              # Diagrams and team documentation
 ├── sim/               # Simulation outputs/scripts
 ├── .gitignore         # Ignoring large build/temporary files
 ├── mips_cpu.xise      # the project file / open it in xilinx
 └── README.md
```

---

## 🧩 Requirements

* Git
* ModelSim / QuestaSim OR Xilinx ISE

---

## 🔽 How to Clone the Project

### **Method 1: SSH (recommended)**

```bash
git clone git@github.com:Abdo-Baheeg/mips_cpu.git
```

### **Method 2: HTTPS**

```bash
git clone https://github.com/Abdo-Baheeg/mips_cpu.git
```

---

## 🛠 How to Work on the Project

### **Option A: Work directly on the main branch**

```bash
git pull
# make your changes
git add .
git commit -m "describe your change"
git push
```

---

### **Option B: Create a branch for your feature (recommended)**

```bash
git checkout -b my-feature
# work on code
git add .
git commit -m "Implemented ALU enhancement"
git push origin my-feature
```

Then open a **Pull Request** on GitHub → request team review → merge.

---

### **Option C: Update project before working**

```bash
git pull             # get latest version
```

OR explicitly from main:

```bash
git pull origin main
```

---

### **Option D: Update your branch with new main changes**

```bash
git checkout my-feature
git pull origin main
```

Fix conflicts if needed → commit → push.

---

## 💡 Collaboration Rules

| Rule                            | Explanation        |
| ------------------------------- | ------------------ |
| Always pull before coding       | Avoid conflicts    |
| Use feature branches            | Cleaner reviews    |
| Add descriptive commit messages | Understand history |
| Request PR review               | Team validation    |
| Don’t push broken code to main  | Keep main stable   |



---

## 🏁 Final Notes

This README will be updated as the project evolves.
