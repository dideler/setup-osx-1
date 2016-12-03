def apt_install(packages, ppa)
  desc "Install #{packages}"
  task "application:#{packages}" do
    puts "Installing #{packages}"
    system "sudo add-apt-repository --yes #{ppa}" if ppa
    system 'sudo apt update --quiet'
    system "sudo apt install --quiet --yes #{packages}"
  end
end
