service 'Zabbix proxy' do 
	service_name node['pkg-zabbix-proxy']['service_name']
	action node['pkg-zabbix-proxy']['state']
end

template 'Zabbix proxy config' do
	path node['pkg-zabbix-proxy']['config_path']
	source 'zabbix_proxy.conf'
	owner	'root'
	group   'root'
	mode    0640
	variables(
		:server => node['pkg-zabbix-proxy']['server'],
		:serverport => node['pkg-zabbix-proxy']['serverport'],
		:proxyhostname => node['pkg-zabbix-proxy']['proxyhostname'],
		:hostnameitem => node['pkg-zabbix-proxy']['hostnameitem'],
		:listenport => node['pkg-zabbix-proxy']['listenport'],
		:logfile => node['pkg-zabbix-proxy']['logfile'],
		:logfilesize => node['pkg-zabbix-proxy']['logfilesize'],
		:debuglevel => node['pkg-zabbix-proxy']['debuglevel'],
		:pidfile => node['pkg-zabbix-proxy']['pidfile'],
		:dbsocket => node['pkg-zabbix-proxy']['dbsocket'],
		:proxyofflinebuffer => node['pkg-zabbix-proxy']['proxyofflinebuffer'],
		:heartbeatfrequency => node['pkg-zabbix-proxy']['heartbeatfrequency'],
		:configfrequency => node['pkg-zabbix-proxy']['configfrequency'],
		:datasenderfrequency => node['pkg-zabbix-proxy']['datasenderfrequency'],
		:startpollers => node['pkg-zabbix-proxy']['startpollers'],
		:startpollersunreacheble => node['pkg-zabbix-proxy']['startpollersunreacheble'],
		:starttrappers => node['pkg-zabbix-proxy']['starttrappers'],
		:startdiscoverers => node['pkg-zabbix-proxy']['startdiscoverers'],
		:starthttppollers => node['pkg-zabbix-proxy']['starthttppollers'],

		:dbname => node['pkg-zabbix-proxy']['dbname'],
		:dbschema => node['pkg-zabbix-proxy']['dbschema'],
		:dbhost => node['pkg-zabbix-proxy']['dbhost'],
		:dbport => node['pkg-zabbix-proxy']['dbport'],
		:dbuser => node['pkg-zabbix-proxy']['dbuser'],
		:dbpassword => node['pkg-zabbix-proxy']['dbpassword'],
		:startpoolsers => node['pkg-zabbix-proxy']['startpoolsers'],
		:poolerunreacheble => node['pkg-zabbix-proxy']['poolerunreacheble'],
		:startpingers => node['pkg-zabbix-proxy']['startpingers'],
		:discovery => node['pkg-zabbix-proxy']['discovery'],
		:housekeepfreq => node['pkg-zabbix-proxy']['housekeepfreq'],
		:cachesize => node['pkg-zabbix-proxy']['cachesize'],
		:cacheupfreq => node['pkg-zabbix-proxy']['cacheupfreq'],
		:startdbsync => node['pkg-zabbix-proxy']['startdbsync'],
		:trendcachesize => node['pkg-zabbix-proxy']['trendcachesize'],
		:historyindexcachesize => node['pkg-zabbix-proxy']['historyindexcachesize'],
		:startipmipollers => node['pkg-zabbix-proxy']['startipmipollers'],
		:valuecachesize => node['pkg-zabbix-proxy']['valuecachesize']
	)
end
