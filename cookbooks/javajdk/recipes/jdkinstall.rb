remote_file 'C:\Program Files' do
  source 'http://devmcnexus21.nc4.local:8081/repository/maven-releases/com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe'
end

#Test
#Use of Windows_package for managing MSI packages
#windows_package 'MSI Install for Jdk'
windows_package 'jdk-64bit-7.101.exe' do
  action  :install
end

=begin
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
=end
