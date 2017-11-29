package 'Http Server' do
	package_name node['pkg-httpd']['package_name']
	version      node['pkg-httpd']['package_version']
	action       :install
end
