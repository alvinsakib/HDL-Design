# :rocket: HDL Design
There are two types of circuit - **Combinational Circuit** and **Sequential Circuit**.  
Combinational Circuits design:
1. Using assign statement
2. Using always block and if statement
3. Using always block and case statement  

[variable-name] = [expression];  // Blocking Assignment  
[variable-name] <= [expression];  // nonBlocking Assignment  

Use **Blocking Assignment** for a **Combinational Circuit**.  
Use **Non Blocking Assignment** for a **Sequential Circuit**.  

## :carpentry_saw: Environment Setup  
- Download Visual Studio Code
  [VSCode Website](https://code.visualstudio.com/)
- Download and Install Iverilog
  [ICARUS VERILOG](https://bleyer.org/icarus/)
- Add Verilog HDL Extension in VSCODE Editor

## :file_folder: Directory Setup
- Download Full Folders `VERILOG TEST` and open it on VScode
- Click `Terminal -> New Terminal`
- run `cd Decoder`

## :pinata: Run HDL Code
- Now run all verilog `.v` file and create `decode.out` or `decode.vpp` object file
  ```bash
  iverilog -o decode.out decode.v decode_tb.v
  ```
- Run the object file and it create `decode.vcd` for using dumpfile in `decode_tb.v` files
  ```bash
  vvp decode.out
  ```
- Now visualize it using **GTKWave**
  ```bash
  gtkwave decode.vcd
  ```
## :joystick: Now run all the subfolders and understand the codes and `test bench`

