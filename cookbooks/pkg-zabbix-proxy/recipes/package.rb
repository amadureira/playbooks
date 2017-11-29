

package 'Zabbix proxy' do
	package_name node['pkg-zabbix-proxy']['package_name']
	version      node['pkg-zabbix-proxy']['package_version']
#	action :install
end
