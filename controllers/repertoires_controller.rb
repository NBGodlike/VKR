class RepertoiresController < ApplicationController

  def index
    if params[:search]
      @reps = Repertoire.search(params[:search]).order("created_at DESC").
          joins("LEFT JOIN theates AS first_theates ON first_theates.id = repertoires.theate_id").
          select("repertoires.*, first_theates.name AS first_theate_name")

    else

      @theate = Theate.find(params[:theate_id])
    @reps = @theate.repertoires.
        joins("LEFT JOIN theates AS first_theates ON first_theates.id = repertoires.theate_id").
        select("repertoires.*, first_theates.name AS first_theate_name")
      end

  end

  def show
    @rep = Repertoire.find(params[:id])
  end

  private

  def repertoire_params
    params.require(:repertoire).permit(:producer, :genre, :name)
  end

end
