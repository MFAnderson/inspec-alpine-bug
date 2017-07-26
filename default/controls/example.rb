# encoding: utf-8
# copyright: 2015, The Authors

title 'sample section'

# you can also use plain tests
describe file('/tmp/foo') do
  it { should exist }
end

describe processes('tail') do
  it { should exist }
end
