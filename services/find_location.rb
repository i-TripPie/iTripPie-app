require 'http'

# Returns an authenticated user, or nil
class FindLocation
  def self.call(location:)
    response = HTTP.post("#{ENV['API_HOST']}/locations",
                         json: {location: location["location"]})
    response.code == 200 ? response.parse : nil
  end
end
