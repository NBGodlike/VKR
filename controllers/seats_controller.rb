class SeatsController < ApplicationController

  def index
    @zone = Zone.find(params[:zone_id])
    @seats = @zone.seats.
        joins("LEFT JOIN zones AS play ON play.id = seats.zone_id").
        select("seats.*, play.number AS name")
    puts @zones.inspect
  end

  def show
    @seat = Seat.find(params[:id])
  end

end
