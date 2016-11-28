def apt_install(packages, ppa)
  desc "Install #{packages}"
  task "application:#{packages}" do
    system "sudo add-apt-repository --yes #{ppa}" if ppa
    system 'sudo apt update'
    system "sudo apt install --yes #{packages}"
  end
end
