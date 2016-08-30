
  #Testing for checksum funtionality
  
  windows_package 'Java install' do
  source 'http://54.175.158.124:8081repository/Rigil/jdk-64bit-7.101.exe'
  installer_type :custom
  checksum shasum 256 --check 'C:\Program Files\Java\Testchecksum\jdk-64bit-7.101.exe'
  remote_file_attributes ({
  :path => 'C:\Program Files\Java\Testchecksum\jdk-64bit-7.101.exe'
  })
end
