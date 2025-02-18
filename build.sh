#!/bin/bash

BASEDIR=$(pwd)

menu_option_1() {
  cd builds/linux/photon-4/
  echo -e "\nCONFIRM: Build a VMware Photon OS 4 Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build a VMware Photon OS 4 Template for VMware vSphere ###
  echo "Building a VMware Photon OS 4 Template for VMware vSphere ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Applying the HashiCorp Packer Build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_2() {
  cd builds/linux/ubuntu-server-20-04-lts/
  echo -e "\nCONFIRM: Build a Ubuntu Server 20.04 LTS Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build a Ubuntu Server 20.04 LTS Template for VMware vSphere ###
  echo "Building a Ubuntu Server 20.04 LTS Template for VMware vSphere ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Applying the HashiCorp Packer Build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

menu_option_3() {
  cd builds/linux/ubuntu-server-18-04-lts/
  echo -e "\nCONFIRM: Build a Ubuntu Server 18.04 LTS Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build a Ubuntu Server 20.04 LTS Template for VMware vSphere ###
  echo "Building a Ubuntu Server 18.04 LTS Template for VMware vSphere ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Applying the HashiCorp Packer Build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

menu_option_4() {
  cd builds/linux/redhat-linux-8/
  echo -e "\nCONFIRM: Build a Red Hat Enerprise Linux 8 Server Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build an Red Hat Enerprise Linux 8 Server Template for VMware vSphere ###
  echo "Building a Red Hat Enerprise Linux 8 Server Template for VMware vSphere ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Applying the HashiCorp Packer Build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" \
      -var-file="../../rhsm.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_5() {
  cd builds/linux/almalinux-8/
  echo -e "\nCONFIRM: Build an AlmaLinux 8 Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build an AlmaLinux 8 Template for VMware vSphere ###
  echo "Building an AlmaLinux 8 Template for VMware vSphere ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_6() {
  cd builds/linux/rocky-linux-8/
  echo -e "\nCONFIRM: Build a Rocky Linux 8 Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build a Rocky Linux 8 Template for VMware vSphere ###
  echo "Building a Rocky Linux 8 Template for VMware vSphere ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_7() {
  cd builds/linux/centos-stream-8/
  echo -e "\nCONFIRM: Build a CentOS Stream 8 Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_8() {
  cd builds/linux/centos-linux-8/
  echo -e "\nCONFIRM: Build a CentOS Linux 8 Template for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build a CentOS Linux 8 Template for VMware vSphere ###
  echo "Building a CentOS Linux 8 Template for VMware vSphere ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../ansible.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_9() {
  cd builds/windows/windows-server-2022/
  echo -e "\nCONFIRM: Build all Microsoft Windows Server 2022 Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2022 Templates for VMware vSphere ###
  echo "Building all Microsoft Windows Server 2022 Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_10() {
  cd builds/windows/windows-server-2022/
  echo -e "\nCONFIRM: Build Microsoft Windows Server 2022 Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2022 Standard Templates for VMware vSphere ###
  echo "Building Microsoft Windows Server 2022 Standard Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      --only vsphere-iso.windows-server-standard-dexp,vsphere-iso.windows-server-standard-core \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

menu_option_11() {
  cd builds/windows/windows-server-2022/
  echo -e "\nCONFIRM: Build Microsoft Windows Server 2022 Datacenter Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2022 Datacenter Templates for VMware vSphere ###
  echo "Building Microsoft Windows Server 2022 Datacenter Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      --only vsphere-iso.windows-server-datacenter-dexp,vsphere-iso.windows-server-datacenter-core \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

menu_option_12() {
  cd builds/windows/windows-server-2019/
  echo -e "\nCONFIRM: Build all Microsoft Windows Server 2019 Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2019 Templates for VMware vSphere ###
  echo "Building all Microsoft Windows Server 2019 Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_13() {
  cd builds/windows/windows-server-2019/
  echo -e "\nCONFIRM: Build Microsoft Windows Server 2019 Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2019 Standard Templates for VMware vSphere ###
  echo "Building Microsoft Windows Server 2019 Standard Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      --only vsphere-iso.windows-server-standard-dexp,vsphere-iso.windows-server-standard-core \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

menu_option_14() {
  cd builds/windows/windows-server-2019/
  echo -e "\nCONFIRM: Build Microsoft Windows Server 2019 Datacenter Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2019 Datacenter Templates for VMware vSphere ###
  echo "Building Microsoft Windows Server 2019 Datacenter Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      --only vsphere-iso.windows-server-datacenter-dexp,vsphere-iso.windows-server-datacenter-core \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

menu_option_15() {
  cd builds/windows/windows-server-2016/
  echo -e "\nCONFIRM: Build all Microsoft Windows Server 2016 Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2016 Templates for VMware vSphere ###
  echo "Building all Microsoft Windows Server 2016 Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .

  ### All done. ###
  echo "Done."
}

menu_option_16() {
  cd builds/windows/windows-server-2016/
  echo -e "\nCONFIRM: Build Microsoft Windows Server 2016 Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2016 Standard Templates for VMware vSphere ###
  echo "Building Microsoft Windows Server 2016 Standard Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      --only vsphere-iso.windows-server-standard-dexp,vsphere-iso.windows-server-standard-core \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

menu_option_17() {
  cd builds/windows/windows-server-2016/
  echo -e "\nCONFIRM: Build Microsoft Windows Server 2016 Datacenter Templates for VMware vSphere."
  echo -e "\nContinue? (y/n)"
  read REPLY
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  fi

  ### Build Microsoft Windows Server 2016 Datacenter Templates for VMware vSphere ###
  echo "Building a Microsoft Windows Server 2016 Datacenter Templates for VMware vSphere  ..."
  rm -f output-vmware-iso/*.ova

  ### Initialize Hashicorp Packer and required plugins ###
  echo "Initializing Hashicorp Packer and required plugins ..."
  packer init .

  ### Apply the HashiCorp Packer Build ###
  echo "Starting the HashiCorp Packer build ..."
  packer build -force \
      --only vsphere-iso.windows-server-datacenter-dexp,vsphere-iso.windows-server-datacenter-core \
      -var-file="../../vsphere.pkrvars.hcl" \
      -var-file="../../build.pkrvars.hcl" \
      -var-file="../../common.pkrvars.hcl" .
      
  ### All done. ###
  echo "Done."
}

press_enter() {
  cd "$BASEDIR"
  echo -n "Press Enter to continue."
  read
  clear
}

info() {
  echo "GitHub Repository: github.com/rainpole/packer-vsphere/"
  echo "License: Apache License Version 2.0."
  echo ""
  echo "Versions Used:"
  echo "HashiCorp Packer >= 1.7.4."
  echo "HashiCorp Packer Plugin for VMware vSphere >= 1.0.1"
  echo "HashiCorp Packer Plugin for Windows Update >= 0.14.0"
  echo ""
  echo "For more information, visit review the README.md."
  read
}

incorrect_selection() {
  echo "Do or do not. There is no try."
}

until [ "$selection" = "0" ]; do
  clear
  echo ""
  echo "    ____             __                ____        _ __    __     "
  echo "   / __ \____ ______/ /_____  _____   / __ )__  __(_) /___/ /____ "
  echo "  / /_/ / __  / ___/ //_/ _ \/ ___/  / __  / / / / / / __  / ___/ "
  echo " / ____/ /_/ / /__/ ,< /  __/ /     / /_/ / /_/ / / / /_/ (__  )  "
  echo "/_/    \__,_/\___/_/|_|\___/_/     /_____/\__,_/_/_/\__,_/____/   "
  echo ""                                                                
  echo -n "  Select a HashiCorp Packer build for VMware vSphere:"
  echo ""
  echo ""
  echo "      Linux Distribution:"
  echo ""
  echo "    	 1  -  VMware Photon OS 4"
  echo "    	 2  -  Ubuntu Server 20.04 LTS"
  echo "    	 3  -  Ubuntu Server 18.04 LTS"
  echo "    	 4  -  Red Hat Enterprise Linux 8"
  echo "    	 5  -  AlmaLinux 8"
  echo "    	 6  -  Rocky Linux 8"
  echo "    	 7  -  CentOS Stream 8"
  echo "    	 8  -  CentOS Linux 8"
  echo ""
  echo "      Microsoft Windows:"
  echo ""
  echo "    	 9  -  Windows Server 2022 - All"
  echo "    	10  -  Windows Server 2022 - Standard Only"
  echo "    	11  -  Windows Server 2022 - Datacenter Only"
  echo "    	12  -  Windows Server 2019 - All"
  echo "    	13  -  Windows Server 2019 - Standard Only"
  echo "    	14  -  Windows Server 2019 - Datacenter Only"
  echo "    	15  -  Windows Server 2016 - All" 
  echo "    	16  -  Windows Server 2016 - Standard Only"
  echo "    	17  -  Windows Server 2016 - Datacenter Only"
  echo ""
  echo "      Other:"
  echo ""
  echo "        I   -  Information"
  echo "        Q   -  Quit"
  echo ""
  read selection
  echo ""
  case $selection in
    1 ) clear ; menu_option_1 ; press_enter ;;
    2 ) clear ; menu_option_2 ; press_enter ;;
    3 ) clear ; menu_option_3 ; press_enter ;;
    4 ) clear ; menu_option_4 ; press_enter ;;
    5 ) clear ; menu_option_5 ; press_enter ;;
    6 ) clear ; menu_option_6 ; press_enter ;;
    7 ) clear ; menu_option_7 ; press_enter ;;
    8 ) clear ; menu_option_8 ; press_enter ;;
    9 ) clear ; menu_option_9 ; press_enter ;;
    10 ) clear ; menu_option_10 ; press_enter ;;
    11 ) clear ; menu_option_11 ; press_enter ;;
    12 ) clear ; menu_option_12 ; press_enter ;;
    13 ) clear ; menu_option_13 ; press_enter ;;
    14 ) clear ; menu_option_14 ; press_enter ;;
    15 ) clear ; menu_option_15 ; press_enter ;;
    16 ) clear ; menu_option_16 ; press_enter ;;
    17 ) clear ; menu_option_17 ; press_enter ;;
    I ) clear ; info ; press_enter ;;
    Q ) clear ; exit ;;
    * ) clear ; incorrect_selection ; press_enter ;;
  esac
done