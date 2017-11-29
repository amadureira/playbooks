package 'MariaDb' do
    package_name    node['pkg-mariadb-server']['package_name']
    package_version node['pkg-mariadb-server']['package_version']
    action          node['pkg-mariadb-server']['default_action']
end
