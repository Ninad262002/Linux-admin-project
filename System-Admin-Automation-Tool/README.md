# 🛠️ Linux Admin Automation Tool (Bash Script)

## 📌 Project Overview

This project is a **Bash-based Linux Admin Tool** that automates common system administration tasks through an interactive menu.

It helps perform operations like:

* Checking system information
* Managing files and permissions
* Monitoring processes
* Checking network connectivity
* Installing packages
* Scheduling tasks using cron

---

## 🚀 Features

* 📊 System Information (user, directory, ID)
* 📁 File Management (list files)
* 🔐 Permission Management (chmod automation)
* 🌐 Network Check (ping test)
* ⚙️ Process Monitoring (top processes)
* 📦 Package Installation (apt-based)
* ⏰ Cron Job Scheduling (automated tasks)

---

## 🧠 Concepts Covered

* Bash Scripting
* Linux Commands (`pwd`, `ls`, `chmod`, `ps`, `ping`)
* Process Management
* Package Management (`apt`)
* Cron Jobs (task scheduling)
* Conditional Statements (`if`, `case`)
* Functions in Bash

---

## 📁 Project Structure

```bash
linux-admin-tool/
│── admin_tool.sh
│── README.md
```

---

## ⚙️ Prerequisites

* Linux system (Ubuntu recommended)
* Bash shell
* `sudo` access (for package installation)

---

## 🛠️ How to Run the Script

### 🔹 Step 1: Clone Repository

```bash
git clone <your-repo-url>
cd linux-admin-tool
```

---

### 🔹 Step 2: Give Execute Permission

```bash
chmod +x admin_tool.sh
```

---

### 🔹 Step 3: Run Script

```bash
./admin_tool.sh
```

---

## 🖥️ Menu Options Explained

| Option | Function                               |
| ------ | -------------------------------------- |
| 1      | Show system info (user, directory, ID) |
| 2      | List files in current directory        |
| 3      | Change file permission to 777          |
| 4      | Check internet connectivity            |
| 5      | Show running processes                 |
| 6      | Install package using apt              |
| 7      | Schedule cron job (runs every minute)  |
| 8      | Exit program                           |

---

## ⏰ Cron Job Details

The script schedules a task using:

```bash
* * * * * echo 'Hello' >> /home/ubuntu/log.txt
```

### 📌 Meaning:

* Runs every 1 minute
* Appends "Hello" to `log.txt`

---

## 🏁 Conclusion

This project demonstrates practical Linux administration and automation skills using Bash scripting and cron jobs.

