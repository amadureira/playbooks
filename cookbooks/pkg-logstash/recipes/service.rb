arrinfo = Array.new;
search(:node,'role:elastic-siem').each do |elemt|
	arrinfo.push("#{elemt[:ipaddress]}:9200");
end

directory 'directory queue' do
	path '/var/lib/logstash/queue'
	user 'logstash'
	group 'logstash'
end

directory 'directory dead queue' do
	path '/var/lib/logstash/dead_letter_queue'
	user 'logstash'
	group 'logstash'
end


service 'logstash' do
	service_name 'logstash'
	action 	[:start,:enable]
end

template 'config logstash' do
	path '/etc/logstash/conf.d/config.conf'
	source node['pkg-logstash']['logstash_config']
	owner 'logstash'
	group 'logstash'
	mode '0644'
	notifies :restart,'service[logstash]'
	variables( :nodeselastic => arrinfo )
end
