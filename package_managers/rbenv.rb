desc 'Install rbenv'
task 'package_manager:rbenv' => 'package_manager:linuxbrew' do
  system 'bash -lc "brew install rbenv"'
  system 'bash -lc "brew install ruby-build"'
  system 'bash -lc "bash-it enable plugin rbenv"'
end
