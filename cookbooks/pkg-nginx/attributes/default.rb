default['pkg-nginx']['service_name'] = 'nginx'
default['pkg-nginx']['main_config'] = '/etc/nginx/nginx.conf'
default['pkg-nginx']['template_name'] = 'nginx.conf'
default['pkg-nginx']['package_name'] = 'nginx'
default['pkg-nginx']['package_version'] = '1.10.2-2.el7'
default['pkg-nginx']['action_service'] = [:start,:enable]
