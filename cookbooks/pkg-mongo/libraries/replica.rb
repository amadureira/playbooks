#!/opt/chef/embedded/bin/ruby
require 'mongo'

class Chef::Recipe::Mongo
  mongoArray = Array.new;
  def self.new(arr)
	 mongoArray = arr;
  end
  def self.addnode(arr,ipaddress)
   Mongo::Logger.logger.level = Logger::WARN
   client_host = arr
   client_options = {
   }
   begin
     mon =  Mongo::Monitoring.new(:monitoring => false);
     Chef::Log::info("Connect on nodes [#{client_host}]");
     client = Mongo::Cluster.new(client_host, mon)
     Chef::Log.info("Add host [#{ipaddress}] to cluster");
     client.add(ipaddress); 
   rescue => info 
     Chef::Log.info("Problem #{info}");
   end

  end
  def self.createreplica(arr)
   Mongo::Logger.logger.level = Logger::WARN
   client_host = arr
   client_options = {
   }
   begin
     mon =  Mongo::Monitoring.new(:monitoring => false);
     client = Mongo::Cluster.new(client_host, mon)
     Chef::Log.info("------ Mongo OK [#{arr}");
     client.create(arr[0]); 
   rescue => info 
     Chef::Log.info("------ Mongo Notok #{info}");
   end
  end
end
