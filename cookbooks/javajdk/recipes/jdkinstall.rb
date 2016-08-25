remote_file 'C:\Program Files' do
  source 'http://devmcnexus21.nc4.local:8081/repository/maven-releases/com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe'
end

#Test
#Use of Windows_package for managing MSI packages
#windows_package 'MSI Install for Jdk'

powershell_script 'MSI install' do
  #Syntax
  #Start-Process <path>\filename.msi
    Start-Process C:\Users\krithi.gnanasekaran\Downloads\
    msiexec /i "c:\package.msi" #Syntax Works :)

end
