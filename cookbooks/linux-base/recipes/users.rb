usr_dt_name= 'user_arquitetura'
gps_dt_name= 'groups_users'
arq_users = data_bag(usr_dt_name)
group_users = data_bag(gps_dt_name)

group_users.each do | gps | 
	pgs_list = data_bag_item(gps_dt_name,gps)
	for gp in pgs_list["group"]
		group gp['name'] do
			gid gp['gid']
		end
	end
end


arq_users.each do | us |
	user_list = data_bag_item(usr_dt_name,us)
	for usr in  user_list["user"]
		user usr['username'] do
			uid usr['uid']
			gid usr['gid']
			manage_home true
			if usr.key?('passwd') 
			password   usr['passwd']
			end
		end
	end 
end
#group_users.fetch do | gp | 
#
#	puts "----#{gp}"
#	puts "----#{gp['gid']}"
#  group (gp) do
#	 gid gp['gid']
#	 group_name gp['name']
#
#  end
#end
#
#arq_users.each do | user_arch |
#  user (user_arch) do
#  	 uid user_arch['uid']
#  	 gid user_arch['gid']
#  	 username user_arch['username']
#	 action :modify
#  end
#end
