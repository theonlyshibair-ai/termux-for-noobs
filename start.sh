#!/bin/bash

# --- Introduction & Setup ---
clear
echo "Hello there, mate!" | lolcat
echo "This is the ultimate Termux installation script." | lolcat
echo "It's a stable release with no known bugs!" | lolcat
sleep 3

# --- Check & Install Lolcat ---
if ! command -v lolcat &> /dev/null; then
    echo "Lolcat not found. Installing it now for a colorful experience..." | lolcat
    pkg install lolcat -y
    clear
fi

echo "We're about to install a massive collection of packages for you." | lolcat
echo "Please be patient, this will take a while." | lolcat
sleep 3
clear

# --- Section 1: System Update & Upgrade ---
echo "--- Section 1: Updating and Upgrading Termux ---" | lolcat
read -p "Do you want to update and upgrade your system? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Starting update..." | lolcat
    pkg update -y
    clear
    echo "Termux Updated!" | lolcat
    sleep 2
    echo "Starting upgrade..." | lolcat
    pkg upgrade -y
    clear
    echo "Termux Upgraded!" | lolcat
    sleep 2
else
    echo "Skipping this section." | lolcat
fi
clear

# --- Section 2: Core & Dev Essentials ---
echo "--- Section 2: Installing Core & Dev Packages ---" | lolcat
read -p "Do you want to install core packages like git, make, clang, etc.? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing core packages..." | lolcat
    pkg install -y git wget curl nano make binutils aalib aapt ack-grep zip unzip 7zip tar bzip2
    clear
    echo "Core packages installed!" | lolcat
    sleep 2
else
    echo "Skipping this section." | lolcat
fi
clear

# --- Section 3: Programming Languages & Compilers ---
echo "--- Section 3: Installing Programming Languages ---" | lolcat
read -p "Do you want to install Python, PHP, Node.js, and more? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing compilers and interpreters..." | lolcat
    pkg install -y python python2 python3 php ruby golang clang rust nodejs openjdk-17
    clear
    echo "Programming languages installed!" | lolcat
    sleep 2
else
    echo "Skipping this section." | lolcat
fi
clear

# --- Section 4: Networking & Security Tools ---
echo "--- Section 4: Installing Hacking & Net Tools ---" | lolcat
read -p "Do you want to install security tools like nmap, metasploit, hydra, etc.? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing networking and security tools..." | lolcat
    pkg install -y nmap openssh hydra metasploit proot-distro
    clear
    echo "Hacking and Net Tools installed!" | lolcat
    sleep 2
else
    echo "Skipping this section." | lolcat
fi
clear

# --- Section 5: Fun & Terminal Utilities ---
echo "--- Section 5: Installing Fun & Useful Utilities ---" | lolcat
read -p "Do you want to install fun tools like lolcat, figlet, cowsay, etc.? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing fun utilities..." | lolcat
    pkg install -y lolcat cmatrix cowsay figlet toilet w3m
    clear
    echo "Fun utilities installed!" | lolcat
    sleep 2
else
    echo "Skipping this section." | lolcat
fi
clear

# --- Section 6: Pip & Gem Libraries ---
echo "--- Section 6: Installing Python and Ruby Libraries ---" | lolcat
read -p "Do you want to install popular libraries with pip and gem? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing libraries..." | lolcat
    pip install colorama requests bundle --upgrade pip
    clear
    pip2 install requests wget
    clear
    gem install bundle bundler
    clear
    echo "Libraries installed!" | lolcat
    sleep 2
else
    echo "Skipping this section." | lolcat
fi
clear

# --- Final Message ---
echo "Wait..." | lolcat
sleep 2
echo "All done. You may restart Termux to get the best experience." | lolcat
sleep 4
echo " "
echo "Thanks for using this ultimate script!" | lolcat
echo " "
