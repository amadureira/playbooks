package 'nginx package' do
	package_name node['pkg-nginx']['package_name']
	version      node['pkg-nginx']['package_version']
	action       :install
end
