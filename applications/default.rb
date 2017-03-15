require 'package_managers/apt'
require 'package_managers/linuxbrew'

APPLICATIONS = []

{
  'caffeine' => 'ppa:caffeine-developers/ppa',
  'fish' => 'ppa:fish-shell/release-2',
  'fluxgui' => 'ppa:nathan-renniewaldock/flux',
  'git' => 'ppa:git-core/ppa',
  'skype' => '"deb http://archive.canonical.com/ $(lsb_release -sc) partner"',
  'thunderbird' => 'ppa:ubuntu-mozilla-daily/ppa',
  'default-jdk htop pdftk postgresql postgresql-contrib silversearcher-ag terminator tree unzip vim vlc wget' => nil,
}.each do |packages, ppa|
  apt_install(packages, ppa)
  APPLICATIONS.push(packages)
end
