service 'httpd service' do
	service_name node['pkg-httpd']['service_name']
	action [:start,:enable]
end
