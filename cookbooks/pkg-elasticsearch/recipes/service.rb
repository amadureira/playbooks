service 'elastic service' do
	service_name 'elasticsearch'
	action	[:start,:enable]
end

template  'elastic config main' do
	path "/etc/elasticsearch/elasticsearch.yml"
	source node['pkg-elasticsearch']['elastic_conf_main']
	action :create
	variables(:port_listen => node['pkg-elasticsearch']['elastic_port'])
	notifies :restart,'service[elastic service]'
end

template  'elastic config jvm' do
	path "/etc/elasticsearch/jvm.options"
	source node['pkg-elasticsearch']['elastic_conf_jvm']
	action :create
	notifies :restart,'service[elastic service]'
end

template  'elastic config log4j2' do
	path "/etc/elasticsearch/log4j2.properties"
	source node['pkg-elasticsearch']['elastic_conf_log4']
	action :create
	notifies :restart,'service[elastic service]'
end


template  'elastic sysconfig' do
	path "/etc/sysconfig/elasticsearch"
	source node['pkg-elasticsearch']['elastic_sysconfig']
	action :create
	notifies :restart,'service[elastic service]'
end
