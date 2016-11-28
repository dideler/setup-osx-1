$LOAD_PATH.unshift(__dir__)
Dir.glob(File.join(__dir__, '**', '*.rb')).each do |rake_file|
  require rake_file
end

task default: [
  'settings:ubuntu',
  'settings:bash_it',
  'language:ruby',
  'language:node'
] + APPLICATIONS.flat_map { |name| "application:#{name}" }
