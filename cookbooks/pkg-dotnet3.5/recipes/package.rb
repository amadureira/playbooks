chocolatey_package 'dotnet' do
 package_name 'DotNet3.5'
 options '--proxy=http://10.128.8.16:3128'
 action :install
end
