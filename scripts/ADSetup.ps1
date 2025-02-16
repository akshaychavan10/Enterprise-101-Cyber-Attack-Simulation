# Install Active Directory Domain Services
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Promote the server to a domain controller
Install-ADDSForest -DomainName "corp.project-x-dc.com" -DomainNetbiosName "CORP" -InstallDns -Force

Write-Host "Active Directory configured successfully!"