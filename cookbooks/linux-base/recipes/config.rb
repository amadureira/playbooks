if /^([0-9]+\.){2}([0-9]?[0-9]|1[0-2][0-9])\.[0-9]+/ =~ node['ipaddress'] then
proxy_host="http://10.128.8.16:3128";
repo_host="10.128.8.199";
else
proxy_host="http://10.128.131.16:3128";
repo_host="10.128.132.169";

end


template '/etc/yum.conf' do
 source 'yum.erb'
 variables(:proxy => proxy_host)
end


template 'sudores config' do
	path '/etc/sudoers'
        source 'sudoers'
	user 'root'
	group 'root'
	mode 0440
end

template 'logrotate chef-client' do
      path '/etc/logrotate.d/chef-client'
      source 'chef-client'
      user 'root'
      group 'root'
      mode 0644
end
