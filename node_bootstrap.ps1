#!/bin/bash

#cd ~/home/jenkins/workspace/Chef-apache/
#cd C:/Users/krithi.gananasekaran/workspace/Chef-Jdk
cd C:\Jenkins\workspace\Chef-Jdk

#for jdk
#sudo knife role from file /home/jenkins/workspace/Chef-apache/roles/apache.rb
#knife role from file C:\Users\krithi.gnanasekaran\workspace\Chef-Jdk\roles\jdkinstall.rb
knife role from file C:\Jenkins\workspace\Chef-Jdk\roles\jdk.json


# Upload cookbooks into Chef Server
knife upload cookbooks javajdk


# Bootstrap a node to its chef server
#knife bootstrap windows winrm 54.175.57.21 --winrm-user Administrator --winrm-password 'd*G%tc9"&"HLK' --node-name Rigil_node_Windows -r 'role[jdk]' -y

#Passing credentials stored as a secure string
$Pass = cat C:\securestring.txt | convertto-securestring
$Pegacred = new-object -TypeName System.Management.Automation.PSCredential -argumentlist "Administrator",$pass
#  Create a remote session to the chef node
$Session = New-PSSession -ComputerName 54.175.57.21 -Credential $Pegacred

#$Script = {powershell.exe echo $Install_Folder_Name > jdk_install_name.txt ; powershell.exe chef-client}
$Script = {echo $Install_Folder_Name > jdk_install_name.txt ; powershell.exe chef-client}
$Job = Invoke-Command -Session $Session -Scriptblock $Script
echo $Job
#Script which runs the ruby script in the remote server


# Exit and remove the current session
Remove-PSSession -Session $Session
