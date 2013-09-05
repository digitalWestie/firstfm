class FavouritesController < ApplicationController

  before_filter :authenticate_user!

  def favourite
    @station = Station.find(params[:id])
    current_user.stations << @station
    redirect_to stations_path, :notice => "#{@station.name} added to favourites"
  end

  def unfavourite
    @station = Station.find(params[:id])
    fav = current_user.favourites.find_by_station_id(params[:id])
    fav.destroy
    redirect_to stations_path, :notice => "#{@station.name} removed from favourites"
  end

end
