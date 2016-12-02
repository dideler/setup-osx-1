desc 'Install Chruby'
task 'package_manager:chruby' => %w(
  package_manager:linuxbrew
  settings:bash_it
) do
  system 'bash -lc "brew install chruby"'
  system 'bash -lc "brew install ruby-install"'
  system 'bash -lc "bash-it enable plugin chruby-auto"'
end
