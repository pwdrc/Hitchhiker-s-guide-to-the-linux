# Audio and sound tips and troubleshooting

## Troubleshooting

### HDMI sound

#### HDMI sound issue on Ubuntu 22.04

*PROBLEM DESCRIPTION*
*After suspend, logout and sometimes since the boot, the none sound output works correctly.*

**SOLUTION**
Change line **GRUB_CMDLINE_LINUX=''** in **/etc/default/grub** to **GRUB_CMDLINE_LINUX="intel_iommu=on,igfx_off"**
Then:
> $ sudo update-grub # or mkconfig -o /boot/grub/grub.cfg
> $ reboot
