Vagrant Rails Webserver Template
================================

A dead simple generic template for quickly getting a Vagrant-managed virtual machine up and running for Rails development. 

Instructions
-----------------

1. Install [Vagrant](https://www.vagrantup.com/downloads.html)
1. Install **Berkshelf** . To accomplish this you can either:
    - Install using the [Chef-DK](http://getchef.com/downloads/chef-dk)
    - Install directly from Rubygems: `gem install berkshelf` or add `gem 'berkshelf'` to your `Gemfile`
1. Install the [vagrant-berkshelf](https://github.com/berkshelf/vagrant-berkshelf) plugin: `vagrant plugin install vagrant-berkshelf`
1. Checkout this repo: `git checkout`
1. (Optional) - Open the `Vagrantfile` and set attributes as needed. By default the VM will configure:
    - Install Nginx and Ruby 2.1.5
    - Operating System: Ubuntu 14.0.4 64 bit
    - IP Address: 192.168.60.111.
    - Website root: the `code` folder is synced to the VM as the website root
    - Chef configuration: Uses chef-solo to provision the VM
1. Then `cd dev_environment`
1. Run `vagrant up`. 
1. Open a web browser and navigate to 192.168.60.111. You should see a "Hello, Vagrant!" message if all went well.
1. Remove the index.html placeholder file, then run `rails new code` to create a new Rails app.
