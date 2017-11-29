data_dir = node['pkg-mongo']['data_dir']
tmp_data_dir = '/';

data_dir.split(/\//).each do |d|
  if d.to_s.length ==0 then
     next
  end
  tmp_data_dir="#{tmp_data_dir}#{d}/"
  directory tmp_data_dir do
  	owner  'mongod'
  	group  'mongod'
  	action :create
  end

end

service 'mongodb' do
  service_name 'mongod'
  action [:nothing,:enable]
end

template '/etc/mongod.conf' do
 source 'mongod_new.erb'
 variables(:dbpath => '/data/mongo',
	   :ipaddress => node['ipaddress'],
	   :replicaname => node['pkg-mongo']['cluster']
	  )
 notifies :restart , 'service[mongodb]', :immediately
end
