# Install-AzureCT Module
function Install-AzureCT {

    $uri = 'https://raw.githubusercontent.com/ElanShudnow/AzureCTwithJitter/master/AzureCT/PowerShell/AzureCT/'

    $FileName = @()
    $FileName += 'AzureCT.psd1'
    $FileName += 'AzureCT.psm1'
    $FileName += 'Public/Clear-AzureCTHistory.ps1'
    $FileName += 'Public/Get-AzureNetworkAvailability.ps1'
    $FileName += 'Public/Get-HostName.ps1'
    $FileName += 'Public/Get-IPTrace.ps1'
    $FileName += 'Public/Remove-AzureCT.ps1'
    $FileName += 'Public/Show-AzureCTResults.ps1'

    $FileName += 'Public/Install-LinkPerformance.ps1'
    $FileName += 'Public/Get-LinkPerformance.ps1'
    
    #$Destination = Join-Path -Path ([Environment]::GetFolderPath('MyDocuments')) -ChildPath 'WindowsPowerShell\Modules\AzureCT\'
    $Destination = 'C:\Program Files\WindowsPowerShell\Modules\AzureCT\'
    New-Item -Path ($Destination) -ItemType Directory -Force | Out-Null
    New-Item -Path ($Destination + "Public") -ItemType Directory -Force | Out-Null

    Write-Host

    ForEach ($File in $FileName) {
        $webClient = new-object System.Net.WebClient
        $webClient.DownloadFile( $uri + $File, $Destination + $File )
        Write-Host "Copied successfully:" $File 
    }

    $executionPolicy = (Get-ExecutionPolicy)
    $executionRestricted = ($executionPolicy -eq "Restricted")
    If ($executionRestricted) {
        Write-Warning "Your execution policy is $executionPolicy, this means you will not be able import or use any scripts including modules."
        Write-Warning "To fix this change your execution policy to something like RemoteSigned."
        Write-Host
        Write-Warning "     PS> Set-ExecutionPolicy RemoteSigned"
        Write-Host
        Write-Warning "For more information execute:"
        Write-Host
        Write-Warning "     PS> Get-Help about_execution_policies"
    }
    Else {
        # ensure AzureCT is imported from the location it was just installed to
        # Import-Module -Name AzureCT
    }
    Write-Host "AzureCT is installed and ready to use" -Foreground Green
    Write-Host
} # End Function

Install-AzureCT
