package 'nc' do
	package_name 'nc'
	action [:install]
end

package 'tcpdump' do
	package_name 'tcpdump'
	action [:install]
end





package 'telnet' do
	package_name 'telnet'
	action [:install]
end


package 'vim-common' do
	package_name 'vim-common'
	action [:install]
end


package 'vim-enhanced' do
	package_name 'vim-enhanced'
	action [:install]
end


package 'iproute' do
	package_name 'iproute'
	version '3.10.0-87.el7'
	action [:install]

end

package 'net-tools' do
	package_name 'net-tools'
	version '2.0-0.22.20131004git.el7'
	action [:install]
end



