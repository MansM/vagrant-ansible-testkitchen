require 'serverspec'
set :backend, :exec


describe user('testkees') do
  it { should exist }
end

describe file ('/dev/sdb') do
  it { should be_block_device }
end

describe file('/') do
  it do
    should be_mounted.with(
      :type    => 'xfs',
      :rw      => true
    )
  end
end

# SSH should listening on port 22/tcp
describe port(22) do
  it { should be_listening }
  it { should be_listening.with('tcp') }
end

# SELinux should be enforcing
describe selinux do
  it { should be_enforcing }
end

# SSHD should be active
describe service('sshd') do
  it { should be_enabled }
end