desc 'Setup ruby'
task 'language:ruby' => 'package_manager:rbenv' do
  puts 'Installing ruby'
  unless File.exist?(File.expand_path('~/.rbenv/versions/2.3.3'))
    system 'bash -lc "sudo apt install -y libreadline-dev zlib1g-dev"'
    system 'bash -lc "rbenv install 2.3.3"'
  end
  File.open(File.expand_path('~/.gemrc'), 'w').write('gem: --no-document')
end
