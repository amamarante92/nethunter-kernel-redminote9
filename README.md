#Kali Nethunter Kernel for Xiaomi Redmi Note 9

Modified from Arafattex's kernel [source](https://github.com/Shas45558/shas-dream-oc-mt6768-a11). I just cloned the original source and modified configurations to match Nethunter's hardware requirements.

To modify kernel configurations, go to kali-nethunter-kernel folder and run ./build.sh, select option "Configure and compile Kernel from scratch"

#Disclamer

I am not responsible for any damage you may cause to yourself or to others by misusing the sofware provided here. Stay inside legal limits and test only on your systems or otherwise authorized by the system owner.

# How to build:
1. Clone or download code.

2. Go to [this link](https://github.com/kdrag0n/proton-clang.git) ,clone or download and put all files in /clang-13/aaa (create this folder inside the root folder).

3. Then run ./merlinp.sh to build kernel for Redmi Note 9. 

4. Go AnyKernel3-master to get your zip file.

# How to install

1. Flash stock rom version V12.5.1.0.RJOMIXM (never tested other versions) from fastboot (bootloader need to be unlocked, be careful to not lock it again when flashing).

2. Flash vbmeta_vd171--V12.5.1.0.RJOMIXM.img to vbmeta partition (whitout it, the device will enter a bootloop).

3. Flash OrangeFox-Unofficial-merlinx.img to recovery partition.

4. Put the zip you compiled in an external SD Card.

5. Reboot to recovery

6. Use Orage Fox Recovery to install the kernel's zip.

7. Install Magisk APK

8. Use Orange Fox to flash the magisk patched image, this will install root on the device.

9. Boot to system and use Magisk Manager to install Kali Nethunter and wifi firmwares.

All files mentioned here are provided in the important files folder.

# Aditional credits:

1. [Orange Fox Recovery](https://xdaforums.com/t/unofficial-recovery-orangefox-recovery-project-r-vendor-a11_a12_a13-merlinx.4600431/)
2. [Patched vbmeta image](https://xdaforums.com/t/vbmeta-img-patched-vbmeta-image-partition-disabled-verity-disabled-verification-for-merlin-xiaomi-redmi-10x-4g-xiaomi-redmi-note-9.4221075/)
3. [Magisk APK](https://github.com/topjohnwu/Magisk/releases/tag/v26.4)
4. [Tested Stock Rom](https://mifirm.net/download/5582#google_vignette)
5. [Building Nethunter](https://www.kali.org/docs/nethunter/building-nethunter/)
