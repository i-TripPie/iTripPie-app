Dir.glob('./{config,services,views,controllers}/init.rb').each do |file|
  require file
end

require 'rake/testtask'

namespace :deploy do
  require 'config_env/rake_tasks'
  ConfigEnv.path_to_config("#{__dir__}/config/config_env.rb")
end
