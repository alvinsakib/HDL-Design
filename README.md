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
  ```bash<img width="1843" height="699" alt="Alu_test" src="https://github.com/user-attachments/assets/1a95cd4f-7598-4211-99e4-1e8b0c9a3b5e" />

  vvp decode.out
  ```
- Now visualize it using **GTKWave**
  ```bash
  gtkwave decode.vcd
  ```
## :joystick: Now we work on `ALU_test` folders. And See visualisations
- RTL Timing Diagram
  ```bash
  iverilog -o ALU.vvp ALU_ADD_SUB_Nbit.v ALU_SHL_Nbit.v ALU.v ALU_tb.v
  ```
  ```bash
  vvp ALU.vvp
  ```
  ```bash
  gtkwave ALU_test.vcd
  ```
  Output:
<img width="1843" height="699" alt="Alu_test" src="https://github.com/user-attachments/assets/273a8c4e-a242-4955-bc09-6df04bf94cf1" />

- Run Synthesis
  ```bash
  cd openlane2/designs/ALU_test
  ```
  ```bash
  openlane config.json
  ```
  
- RTL Synthesis Summary
  ```bash
  cd runs/RUN_2025-06-10_20-04-12/06-yosys-synthesis/reports
  ```
  ```bash
  gedit stat.rpt
  ```
  Output:
<img width="534" height="352" alt="Summary" src="https://github.com/user-attachments/assets/52fb430b-843f-4dca-a02e-f6c6723bc955" />

- RTL Synthesis Design Flowchart
  ```bash
  cd runs/RUN_2025-06-10_20-04-12/06-yosys-synthesis/reports
  ```
  ```bash
  xdot hierarchy.dot
  ```
  ```bash
  xdot primitive_techmap.dot
  ```
  Flowchart-01:
  <img width="1846" height="1000" alt="02_Heirarchy" src="https://github.com/user-attachments/assets/3dc74441-01ee-4b48-8f56-0c27b6333d7d" />

  Flowchart-02:
  <img width="1846" height="1000" alt="03_Primitive" src="https://github.com/user-attachments/assets/88c34bda-c44e-4b9d-b356-a9cc6aa53317" />

- Floor Plan
  ```bash
  cd runs/RUN_2025-06-10_20-04-12/13-openroad-floorplan
  ```
  ```bash
  gedit openroad-floorplan.log
  ```
 Output:
<img width="750" height="246" alt="floorplan" src="https://github.com/user-attachments/assets/371e5323-c92a-49f5-a578-43716d099357" />

- Power Report
  ```bash
  cd runs/RUN_2025-06-10_20-04-12/54-openroad-stapostpnr/nom_tt_025C_1v80
  ```
  ```bash
  gedit power.rpt
  ```
  Output:
<img width="920" height="417" alt="04_power_report" src="https://github.com/user-attachments/assets/47b370f0-f19a-4293-ba55-27f29b1db69d" />

- GDS Layout
  ```bash
  cd runs/RUN_2025-06-10_20-04-12/final/gds
  ```
  ```bash
  klayout ALU.gds
  ```
  Output:
<img width="891" height="902" alt="05_ALU_gds" src="https://github.com/user-attachments/assets/9c8632d6-593d-4616-82de-9fb15de46a5b" />

- Heatmap
  ```bash
  cd runs/RUN_2025-06-10_20-04-12/final/odb
  ```
  ```bash
  openroad -gui
  ```
  Output:
<img width="1387" height="670" alt="06_heatmap" src="https://github.com/user-attachments/assets/fdd1a7d8-dc34-48ec-b193-7b60004432c3" />
