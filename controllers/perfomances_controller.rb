class PerfomancesController < ApplicationController

  def index

    @rep = Repertoire.find(params[:repertoire_id])
    @perfomances = @rep.perfomances.
        joins("LEFT JOIN play_grounds AS play ON play.id = perfomances.play_ground_id").
        select("perfomances.*, play.address AS a")
    puts @perfomances.inspect
  end

  def new
    @rep = Repertoire.find(params[:repertoire_id])
    @perfomance = @rep.perfomances.new
  end

  def show
    @perfomance = Perfomance.find(params[:id])
  end

  def create

    @rep = Repertoire.find(params[:repertoire_id])
    @perfomance = @rep.perfomances.new(perfomance_params)
    if @perfomance.save
      redirect_to @perfomance
    else
      puts @perfomance.errors.inspect
      puts @perfomance.inspect
      render '_new.html.erb'
    end
  end

  private

  def perfomance_params
    params.require(:perfomance).permit(:status, :date, :play_ground_id, :created_at, :updated_at)
  end
  end
