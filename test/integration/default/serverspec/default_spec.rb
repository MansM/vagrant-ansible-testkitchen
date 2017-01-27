require 'serverspec'
set :backend, :exec


describe user('testkees') do
  it { should exist }
end

describe user('henk') do
  it { should exist }
end