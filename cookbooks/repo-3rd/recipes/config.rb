if /^([0-9]+\.){2}([0-9]?[0-9]|1[0-2][0-9])\.[0-9]+/ =~ node['ipaddress'] then
repo_host="10.128.8.199";
proxy_host="http://10.128.8.16:3128";
else
proxy_host="_none_";
repo_host="10.128.132.169";

end




template 'config repo 3rd' do
	path '/etc/yum.repos.d/viavarejo3rd.repo'
	source '3rd.repo'
        variables(:host => repo_host,:proxy=> proxy_host)
end
