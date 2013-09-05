class StreamsController < ApplicationController
  
  responds_to :html

  def index
    @station = Station.find(params[:station_id])
    @streams = station.streams
  end

  def new
    @station = Station.find(params[:station_id])
    @stream = @station.build
  end

  def create
    @station = Station.find(params[:station_id])
    @stream = @station.build(params[:stream])
    if @stream.save
      render 'new'
    else
      redirect_to station_streams_path(@station)
    end
  end

  def destroy
    @station = Station.find(params[:station_id])
    @stream = @station.streams.find(params[:id])
    @stream.destroy
    redirect_to station_streams_path(@station)
  end
end
