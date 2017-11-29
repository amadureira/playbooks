
package 'kibana package' do
	package_name 'kibana'
	version node['pkg-kibana']['kibana_version']
	action :install
end
