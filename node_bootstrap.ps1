#!/bin/bash

cd C:\Jenkins\workspace\Chef-Jdk

# Upload Role and cookbook file 
knife role from file C:\Jenkins\workspace\Chef-Jdk\roles\jdk.json
knife upload cookbooks javajdk

# Bootstrap a node to its chef server
knife bootstrap windows winrm 52.90.146.213 --winrm-user Administrator --winrm-password '?%EW!26tAzW' --node-name Rigil_node_Windows -r 'role[jdk]' -y

#Passing credentials stored as a secure string
$pass = ConvertTo-SecureString '?%EW!26tAzW' -AsPlainText -Force
$Pegacred = new-object -TypeName System.Management.Automation.PSCredential -argumentlist "Administrator",$Pass
#  Create a remote session to the chef node
$Session = New-PSSession -ComputerName 52.90.146.213 -Credential $Pegacred

echo "Preparing to Run....."
$Script = {powershell.exe chef-client}

echo "Running on Node now....."
$Job = Invoke-Command -Session $Session -Scriptblock $Script
echo $Job

# Exit and remove the current session
Remove-PSSession -Session $Session
