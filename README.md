# gen_amba_apb

[Preparing gen_amba_apb]

1. Clean directory
   $ make cleanupall

2. Compile
   $ make

3. Testing
   $ ./gen_amba_apb -h
   $ ./gen_amba_apb --ahb --slv=4 --out=ahb_to_apb_s4.v
   or 
   $ ./gen_amba_apb --axi --slv=4 --out=axi_to_apb_s4.v

[Verification]

1. Go to "verification/sim/modelsim" directory

2. Clean directory
   $ make cleanupall

3. Run simulation
   $ make
   or
   $ make MST=ahb SLV=4
   or
   $ make MST=axi SLV=4

4. Check wave.vcd

2018.07.
Have fun!
Ando.
