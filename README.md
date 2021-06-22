# DSP
Digital Signal Processing Library for Xilinx Platforms

## Dependencies
Vivado 2019.2

## Synthesize Red Pitaya FPGA 
Project is in DSP/Projects/adc_recorder. Change the IP repository to the location of `.../DSP/cores` and `.../DSP/pavel-cores`.
Click generate bitstream in vivado, output will be at `DSP/project/adc_recorder/adc_recorder.runs/impl_1/system_wrapper.bit`.
Copy the bitstream to the Red Pitaya and load `cat bitmap.bit > /dev/xdevcfg`.

## Uploading Bitmap
A script `mvbitmap.sh` is included to automatically find the bitmap and use `scp` to upload it to the FPGA. Given a `program`, the script automatically looks for `./projects/$program/$program.runs/impl_1/system_wrapper.bit`. Alternatively, you can use a flag to specify the input file. The script then uploads this file to the FPGA.

Usage: `./mvbitmap.sh -p program [-s source_file] [-d remote_dir]`
- -p: Specify the Vivado program to upload
- -d: Specify the destination directory for `scp`
- -s: Specify the source file

## Building API and example program
```cd DSP/software/API
. settings.sh
make
```
Run `example` on the Red Pitaya.
