# Define the URL and the local file paths
$url = "https://download.resize-c.com/resizer-free-portable.zip"
$originalPath = "D:\Downloads\resizer-free-portable.zip"
# $renamedPath = "D:\Downloads\dl.7z"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $originalPath

# Wait until the file is fully downloaded
while (-not (Test-Path $originalPath)) {
    Start-Sleep -Seconds 1
}

# Copy and rename the file
# Copy-Item -Path $originalPath -Destination $renamedPath

# Generate the hash for the original file (SHA256 in this example)
$originalHash = Get-FileHash -Path $originalPath -Algorithm SHA256
Write-Output "Original File Hash: $($originalHash.Hash)"

# Generate the hash for the renamed file (SHA256 in this example)
# $renamedHash = Get-FileHash -Path $renamedPath -Algorithm SHA256
#  Write-Output "Renamed File Hash: $($renamedHash.Hash)"

