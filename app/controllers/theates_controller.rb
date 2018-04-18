class TheatesController < ApplicationController
  def index
    @theates = Theate.all
    @actors = Actor.all
  end

  def show
    @theate = Theate.find(params[:id])
  end

  def new
    @theate = Theate.new
  end

  def create
    @theate = Theate.new(theate_params)
    if @theate.save
      redirect_to @theate
    else
      render new
    end
  end

  def edit
    @theate =Theate.find(params[:id])
  end
  private

  def theate_params
    params.require(:theate).permit(:address, :telefon, :name)
  end
end
