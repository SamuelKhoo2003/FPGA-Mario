# Overlays Documentation
- overlay3 - provided design + GPT Modified, DMA, using 14 bits buffer
- overlay4 - provided design + GPT Modified , DMA, using 26 bits buffer
- overlay5 - personal design, DMA 
- overlay6 - first VDMA design
- overlay7 - DMA without IP
- overlay8 - overlay5, but using ap_axiu<32,0,0,0>, meaning no side-channel
- **overlay9 - threshold, no DMA, runs on MMIO, no changes to config header files**
- overlay10 - overlay5, axiu not modified, added constant for TREADY signal
- overlay11 - overlay10, but with AXI4-Stream Data Width Controller
- overlay12 - Increment IP built in Verilog
- overlay13 - BGR2GRAY, no DMA, runs on MMIO, INPUT PTR WIDTH wrongly formatted
- **overlay14 - RGB2GRAY, no DMA, runs on MMIO, INPUT 32 OUTPUT 8**

Provided overlays: overlay9 and overlay14