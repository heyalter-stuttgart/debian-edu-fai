#Default: Edu+Roaming-EFI-Workstation/MATE

Name: Edu/Minimal
Description: Minimal Debian Edu installation via FAI
Short: Installs a Debian Edu client system, text console only
Long: Installs a Debian Edu client system, text console only.
Use this installation profile for server-like systems that do not
need a graphical login.
Classes: INSTALL FAIBASE DEBIAN DEBIAN_11 EDU LVM LVM_EDU NONFREE NONFREE_11

Name: Edu+EFI-Workstation/MATE
Description: Debian Edu workstation, powered by Mate Desktop
Short: Debian Edu workstation with Mate desktop will be installed
Long: Debian Edu workstation with Mate desktop will be installed.
Classes: INSTALL FAIBASE DEBIAN DEBIAN_11 EDU WORKSTATION XORG MATE LVM LVM_EDU NONFREE NONFREE_11

Name: Edu+Roaming-EFI-Workstation/MATE
Description: Debian Edu roaming workstation, powered by Mate Desktop
Short: Debian Edu roaming workstation with Mate desktop will be installed
Long: Debian Edu roaming workstation with Mate desktop will be installed.
Classes: INSTALL FAIBASE DEBIAN DEBIAN_11 EDU ROAMING_WORKSTATION XORG MATE LVM LVM_EDU_ROAMING NONFREE NONFREE_11

Name: Edu+BIOS-Workstation/MATE
Description: Debian Edu workstation, powered by Mate Desktop
Short: Debian Edu workstation with Mate desktop will be installed
Long: Debian Edu workstation with Mate desktop will be installed.
Classes: INSTALL FAIBASE DEBIAN DEBIAN_11 EDU WORKSTATION XORG MATE LVM LVM_EDU_LEGACY NONFREE NONFREE_11

Name: Edu+Roaming-BIOS-Workstation/MATE
Description: Debian Edu roaming workstation, powered by Mate Desktop
Short: Debian Edu roaming workstation with Mate desktop will be installed
Long: Debian Edu roaming workstation with Mate desktop will be installed.
Classes: INSTALL FAIBASE DEBIAN DEBIAN_11 EDU ROAMING_WORKSTATION XORG MATE LVM LVM_EDU_ROAMING_LEGACY NONFREE NONFREE_11

Name: Edu+Workstation/GNOME
Description: Debian Edu workstation, powered by Gnome Desktop
Short: Debian Edu workstation with Gnome desktop will be installed
Long: Debian Edu workstation with Gnome desktop will be installed.
Classes: INSTALL FAIBASE DEBIAN DEBIAN_11 EDU WORKSTATION XORG GNOME LVM LVM_EDU NONFREE NONFREE_11

Name: Edu+Roaming-Workstation/GNOME
Description: Debian Edu roaming workstation, powered by Gnome Desktop
Short: Debian Edu roaming workstation with Gnome desktop will be installed
Long: Debian Edu roaming workstation with Gnome desktop will be installed.
Classes: INSTALL FAIBASE DEBIAN DEBIAN_11 EDU ROAMING_WORKSTATION XORG GNOME LVM LVM_EDU_ROAMING NONFREE NONFREE_11

Name: Inventory
Description: Show hardware info
Short: Show some basic hardware infos
Long: Execute commands for showing hardware info
Classes: INVENTORY

Name: Sysinfo
Description: Show detailed system information
Short: Show detailed hardware and system  information
Long: Execute a lot of commands for collecting system information
Classes: SYSINFO