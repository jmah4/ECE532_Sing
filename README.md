# ECE532 Karaoke Machine

## Design Tree
```
├── Final Group Report.pdf //Our final report
├── README.md
├── adc_controller_decimator //IP repo for the ADC controller and decimator
│   ├── README.md
│   └── ip_repo_2.zip
├── constraint_files //Constraints files
│   ├── NexysVideo_Master.xdc
│   └── vdma_timing_workaround.xdc
├── create_project.tcl //Script for setting the IP repo locations and constraints files in a new project
├── final demo.pptxi //The PPT we showed at the final demo
├── generate_bd.tcl //Creates the block diagram in project
├── hdmi_wrapper.bit //Pre-compiled bitstream
├── oleds //IP repo for the OLED IP
│   ├── README.md
│   └── ip_repo_oleds.zip
├── software //Software to be run on Microblaze
│   └── software.zip
└── tone_matching //IP repo for the tone matching IP
    ├── README.md
    └── ip_repo_tone.zip
```


## To Get Started:

If you want to run the project from scratch (instead of using the bitstream), follow these steps.

### Prerequisites: 

You'll need Vivado 2020.1, to download this repo, and to download the following example projects from Diligent (to use their IPs):

- [Nexys Video HDMI Demo](https://github.com/Digilent/Nexys-Video-HDMI/releases/tag/v2020.1-1-rc)
- [Nexys Video DMA Audio Demo](https://digilent.com/reference/lib/exe/fetch.php?tok=acc07d&media=https%3A%2F%2Fgithub.com%2FDigilent%2FNexys-Video%2Freleases%2Fdownload%2FDMA%2F2020.1-1%2FNexys-Video-DMA-hw.xpr.zip)



### Setting Up the Project

1. After downloading this repo, you'll need to un-zip the archives in `adc_controller_decimator`, `oleds`, and `tone_matching`. These archives contain the IP repos of the custom IPs.

2. After unzipping the custom IPs included in this repo, open `create_project.tcl`. This script creates the project, sets the IP locations of the custom IPs the project uses, and imports the constraints files. You'll see some of the file locations have placeholders (e.g., "UNZIPPED\_IP\_LOCATION\_HERE"). Replace those placeholder locations with the actual locations of the files you downloaded in the Prerequisites section.

3. Then, open Vivado 2020.1. In the Tcl console, run `source /REPO_DOWNLOAD_LOCATION_HERE/create_project.tcl`

4. Once you have confirmed the IP repos and constraints have been set, in the Tcl console, run `source /REPO_DOWNLOAD_LOCATION_HERE/generate_bd.tcl`.

5. Now you can generate the bitstream!


### Running the Software:

1. Un-zip the `software/software.zip` archive. This folder contains the BSP and application code for the project.

2. Open the Vitis IDE, and set the project directory to the folder you un-zipped in Step 1.

3. From here, you should be able to compile and run the Microblaze code.
