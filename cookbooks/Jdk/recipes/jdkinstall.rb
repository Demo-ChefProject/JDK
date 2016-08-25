remote_file 'C:\Program Files' do
  source 'http://devmcnexus21.nc4.local:8081/#browse/browse/components:maven-releases:e5c50d09b73fd3c5799dbac74dbd21b9:31c950c8eeeab7833f166b43a4c19d6c'
end

#Use of Windows_package for managing MSI packages
#windows_package 'MSI Install for Jdk'

powershell_script 'MSI install' do
  #Syntax
  #Start-Process <path>\filename.msi
    Start-Process C:\Users\krithi.gnanasekaran\Downloads\
    msiexec /i "c:\package.msi" #Syntax Works :)

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
