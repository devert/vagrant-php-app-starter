# Vagrant PHP App Starter
---

A LAMP stack project starter, utilizing a Vagrant VM (default: Ubuntu 12.04 Precise Pangolin 32-bit) provisioned with Chef Solo.

If you use this repository, you will end up with a Linux server that has the following packages:

* Apache
* MySQL - *Not installed by default. Uncomment in Vagrantfile if desired.*
* PHP 
* [Composer](http://getcomposer.org/) - *For PHP package management.*

The version number of the above will depend on the current one available in the Ubuntu repositories.

Cookbooks included:

* [apache](https://github.com/opscode-cookbooks/apache2)
* [apt](https://github.com/opscode-cookbooks/apt)
* [build-essential](https://github.com/opscode-cookbooks/build-essential)
* [composer](https://github.com/escapestudios/chef-composer)
* [mysql](https://github.com/opscode-cookbooks/mysql)
* [openssl](https://github.com/opscode-cookbooks/openssl)
* [php](https://github.com/opscode-cookbooks/php)
* [vim](https://github.com/opscode-cookbooks/vim)
* [xml](https://github.com/opscode-cookbooks/xml)

## Requirements

* [VirtualBox](https://www.virtualbox.org/)
* [Ruby](http://www.ruby-lang.org/en/)
* [Vagrant](http://vagrantup.com/)
* [Librarian](https://github.com/applicationsonline/librarian)

## Usage

Clone it into your project folder, install cookbook dependencies with Librarian-Chef, launch/create Vagrant VM...

    $ git clone https://github.com/devert/vagrant-php-app-starter proj-name
    $ rm -rf .git

Open the vagrant/Vagrantfile and modify *proj-name* instances to the name of your project.

    $ cd vagrant
    $ librarian-chef install
    $ vagrant up
    $ vagrant ssh
    $ cd proj-name

After running the above commands you should be able to browse to http://locahost:8080/ and see "Hello World!". Changes to files via the host machine will immediately be updated on the guest VM as well. Now get in there and build something awesometronic with PHP!

## Optional (But Pretty Great)

#### Vagrant
* Keep Vagrant VM's VirtualBox Guest Additions up to date with [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest) plugin. Install this on the host machine.
		
		$ vagrant gem install vagrant-vbguest

* Setup a custom host name for Vagrant VM and host OS with [vagrant-hostmaster](https://github.com/mosaicxm/vagrant-hostmaster.git). Install this on the host machine.
	
		$ vagrant gem install vagrant-hostmaster

	```ruby
	# Uncomment the following in Vagrantfile
	config.hosts.name = "proj-name.local"
	```




