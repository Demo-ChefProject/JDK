remote_file 'D:\Program Files' do
  source 'com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe'
end

#Use of Windows_package for managing MSI packages
#windows_package 'MSI Install for Jdk'

powershell_script 'MSI install' do
  #Syntax
  #Start-Process <path>\filename.msi
    Start-Process com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe.msi
end

#Testing
#JAVA-HOME = // logic to get JAVA-HOME
#file 'JAVA\JDK\BIN' do
#  content "JAVA-HOME=#{fqdn}"
#end
path = C:\ProgramFiles\Java\jdk1.7.0
#Followed link https://docs.chef.io/templates.html
#Testing using template for variable JAVA-HOME
template 'JAVA\JDK\BIN' do
  source 'motd.erb'
  variables  JAVA-HOME
  action :create
end
