class ZonesController < ApplicationController

  def index
    @play_ground = PlayGround.find(params[:play_ground_id])
    @zones = @play_ground.zones.
        joins("LEFT JOIN play_grounds AS play ON play.id = zones.play_ground_id").
        select("zones.*, play.address AS address")
  puts @zones.inspect
  end

  def show
    @zone = Zone.find(params[:id])
  end

  private

  def zone_params
    params.require(:zone).permit(:number, :price)
  end
end
