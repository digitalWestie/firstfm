class StreamsController < ApplicationController
  
  respond_to :html

  def index
    @station = Station.find(params[:station_id])
    @streams = @station.streams
  end

  def new
    @station = Station.find(params[:station_id])
    @stream = @station.streams.build
  end

  def create
    @station = Station.find(params[:station_id])
    @stream = @station.streams.build(params[:stream])
    if @stream.save
      redirect_to station_streams_path(@station)
    else
      render 'new'
    end
  end

  def destroy
    @station = Station.find(params[:station_id])
    @stream = @station.streams.find(params[:id])
    @stream.destroy
    redirect_to station_streams_path(@station)
  end
end
