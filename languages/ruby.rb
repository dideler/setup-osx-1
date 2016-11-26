desc 'Setup ruby'
task 'language:ruby' => 'package_manager:rbenv' do
  unless File.exist?(File.expand_path('~/.rbenv/versions/2.3.3'))
    system 'rbenv install 2.3.3'
  end
  File.open(File.expand_path('~/.gemrc'), 'w').write('gem: --no-document')
end
