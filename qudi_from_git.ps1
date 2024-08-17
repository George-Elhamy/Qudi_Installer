# Define environment and package names
$envName = "qudi-environment"
$qudiRepoUrl = "https://github.com/prithviulm/qudi-core.git"
$localRepoDir = "qudi-core"

# Define function to check if a command exists
function Test-Command {
    param([string]$cmd)
    return (Get-Command $cmd -ErrorAction SilentlyContinue) -ne $null
}

# Check if Python is installed
if (-not (Test-Command "python")) {
    Write-Error "Python is not installed or not found in PATH. Please install Python 3.10 and try again."
    exit 1
}

# Check if Git is installed
if (-not (Test-Command "git")) {
    Write-Error "Git is not installed or not found in PATH. Please install Git and try again."
    exit 1
}

# Create a Python environment
Write-Output "Creating Python environment '$envName'..."
python -m venv $envName

# Activate the environment
Write-Output "Activating the environment..."
& .\$envName\Scripts\Activate

# Clone the qudi-core repository
if (Test-Path $localRepoDir) {
    Write-Output "Repository directory already exists. Pulling latest changes..."
    cd $localRepoDir
    git pull
} else {
    Write-Output "Cloning qudi-core repository..."
    git clone $qudiRepoUrl
    cd $localRepoDir
}

# Install qudi-core from source
Write-Output "Installing qudi-core from source..."
python -m pip install -e .

# Register qudi IPython kernel
Write-Output "Registering qudi IPython kernel..."
qudi-install-kernel

# Deactivate the environment
Write-Output "Deactivating the environment..."
deactivate

Write-Output "Setup completed successfully. To activate the environment, use: .\$envName\Scripts\Activate"
