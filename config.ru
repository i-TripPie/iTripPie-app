Dir.glob('./{config,services,views,controllers}/init.rb').each do |file|
  require file
end

run TriphoboApp
