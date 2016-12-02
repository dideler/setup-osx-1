desc 'Install rbenv'
task 'package_manager:rbenv' => 'package_manager:linuxbrew' do
  system 'brew install rbenv'
  system 'brew install ruby-build'
  system 'bash -lc "bash-it enable plugin rbenv"'
end
