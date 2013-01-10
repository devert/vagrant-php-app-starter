# Disable default apache site
execute "disable-default-site" do
  command "sudo a2dissite default"
  notifies :reload, resources(:service => "apache2"), :delayed
end

# Add vhosts to apache config
web_app "httpd-vhosts" do
	template "vhosts.conf.erb"
	server_name "proj-name.local"
	docroot "/home/vagrant/proj-name"
end