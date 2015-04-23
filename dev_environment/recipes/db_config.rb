#configure the database

#install mysql gem
mysql2_chef_gem 'default' do
  action :install
end

#create a database service
mysql_service 'default' do
  version '5.6'
  initial_root_password data_bag_item('db_passwords', 'mysql_root')["key"]
  action [:create,:start]
end

# Create a mysql connection object
mysql_connection_info = {
    :host => "localhost",
    :username => 'root',
    :socket => '/var/run/mysql-default/mysqld.sock',
    :password => data_bag_item('db_passwords', 'mysql_root')["key"]
}

#create the database
mysql_database node['app_name'] do
  connection mysql_connection_info
  action :create
end
