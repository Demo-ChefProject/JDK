remote_file 'D:\Program Files' do
  source 'com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe'
end

execute "Enable on hosts" do
  command lazy { "#{com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe}/command --enable -N #{node['hosts']}" }
end


#Testing
#JAVA-HOME = // logic to get JAVA-HOME
#file 'JAVA\JDK\BIN' do
#  content "JAVA-HOME=#{fqdn}"
#end

#Followed link https://docs.chef.io/templates.html
#Testing using template for variable JAVA-HOME
template 'JAVA\JDK\BIN' do
  source 'motd.erb'
  variables  JAVA-HOME
  action :create
end
