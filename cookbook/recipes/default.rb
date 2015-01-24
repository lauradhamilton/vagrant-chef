include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"

rbenv_ruby "2.1.1" do
  global true
end

rbenv_gem "bundler" do
  ruby_version "2.1.1"
end

# MySQL
include_recipe "mysql::server"
