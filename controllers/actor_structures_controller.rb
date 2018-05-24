class ActorStructuresController < ApplicationController

  def index

    @perfomance = Perfomance.find(params[:perfomance_id])

    @actstr = @perfomance.actor_structures.
        joins("LEFT JOIN perfomances AS perfomance ON perfomance.id = actor_structures.perfomance_id").
        joins("LEFT JOIN actors AS actor ON actor.id = actor_structures.actor_id").
        joins("LEFT JOIN repertoires AS repertoire ON repertoire.id = perfomance.repertoire_id").
        select("actor_structures.*, perfomance.date AS date,  actor.name AS name, actor.surname AS surname, actor.patronymic AS patronymic, repertoire.name AS firstname")

  end

  def show
    @actstr = ActorStructure.(params[:id])
  end

  private

  def actstr_params
    params.require(:actor_structure).permit(:role,:actor_id)
  end

end
