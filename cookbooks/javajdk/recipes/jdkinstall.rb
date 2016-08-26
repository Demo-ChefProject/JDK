
remote_file 'C:\Program Files\Java\jdk-64bit-7.101.exe' do
  source 'http://54.175.158.124:8081/repository/Rigil/jdk-64bit-7.101.exe'
  action :create
end


windows_package 'Java jdk-64bit-7.101 install' do
  source 'http://54.175.158.124:8081/repository/Rigil/jdk-64bit-7.101.exe'
  installer_type :custom
  remote_file_attributes ({
    :path => 'C:\Program Files\Java\jdk-64bit-7.101.exe'
  })
end

#Set path
powershell_script 'Set JAVA_HOME path' do
  guard_interpreter :powershell_script
  code <<-EOH
    setx JAVA_HOME "%PATH%;C:\Program Files\Java\jdk1.7.0_101" /M
    setx JRE_HOME "%PATH%;C:\Program Files\Java\jdk1.7.0_101\jre" /M
  EOH
end


=begin
powershell_script 'MSI install' do
  #Syntax
  #Start-Process <path>\filename.msi
    Start-Process C:\Users\krithi.gnanasekaran\Downloads\
    msiexec /i "c:\package.msi" #Syntax Works:)


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
