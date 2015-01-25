require 'serverspec'

# Required by serverspec
set :backend, :exec
set :path, '/opt/rbenv/bin:/opt/rbenv/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'

describe command('ruby --version') do
  its(:stdout) { should include '2.1.1' }
end

# Verify that bundler is installed
describe package('bundler') do
  it {should be_installed.by('gem') }
end

# Verify that MySQL service is running
describe service('mysqld') do
  it {should be_running }
end
