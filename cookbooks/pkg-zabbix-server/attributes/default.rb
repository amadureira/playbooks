default['pkg-zabbix-server']['service-name']  = 'zabbix-server'
default['pkg-zabbix-server']['config_path']  = '/etc/zabbix/zabbix_server.conf'
default['pkg-zabbix-server']['config_template']  = 'zabbix_server.conf'
default['pkg-zabbix-server']['package_name']  = 'zabbix-server-pgsql'
default['pkg-zabbix-server']['package_version']  = '3.0.0-1.el7'
default['pkg-zabbix-server']['dbname']  = 'zabbix'
default['pkg-zabbix-server']['dbschema']  = 'zabbix'
default['pkg-zabbix-server']['dbhost']  = '127.0.0.1'
default['pkg-zabbix-server']['dbport']  = '5432'
default['pkg-zabbix-server']['dbuser']  = 'zabbix'
default['pkg-zabbix-server']['dbpasswd']  = 'zabbix'
default['pkg-zabbix-server']['startpoolsers']  = 5
default['pkg-zabbix-server']['poolerunreacheble']  = 5
default['pkg-zabbix-server']['startpingers']  = 1
default['pkg-zabbix-server']['discovery']  = 1
default['pkg-zabbix-server']['housekeepfreq']  = 0
default['pkg-zabbix-server']['cachesize']  = '8M'
default['pkg-zabbix-server']['cacheupfreq']  = '60'
default['pkg-zabbix-server']['startdbsync']  = 4
default['pkg-zabbix-server']['historycachesize']  = '16M'
default['pkg-zabbix-server']['historyindexcachesize']  = '2M'
default['pkg-zabbix-server']['valuecachesize']  = '2M'
default['pkg-zabbix-server']['service_state'] = [:disable,:stop]
