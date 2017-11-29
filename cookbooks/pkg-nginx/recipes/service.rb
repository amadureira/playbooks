template 'Template Nginx ' do
	path node['pkg-nginx']['main_config']
	source node['pkg-nginx']['template_name']
	user 'root'
	group 'root'
	mode  0644
	notifies :restart,'service[Nginx Service]'
end

service 'Nginx Service' do
	service_name node['pkg-nginx']['service_name']
	action       node['pkg-nginx']['action_service']
end
