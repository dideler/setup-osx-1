desc 'Configure Ubuntu'
task 'settings:ubuntu' do
  puts 'Configuring Ubuntu settings'

  # Enable four workspaces
  system('gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2')
  system('gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2')

  # Disable audible bell
  system('gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ audible-bell false')

  # Focus on the window where cursor is hovering
  system('gsettings set org.gnome.desktop.wm.preferences focus-mode "sloppy"')

  # Short keyboard delay (1/3 of a second)
  system('gsettings set org.gnome.desktop.peripherals.keyboard delay 333')

  # Very fast key press repeat rate
  system('gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 15')

  # Auto-hide the launcher
  system('gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-hide-mode 1')
end
