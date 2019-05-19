class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render json: SightingSerializer.new(@sightings).serializable_hash
  end

  def show
    @sighting = Sighting.find(params[:id])
    options = {}
    options[:include] = [:bird, :location]
    render json: SightingSerializer.new(@sightings, options).serializable_hash
  end
end