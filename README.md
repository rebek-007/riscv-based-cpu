
# Instruction Fetch Unit 
In an instruction cycle, the instruction fetch unit (IFU), also known as the instruction issue unit, is in charge of arranging programme instructions that must be acquired from memory and executed in the proper sequence before sending them to the decode unit.




## Run Locally
Install Icarus Verilog(https://bleyer.org/icarus/) and GTKWave(https://gtkwave.sourceforge.net/)

Clone the project

```bash
  git clone https://github.com/rebek-007/single-cycle-cpu
```

Go to the project directory

```bash
  cd Instruction Fetch Unit
```
Open a terminal window to the address of the folder

```bash
  iverilog -o sim Instruction_Fetch_Unit_tb.v
```
A file named sim will be created. 
```bash
  vvp sim
```
A file wih the extension .vcd will be created. 
```
gtkwave Instruction_Fetch_Unit_Waveform.vcd
```

A timing diagram will appear. We can study the behavior of the unit from it .