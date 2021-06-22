# DSP
Digital Signal Processing Library for Xilinx Platforms

## Dependencies
Vivado 2019.2

## Synthesize Red Pitaya FPGA 
Project is in DSP/Projects/adc_recorder. Change the IP repository to the location of `.../DSP/cores` and `.../DSP/pavel-cores`.
Click generate bitstream in vivado, output will be at `DSP/project/adc_recorder/adc_recorder.runs/impl_1/system_wrapper.bit`.
Copy the bitstream to the Red Pitaya and load `cat bitmap.bit > /dev/xdevcfg`.

## Uploading Bitmap
A script `mvbitmap.sh` is included to automatically find the bitmap and use `lftp` to upload it to the FPGA. Given a `program`, the script automatically looks for `./projects/$program/$program.runs/impl_1/system_wrapper.bit`. Alternatively, you can use a flag to specify the input file. The script then uploads this file to the FPGA.
The only required parameter is `programName` but you can specify a few things using flags:
- -l: Login Username
- -i: Device ip
- -p: Password for login
- -s: Specify source file
- -r: Specify remote directory to output to

## Building API and example program
```cd DSP/software/API
. settings.sh
make
```
Run `example` on the Red Pitaya.
