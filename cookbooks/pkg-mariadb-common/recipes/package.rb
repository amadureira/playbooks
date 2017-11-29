package 'MariaDb Common' do
    package_name    node['pkg-mariadb-common']['package_name']
    version         node['pkg-mariadb-common']['package_version']
    action          node['pkg-mariadb-common']['default_action']
end
