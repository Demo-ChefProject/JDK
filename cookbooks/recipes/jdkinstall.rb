remote_file 'D:\Program Files' do
  source 'com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe'
end

execute "Enable on hosts" do
  command lazy { "#{com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe}/command --enable -N #{node['hosts']}" }
end
