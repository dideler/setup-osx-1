require 'package_managers/linuxbrew'

APPLICATIONS = []

{
  'caffeine' => 'ppa:caffeine-developers/ppa',
  'fish' => 'ppa:fish-shell/release-2',
  'flux' => 'ppa:nathan-renniewaldock/flux',
  'git' => 'ppa:git-core/ppa',
  'skype' => 'deb http://archive.canonical.com/ $(lsb_release -sc) partner',
  'default-jdk htop postgresql postgresql-contrib silversearcher-ag tree unzip vim vlc wget' => nil,
}.each do |packages, ppa|
  install(packages, ppa)
  APPLICATIONS.push(packages)
end

def install(packages, ppa)
  system "add-apt-repository --yes #{ppa}" if ppa
  system 'apt update'
  system "apt install --yes #{packages}"
end
