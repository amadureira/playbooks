
param="cluster:#{node['pkg-mongo']['cluster']} AND NOT ipaddress:#{node['ipaddress']}"

Chef::Log.info("------ Log Info #{param}");
nodeArray   = search(:node,param );
arrayMongo = Array.new;

nodeArray.each do |f|
  arrayMongo.push(f['ipaddress']);
  Chef::Log.info("------ Log Info #{f['ipaddress']}");
end
Chef::Log.info("------ Array #{arrayMongo.length}");
#m = Mongo.new(arrayMongo);
if arrayMongo.length >0 then
Mongo.addnode(arrayMongo,node['ipaddress']);
else
arrayMongo.push(node['ipaddress']);
Mongo.createreplica(arrayMongo);
end
