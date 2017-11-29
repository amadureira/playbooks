package 'MariaDb Client' do
    package_name    node['pkg-mariadb-server']['package_name']
    version         node['pkg-mariadb-server']['version']
    action          node['pkg-mariadb-server']['default_action']
end
