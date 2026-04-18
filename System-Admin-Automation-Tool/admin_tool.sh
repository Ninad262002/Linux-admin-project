#!/bin/bash

# ==============================
# ADMIN TOOL (Linux Automation)
# ==============================

# Function: System Info
system_info() {
    echo "----- System Info -----"
    echo "Current Directory: $(pwd)"
    echo "User: $(whoami)"
    echo "User Details:"
    id
    echo "------------------------"
}

# Function: File Management
file_manage() {
    echo "----- File Management -----"
    echo "Files in current directory:"
    ls -lh
    echo "----------------------------"
}

# Function: Permission Management
permission_manage() {
    echo "----- Permission Management -----"
    read -p "Enter file name: " file

    if [ -f "$file" ]; then
        chmod 777 "$file"
        echo "Permission changed to 777 for $file"
        ls -l "$file"
    else
        echo "File not found!"
    fi
    echo "----------------------------------"
}

# Function: Network Check
network_check() {
    echo "----- Network Check -----"
    echo "Checking internet connectivity..."
    ping -c 2 google.com
    echo "--------------------------"
}

# Function: Process Management
process_manage() {
    echo "----- Process Management -----"
    echo "Top running processes:"
    ps aux | head -5
    echo "-------------------------------"
}

# Function: Install Package
install_package() {
    echo "----- Package Installation -----"
    read -p "Enter package name: " pkg
    sudo apt update
    sudo apt install -y "$pkg"
    echo "--------------------------------"
}

# Function: Schedule Task (Cron Job)
schedule_task() {
    echo "----- Cron Job Scheduler -----"
    echo "Scheduling task to run every minute..."

    (crontab -l 2>/dev/null; echo "* * * * * echo 'Hello' >> /home/ubuntu/log.txt") | crontab -

    echo "Task scheduled successfully!"
    echo "------------------------------"
}

# ==============================
# Main Menu Loop
# ==============================

while true; do
    echo ""
    echo "===== ADMIN MENU ====="
    echo "1. System Info"
    echo "2. File Management"
    echo "3. Permission Management"
    echo "4. Network Check"
    echo "5. Process Management"
    echo "6. Install Package"
    echo "7. Schedule Task (Cron)"
    echo "8. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1) system_info ;;
        2) file_manage ;;
        3) permission_manage ;;
        4) network_check ;;
        5) process_manage ;;
        6) install_package ;;
        7) schedule_task ;;
        8) echo "Exiting..."; break ;;
        *) echo "Invalid choice! Please try again." ;;
    esac
done
