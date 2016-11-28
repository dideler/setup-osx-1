desc 'Node package manager'
task 'package_manager:yarn' do
  system 'curl -o- -L https://yarnpkg.com/install.sh | bash'
end
