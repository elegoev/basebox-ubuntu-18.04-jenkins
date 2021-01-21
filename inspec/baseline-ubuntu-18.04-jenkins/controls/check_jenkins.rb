# copyright: 2020, Urs Voegele

title "check jenkins"

# check docker package
control "jenkins-1.0" do                    # A unique ID for this control
  impact 1.0                                # The criticality, if this control fails.
  title "check if jenkins is installed"     # A human-readable title
  desc "check jenkins package"
  describe packages(/jenkins/) do           # The actual test
    its('statuses') { should cmp 'installed' } 
  end
end

# check docker service
control "jenkins-2.0" do                    # A unique ID for this control
  impact 1.0                                # The criticality, if this control fails.
  title "check if jenkins is running"       # A human-readable title
  desc "check jenkins service"
  describe service('jenkins') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
