# # encoding: utf-8

# Inspec test for recipe tasks/docker.yml

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe systemd_service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe docker.version do
  its('Server.Version') { should cmp >= '1.12' }
  its('Client.Version') { should cmp >= '1.12' }
end
