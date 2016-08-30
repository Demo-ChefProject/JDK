=begin
remote_file 'C:\Program Files\Java\Testchecksum' do
source 'http://ec2-54-175-158-124.compute-1.amazonaws.com/repository/Rigil/jdk-64bit-7.101.exe'
action :create
end
  #Testing for checksum funtionality
  
  windows_package 'Java install' do
  source 'http://ec2-54-175-158-124.compute-1.amazonaws.com/repository/Rigil/jdk-64bit-7.101.exe'
  installer_type :custom
  checksum 'shasum -a 256 C:/Program Files/Java/Testchecksum'
  remote_file_attributes ({
  :path => 'C:\Program Files\Java\Testchecksum\jdk-64bit-7.101.exe'
  })
end
=end

windows_package 'Java install' do
  source jdk_download_from
  installer_type :custom
  checksum 'shasum -a 256 jdk_download_from'
  options "/qn /passive INSTALLDIR=\"#{jdk_inst_folder_name}\""
end
