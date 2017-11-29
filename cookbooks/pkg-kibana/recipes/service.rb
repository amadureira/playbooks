nodes_list = search(:node,node['pkg-kibana']['search_config'])
elastic_info      = "#{node['pkg-kibana']['http_type']}://#{nodes_list[0]['ipaddress']}:#{node['pkg-kibana']['kibana_port']}"
service 'kibana service' do
	service_name 'kibana'
	action	[:start,:enable]
end

template 'kibana conf' do
	path '/etc/kibana/kibana.yml'
	source node['pkg-kibana']['kibana_config']
	owner 'root'
	group 'root'
	mode   0644
	variables( :kibana_host => elastic_info)
	notifies :restart,'service[kibana service]'
end
