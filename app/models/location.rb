class Location < ActiveRecord::Base
  def to_google_map
    {:latlng => [self.latitude, self.longitude]}
  end
end
