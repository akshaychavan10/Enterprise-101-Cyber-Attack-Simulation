# Create users in Active Directory

New-ADUser -Name "John Doe" -SamAccountName "johnd" -UserPrincipalName "johnd@corp.project-x-dc.com" -AccountPassword (ConvertTo-SecureString "@password123!" -AsPlainText -Force) -Enabled $true

New-ADUser -Name "Jane Doe" -SamAccountName "janed" -UserPrincipalName "janed@corp.project-x-dc.com" -AccountPassword (ConvertTo-SecureString "@password123!" -AsPlainText -Force) -Enabled $true

Write-Host "Users created successfully!"