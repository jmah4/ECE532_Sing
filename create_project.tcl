create_project project_1 ~/PROJECT_LOCATION_HERE -part xc7a200tsbg484-1

set_property board_part digilentinc.com:nexys_video:part0:1.1 [current_project]

set_property  ip_repo_paths  {~/UNZIPPED_IP_LOCATION_HERE/ip_repo_2 ~/UNZIPPED_IP_LOCATION_HERE/Nexys-Video-HDMI-hw.xpr ~/UNZIPPED_IP_LOCATION_HERE/ip_repo_oleds ~/UNZIPPED_IP_LOCATION_HERE/Nexys-Video-DMA-hw.xpr ~/UNZIPPED_IP_LOCATION_HERE/ip_repo_tone} [current_project]

update_ip_catalog

add_files -fileset constrs_1 -norecurse {~/DOWNLOADED_CONSTRAINT_FILE_LOCATION_HERE/NexysVideo_Master.xdc ~/DOWNLOADED_CONSTRAINT_FILE_LOCATION_HERE/vdma_timing_workaround.xdc}

import_files -fileset constrs_1 {~/DOWNLOADED_CONSTRAINT_FILE_LOCATION_HERE/NexysVideo_Master.xdc ~/DOWNLOADED_CONSTRAINT_FILE_LOCATION_HERE/vdma_timing_workaround.xdc}

