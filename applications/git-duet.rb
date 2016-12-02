require 'applications/default'

desc 'Install git-duet'
task 'application:git_duet' => %w(
  application:git
  package_manager:linuxbrew
  settings:bash_it
) do
  require 'yaml'
  system 'bash -lc "brew tap git-duet/tap"'
  system 'bash -lc "brew install git-duet"'

  config = {
    'authors' => {
      'di' => 'Dennis Ideler; ideler.dennis',
    },
    'email' => {
      'domain' => 'gmail.com'
    }
  }

  File.open(File.expand_path('~/.git-authors'), 'w').write(config.to_yaml)

  File.open(File.expand_path('~/.bash_it/custom/git_duet.env.bash'), 'w').write(
<<-EOS
export GIT_DUET_GLOBAL=false
export GIT_DUET_ROTATE_AUTHOR=true
EOS
  )
end

APPLICATIONS.push('git_duet')
