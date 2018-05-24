class ActorsController < ApplicationController

  def index
    @theate = Theate.find(params[:theate_id])
    @actors = @theate.actors.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  private

  def actor_params
    params.require(:actor).permit(:surname,  :name, :patronymic)
  end

end
