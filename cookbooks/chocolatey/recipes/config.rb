template 'Chocolatey Config' do
	path '/etc/httpd/conf.d/virtualhost.conf' 
	source 'service.conf'
	user 'root'
	group 'root'
	mode 0644
	notifies :restart,'service[httpd service]'
end
