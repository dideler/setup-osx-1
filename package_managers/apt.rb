def apt_install(packages, ppa)
  desc "Install #{packages}"
  task "application:#{packages}" do
    system "add-apt-repository --yes #{ppa}" if ppa
    system 'apt update'
    system "apt install --yes #{packages}"
  end
end
