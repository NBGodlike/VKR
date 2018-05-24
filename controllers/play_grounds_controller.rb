class PlayGroundsController < ApplicationController

  def index
    @play_grounds = PlayGround.all

  end



  def show
    @play_ground = PlayGround.find(params[:id])
  end


  private

  def play_ground_params
    params.require(:play_ground).permit(:address, :seats)
  end

end
