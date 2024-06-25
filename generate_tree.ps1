# Name of the output file
$outputFile = "directory_contents.txt"

# Clear the output file if it already exists
if (Test-Path $outputFile) {
    Clear-Content $outputFile
}

# Get the current directory path to remove from full paths for relative paths
$currentDir = Get-Location

# Print the directory tree to the output file
"Directory Tree:" | Out-File $outputFile -Append
Get-ChildItem -Recurse | Out-String | Out-File $outputFile -Append
" " | Out-File $outputFile -Append

# Append each file's name and content to the output file
Get-ChildItem -Recurse -File | ForEach-Object {
    $relativePath = $_.FullName.Replace($currentDir, "").TrimStart('\')
    if ($relativePath -ne $outputFile) {
        "File: $relativePath" | Out-File $outputFile -Append
        "----------------" | Out-File $outputFile -Append
        Get-Content $_.FullName | Out-File $outputFile -Append
        " " | Out-File $outputFile -Append
    }
}

"Completed writing to $outputFile." | Out-File $outputFile -Append
