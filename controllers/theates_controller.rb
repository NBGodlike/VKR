class TheatesController < ApplicationController

  before_action :set_theate, only: [:show]

  def index
    @theates = Theate.includes(:like_comments)

  end

  def show
    @leader = @theate.leaders.all
  end

  private

  def set_theate
    @theate = Theate.find(params[:id])
  end

end
