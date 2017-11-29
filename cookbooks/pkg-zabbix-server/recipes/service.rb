
template 'Config Zabbix Server' do
	path node['pkg-zabbix-server']['config_path']
	source node['pkg-zabbix-server']['config_template']
	owner	'root'
	group  'root'
	mode  '0644'
	variables(
		:dbname => node['pkg-zabbix-server']['dbname'],
		:dbschema => node['pkg-zabbix-server']['dbschema'],
		:dbhost => node['pkg-zabbix-server']['dbhost'],
		:dbport => node['pkg-zabbix-server']['dbport'],
		:dbuser => node['pkg-zabbix-server']['dbuser'],
		:dbpasswd => node['pkg-zabbix-server']['dbpasswd'],
		:startpoolsers => node['pkg-zabbix-server']['startpoolsers'],
		:poolerunreacheble => node['pkg-zabbix-server']['poolerunreacheble'],
		:startpingers => node['pkg-zabbix-server']['startpingers'],
		:discovery => node['pkg-zabbix-server']['discovery'],
		:housekeepfreq => node['pkg-zabbix-server']['housekeepfreq'],
		:cachesize => node['pkg-zabbix-server']['cachesize'],
		:cacheupfreq => node['pkg-zabbix-server']['cacheupfreq'],
		:startdbsync => node['pkg-zabbix-server']['startdbsync'],
		:startdbsync => node['pkg-zabbix-server']['historycachesize'],
		:trendcachesize => node['pkg-zabbix-server']['trendcachesize'],
		:historyindexcachesize => node['pkg-zabbix-server']['historyindexcachesize'],
		:valuecachesize => node['pkg-zabbix-server']['valuecachesize']
	)
	notifies :restart,'service[Zabbix service]'
end


service 'Zabbix service' do
	service_name node['pkg-zabbix-server']['service-name']
	action node['pkg-zabbix-server']['service']
end


