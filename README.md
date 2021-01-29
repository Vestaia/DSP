# DSP
Digital Signal Processing Library for Xilinx Platforms

## Dependencies
Vivado 2019.2

## Synthesize Red Pitaya FPGA 
Project is in DSP/Projects/adc_recorder. Change the IP repository to the location of `.../DSP/cores` and `.../DSP/pavel-cores`.
Click generate bitstream in vivado, output will be at `DSP/project/adc_recorder/adc_recorder.runs/impl_1/system_wrapper.bit`.
Copy the bitstream to the Red Pitaya and load `cat bitmap.bit > /dev/xdevcfg`.

## Building API and example program
```cd DSP/software/API
. settings.sh
make
```
Run `example` on the Red Pitaya.
