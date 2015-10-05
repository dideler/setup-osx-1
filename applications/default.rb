require 'package_managers/homebrew'
require 'package_managers/homebrew_cask'

APPLICATIONS = []

{
  'bonjour-browser' => [],
  'dash' => [],
  'dropbox' => [],
  'evernote' => [],
  'firefox-uk' => [],
  'flux' => [],
  'flycut' => [],
  'google-chrome' => [],
  'java' => [],
  'mongohub' => [],
  'pepper-flash' => [],
  'rowanj-gitx' => [],
  'rubymine' => ['application:java6'],
  'screenhero' => [],
  'skype' => [],
  'slack' => [],
  'spectacle' => [],
  'vlc' => [],
  'xquartz' => []
}.each do |app_name, dependencies|
  brew_cask(app_name => dependencies)

  APPLICATIONS.push(app_name)
end

{
  'ag' => [],
  's3cmd' => [],
  'aws-cfn-tools' => ['application:java'],
  'pstree' => []
}.each do |app_name, dependencies|
  brew(app_name => dependencies)

  APPLICATIONS.push(app_name)
end

brew_cask('caskroom/homebrew-versions/java6' => [])
