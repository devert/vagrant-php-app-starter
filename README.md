# Vagrant PHP App Starter

### Intro

***WORK IN PROGRESS.*** *Currently not functional.*

A LAMP stack project starter, utilizing a Vagrant VM (default: Ubuntu Precise Pangolin 32-bit) provisioned with Chef Solo.

Cookbooks included:

* [apache](https://github.com/opscode-cookbooks/apache2)
* [apt](https://github.com/opscode-cookbooks/apt)
* [build-essential](https://github.com/opscode-cookbooks/build-essential)
* [mysql](https://github.com/opscode-cookbooks/mysql)
* [openssl](https://github.com/opscode-cookbooks/openssl)
* [php](https://github.com/opscode-cookbooks/php)
* [xml](https://github.com/opscode-cookbooks/xml)
* [vim](https://github.com/opscode-cookbooks/vim)

### Requirements

* [VirtualBox](https://www.virtualbox.org/)
* [Ruby](http://www.ruby-lang.org/en/)
* [Vagrant](http://vagrantup.com/)
* [Librarian](https://github.com/applicationsonline/librarian)

### Usage

Clone it into your project folder, install cookbook dependencies with Librarian-Chef, launch/create Vagrant VM...

    git clone https://github.com/devert/vagrant-php-app-starter project-name
    rm -rf .git
    cd vagrant
    librarian-chef install
    vagrant up
    vagrant ssh
    cd project-name


