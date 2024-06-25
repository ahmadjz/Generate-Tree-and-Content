# Generate Tree and Content

This repository contains scripts to generate a directory tree and file contents, useful for documenting directory structures and their contents. These scripts were created to avoid the repetitive task of manually copying files to feed into ChatGPT. They provide a simpler way to generate and present directory contents.

## Scripts

- `generate_tree.sh`: Bash script for Linux systems.
- `generate_tree.ps1`: PowerShell script for Windows systems.

## How It Works

The Bash script `generate_tree.sh` outputs the tree structure of the directory and the contents of each file into a single text file. It works on Linux and can be run in Windows using WSL.

The PowerShell script `generate_tree.ps1` does the same but is designed to run natively on Windows systems.

## How to Run

### On Linux

Make sure the script is executable:

```bash
chmod +x generate_tree.sh
```

Run the script:

```bash
./generate_tree.sh
```

### On Windows

For Windows users, you can either use WSL to run the Bash script or run the PowerShell script natively:

#### **Using PowerShell:**

Right-click on `generate_tree.ps1` and select "Run with PowerShell", or open PowerShell, navigate to the script's directory, and run:

```
./generate_tree.ps1
```
