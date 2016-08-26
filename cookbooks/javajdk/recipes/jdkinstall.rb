#Downloads the jdk file
remote_file 'C:\Program Files\Java\jdk-64bit-7.101.exe' do
  source 'http://54.175.158.124:8081/repository/Rigil/jdk-64bit-7.101.exe'
  action :create
end

#Installs jdk
windows_package 'Java jdk-64bit-7.101 install' do
  source 'http://54.175.158.124:8081/repository/Rigil/jdk-64bit-7.101.exe'
  installer_type :custom
  remote_file_attributes ({
    :path => 'C:\Program Files\Java\jdk-64bit-7.101.exe'
  })
end

#Set path
powershell_script 'Set JAVA_HOME, JRE_HOME path' do
  guard_interpreter :powershell_script
  code <<-EOH
    setx JAVA_HOME "%PATH%;C:\Program Files\Java\jdk1.7.0_101" /M
    setx JRE_HOME "%PATH%;C:\Program Files\Java\jdk1.7.0_101\jre" /M
  EOH
end
