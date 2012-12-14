# Vagrant PHP App Starter

## Intro

***WORK IN PROGRESS.*** *Currently not fully functional.*

A LAMP stack project starter, utilizing a Vagrant VM (default: Ubuntu Precise Pangolin 32-bit) provisioned with Chef Solo.

If you use this repository, you will end up with a Linux server that has the following packages:

* Apache
* MySQL
* PHP

The version number will depend on the current one available in the Ubuntu repositories.


Cookbooks included:

* [apache](https://github.com/opscode-cookbooks/apache2)
* [apt](https://github.com/opscode-cookbooks/apt)
* [build-essential](https://github.com/opscode-cookbooks/build-essential)
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

## Optional

* Keep Vagrant VM's VirtualBox Guest Additions up to date with [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest) plugin.

## Usage

Clone it into your project folder, install cookbook dependencies with Librarian-Chef, launch/create Vagrant VM...

    git clone https://github.com/devert/vagrant-php-app-starter project-name
    rm -rf .git
    cd vagrant
    librarian-chef install
    vagrant up
    vagrant ssh
    cd project-name


