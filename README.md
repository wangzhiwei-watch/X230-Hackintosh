# X230-Hackintosh

macOS for ThinkPad X230 (Mojave & Catalina)


![0About](./screenshot/info.png)

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

![0Display](./screenshot/display.png)
![0Power](./screenshot/power.png)
![0Bluetooth](./screenshot/bluetooth.png)


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

### 1. Tools needed

- Clover 

### 2. Kexts used

- AirportBrcmFixup.kext (requires for DW1550)
- ACPIBatteryManager.kext
- ACPIPoller.kext
- AppleALC.kext
- BrcmBluetoothInjector.kext (requires for BrcmPatchRAM3.kext)
- BrcmFirmwareData.kext
- BrcmPatchRAM2.kext (BrcmPatchRAM3.kext for Catalina)
- EFICheckDisabler.kext
- FakeSMC.kext
- IntelMausi.kext
- Lilu.kext
- USBPorts.kext
- VoodooPS2Controller.kext
- VoodooSDHC.kext (or [Sinetek-rtsx](<https://github.com/cholonam/Sinetek-rtsx/releases>) if VoodooSDHC not working)
- WhateverGreen.kext

### 3. Patched

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
