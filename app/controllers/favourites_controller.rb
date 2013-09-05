class FavouritesController < ApplicationController

  before_filter :authenticate_user!

  def favourite
    @station = Station.find(params[:id])
    current_user.stations << @station
    render :text => 'ok'
  end

  def unfavourite
    @station = Station.find()
    fav = current_user.favourites.find_by_station_id(params[:id])
    fav.destroy
    render :text => 'ok'
  end

end
