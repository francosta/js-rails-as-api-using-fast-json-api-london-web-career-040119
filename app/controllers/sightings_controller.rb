class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render json: SightingSerializer.new(@sightings).serializable_hash
  end
  
  def show
    @sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(@sighting).serializable_hash
  end
end