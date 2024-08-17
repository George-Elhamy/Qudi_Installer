# Qudi_Installer
Installing qudi through a powershell script

## Installation

Step-by-step instructions on how to install the project.

### Step 1: Clone the Repository
```bash
git clone https://github.com/George-Elhamy/Qudi_Installer.git
```
### Step 2: Open a Powershell terminal in the directory of installation 

### Step 3: Set the execution policy for the current session to allow the script to run
```bash
Set-ExecutionPolicy RemoteSigned -Scope Process -Force
```
### Step 4: Run the Powershell Script
```bash
.\qudi_from_git.ps1
```
### Step 5: Activate the Environment 
```bash
cd qudi-environment/scripts
.\Activate.ps1
```
### Step 6: Start Qudi 
```bash
qudi start
```
