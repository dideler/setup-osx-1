desc 'Install node version manager'
task 'package_manager:nvm' do
  system 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash'
end
