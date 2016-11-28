desc 'Install nodejs'
task 'language:node' => 'package_manager:nvm' do
  system 'bash -lc "nvm install node"'
  File.open(File.expand_path('~/.nvmrc'), 'w').write('7.2.0')
end
