# URL of latest puppet agent for windows:
# https://downloads.puppetlabs.com/windows/puppet/puppet-agent-x64-latest.msi

# Puppet Master Server
$puppetserver = "puppetmaster-35b5de4b.westeurope.cloudapp.azure.com"

# Download puppet installer
$puppet_url = "https://downloads.puppetlabs.com/windows/puppet/puppet-agent-x64-latest.msi"
$puppet_installer = "C:\puppet_agent.msi"

$client = new-object System.Net.WebClient
$client.DownloadFile($puppet_url,$puppet_installer)

# Install puppet agent
msiexec /qn /norestart /i $puppet_installer PUPPET_MASTER_SERVER=$puppetserver
