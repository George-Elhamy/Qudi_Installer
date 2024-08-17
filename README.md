# Qudi_Installer
Installing qudi through a powershell script

## Installation

Step-by-step instructions on how to install the project.

### Step 1: Clone the Repository
```bash
git clone https://github.com/George-Elhamy/Qudi_Installer.git
```
### Step 2: Open a Powershell terminal and Set the execution policy to allow the script to run
```bash
Set-ExecutionPolicy RemoteSigned -Scope Process -Force
```
### Step 3: Run the Powershell Script
```bash
.\qudi_from_git.ps1
```
### Step 4: Open your IDE and Activate the Environment 
```bash
.\qudi-environment\Scripts\Activate
```
### Step 5: Start Qudi 
```bash
qudi 
```
