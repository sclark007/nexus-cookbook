name             'nexus'
maintainer       'Riot Games'
maintainer_email 'kallan@riotgames.com'
license          'Apache 2.0'
description      'Installs/Configures nexus'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '3.4.0'

%w(ubuntu centos).each do |os|
  supports os
end

depends 'java', '>= 1.46.0'
depends 'chef_nginx', '>= 5.0.5'
depends 'artifact', '>= 1.12.1'

issues_url 'https://github.com/sclark007/nexus/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
source_url 'https://github.com/nexus/openfire-chef' if respond_to?(:source_url)
