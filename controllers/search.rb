require 'sinatra'

# Base class for ConfigShare Web Application
class TriphoboApp < Sinatra::Base
  post '/search/?' do
    from_location = FindLocation.call(location: params)
    if from_location
      @from = params['location']
      triphobo = from_location['location_arr_trip']
      airbnb = from_location['location_arr_airbnb']
      if triphobo.any?
        @triphobo_order = Hash[ triphobo.sort_by { |key, val| key.to_i }.reverse! ]
      end
      if airbnb.kind_of?(Hash)
        if airbnb.any?
          @airbnb_order = Hash[ airbnb.sort_by { |key, val| key.to_i }.reverse! ]
        end
      end
      slim :search
    else
      slim :home
    end
  end
end
