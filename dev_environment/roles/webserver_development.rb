name "webserver_development"
description "development webserver"
run_list  "recipe[apt]",
          "recipe[build-essential::default]",
          "recipe[nginx]",
          "recipe[rbenv::default]",
          "recipe[rbenv::ruby_build]",
          "recipe[rails-config-mysql]",
          "recipe[rails-config-mysql::webserver_config]",
          "recipe[rails-config-mysql::db_config]"
