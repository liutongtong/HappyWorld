class LocationsController < ApplicationController
  def index
  end

  def create
    ip = request.remote_ip
    geo = request.location

    location = Location.create(longitude: geo.longitude, latitude: geo.latitude,
                               country: geo.country, city: geo.city, ip: ip)

    redirect_to controller: :maps, action: index
  end
end
