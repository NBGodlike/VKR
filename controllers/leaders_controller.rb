class LeadersController < ApplicationController

  def index
    @theate = Theate.find(params[:theate_id])
    @leader = @theate.leaders.all
  end

  def show

    @leader = Leader.find(params[:id])
  end
  private

  def leader_params
    params.require(:leader).permit(:surname, :telefon, :name, :patronymic, :job)
  end
end
