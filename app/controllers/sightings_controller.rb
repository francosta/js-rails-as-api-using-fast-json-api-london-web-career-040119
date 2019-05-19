class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render json: SightingSerializer.new(@sightings, {include: [:bird, :location]}).serializable_hash
  end

  def show
    @sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(@sighting, {include: [:bird, :location]}).serializable_hash
  end
end