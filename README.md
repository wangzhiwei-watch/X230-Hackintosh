# X230-Hackintosh

macOS for ThinkPad X230 (Mojave & Catalina)

## Pre-Installation

### 1. Update BIOS!!!

- Modified BIOS: [Github](https://github.com/n4ru/1vyrain/)

### 2. BIOS settings

### BIOS settings

| Item | Setting |
| ------------- | ------------ |
| Config/Network/Wake On Lan | Disabled |
| USB UEFI BIOS Support | Enabled |
| Always On USB | Disabled |
| USB 3.0 Mode | Enabled |
| Power Intel Rapid Start Technology | Disabled |
| Serial SATA Controller Mode Option | AHCI |
| Security Predesktop Authentication | Disabled |
| Security Chip | Disabled |
| Memory Protection Execution Prevention | Enabled |
| Virtualization | Disabled |
| Fingerprint Reader | Disabled |
| Anti Theft | Disabled |
| Computrace | Disabled |
| Secure Boot | Disabled |
| Startup Network Boot | PCI Lan |
| UEFI/Legacy Boot | UEFI Only |
| CSM Support | Disabled |
| Boot Mode | Quick |

### 3. Hardware

| Specifications      | Detail                                      |
| ------------------- | ------------------------------------------- |
| Processor           | Intel Core i5-3320M                         |
| Memory              | Samsung DDR3L 12GB Bus 1600MHz              |
| Hard Disk           | Samsung SSD P851                            |
| Integrated Graphics | Intel HD Graphics 4000                      |
| Monitor             | LG LP125WH2-SLB3 HD IPS 1366x768            |
| Sound Card          | Realtek ALC269                              |
| Wireless Card       | Intel Centrino Advanced-N 6205              |


#### What will work

- Power Management (C/P-States, Fan RPM, Speedstep, etc)
- Intel HD 4000 Graphics QE/CI
- Sleep (Sleep from menu + lid close sleep)
- Camera
- Ethernet
- Battery Status
- Brightness
- Keyboard, Trackpad and Trackpoint
- Sound (automatic headphone detection, mute, volume controls fully working)
- USB Ports
- SD Card Reader
- Bluetooth


#### Not working

- Fingerprint Reader
- VGA

#### WIFI

Inbuilt Intel WiFi won't work out of the box.

You can flash the BIOS and remove the whitelist if you plan to use Broadcom WLAN cards

- Atheros AR5B95 (Lenovo Part number: 20002357) - 802.11a/b/g/n 2.4 GHz (Drop support 10.14 and newer)
- Dell DW1510 – 802.11a/b/g/n 2.4 GHz & 5 GHz (Broadcom) (Drop support 10.15)
- Dell DW1515 – 802.11a/b/g/n 2.4 GHz & 5 GHz (Atheros)
- Dell DW1550 – 802.11ac 2.4 GHz & 5 GHz (Broadcom) (Recommended)

## Installation

....

## Post-Installation

### DOWNLOAD HERE: [EFI](https://github.com/banhbaoxamlan/X230-Hackintosh/releases/latest)

### Kexts

| Kext                      | Use                       | Download                  |
| ------------------------- | ------------------------- | ------------------------- |
| AirportBrcmFixup          | An open source kernel extension providing a set of patches required for non-native Airport Broadcom Wi-Fi cards | https://github.com/acidanthera/AirportBrcmFixup/releases |
| ACPIBatteryManager        | Implements an Advanced Configuration and Power Interface (ACPI) based battery manager kernel extension (kext/driver) for non-Apple laptops running MacOS | https://bitbucket.org/RehabMan/os-x-acpi-battery-driver/downloads/ |
| ACPIPoller                | Implements an ACPI-based polling kernel extension for MacOS | https://bitbucket.org/RehabMan/os-x-acpi-poller/downloads/ |
| AppleALC                  | An open source kernel extension enabling native macOS HD audio for not officially supported codecs without any filesystem modifications | https://github.com/acidanthera/AppleALC/releases         |
| BrcmPatchRAM              | Broadcom PatchRAM driver for MacOS | https://github.com/acidanthera/BrcmPatchRAM/releases |
| EFICheckDisabler          | Disable EFI Check | https://github.com/RehabMan/hack-tools/tree/master/kexts | https://github.com/acidanthera/AirportBrcmFixup/releases |
| FakeSMC                   | An open source SMC device driver/emulator | https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/ |
| IntelMausi                | Intel Ethernet LAN driver for macOS | https://github.com/acidanthera/IntelMausi/releases |
| Lilu                      | Arbitrary kext and process patching on macOS | https://github.com/acidanthera/Lilu/releases |
| USBPorts                  | Maps the USB ports| in this repository |
| VoodooPS2Controller       | Enables PS/2 Support on macOS | https://bitbucket.org/RehabMan/os-x-voodoo-ps2-controller/downloads/ |
| VoodooSDHC                | Enables SD Card Support on macOS | https://github.com/OSXLatitude/EDP/tree/master/kextpacks/USB/VoodooSDHC |
| WhateverGreen             | Various patches necessary for certain ATI/AMD/Intel/Nvidia GPUs | https://github.com/acidanthera/WhateverGreen/releases |

### Patched

- Copy patch to /ACPI/patched/

## Issue:

### Sound after sleep issues

- CodecCommander loaded in /L/E w/ Kext Utility

### Reband Broadcom Wireless

- Reband as APPLE AIRPORT EXTREME: [LINK](http://blog.legendt.com/rebranding-broadcom-802-11a-b-g-n-cards/)

### DW1510 on Catalina

- Copy IO80211Family.kext on on my EFI to CLOVER/kexts/10.15/

### Atheros AR5B95 on Mojave and Catalina

- Copy IO80211Family.kext High Serria to CLOVER/kexts/10.14/ or CLOVER/kexts/10.15/

## Support me

- Paypal: <https://www.paypal.me/thebinhluong0519>
- Ethereum: 0xC202255193D95979A7C937aA3CB5220FAD9E2aBe

## Credits

- [Apple](https://www.apple.com) for macOS
- [Acidanthera](https://github.com/acidanthera) for all the kexts/utilities that they made
- [Rehabman](https://github.com/RehabMan/) for the patches and guides and kexts
