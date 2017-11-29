package 'Zabbix Server' do
	package_name node['pkg-zabbix-server']['package_name']
	version      node['pkg-zabbix-server']['package_version']
	action :install
end
