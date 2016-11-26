desc 'Install rbenv'
task 'package_manager:rbenv' => 'package_manager:linuxbrew' do
  system 'brew install rbenv ruby-build'
  system 'echo "eval \"$(rbenv init -)\"" >> ~/.bash_profile'
end
