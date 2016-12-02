desc 'Install Linuxbrew'
task 'package_manager:linuxbrew' do
  if system('command -v brew')
    system('brew update')
  else
    system('ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"')

    File.open(File.expand_path('~/.bash_it/custom/linuxbrew.env.bash'), 'w').write(
<<-EOS
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
EOS
    )

    system "source #{File.expand_path('~/.bashrc')}" 
  end
end

def brew(name_and_dependencies)
  app_name = name_and_dependencies.keys.first
  dependencies = name_and_dependencies[app_name] + ['package_manager:linuxbrew']
  desc "Install #{app_name}"
  task "application:#{app_name}" => dependencies do
    system "brew install #{app_name}"
  end
end
