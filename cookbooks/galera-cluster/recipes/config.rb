param= "role:#{node['roles'][0]} AND cluster_name:#{node['galera-cluster']['cluster_name']}"
Chef::Log.info("------ Log Info #{param}");

searchArray   = search(:node,param);
arrayGalera = Array.new;

searchArray.each do |f|
  arrayGalera.push(f['ipaddress']);
  Chef::Log.info("------ Log Info #{f['ipaddress']}");
end


template 'Config Galera Cluster' do
   path '/etc/my.cnf.d/server.cnf'
   source 'default/server.cnf'
   variables(:cluster_nodes => arrayGalera.join(','), :clustername => node['galera-cluster']['cluster_name'])
end

