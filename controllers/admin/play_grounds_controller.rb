class Admin::PlayGroundsController < Admin::AdminController


  def new
    @play_ground = PlayGround.new
  end


  def create
    @play_ground = PlayGround.new(play_ground_params)
    if @play_ground.save
      redirect_to  play_grounds_path, success: 'Успех'
    else
      render 'new.html.erb'
    end
  end

  def edit

    @play_ground = PlayGround.find(params[:id])

  end

  def update
    @play_ground = PlayGround.find(params[:id])
    if @play_ground.update_attributes(play_ground_params)
      redirect_to  play_grounds_path, success: 'Успех'
    else
      render 'edit.html.erb'
    end
  end

  def destroy

    @play_ground = PlayGround.find(params[:id])
    @play_ground.destroy
    redirect_to  play_grounds_path
  end

  private

  def play_ground_params
    params.require(:play_ground).permit(:address, :seats)
  end

end
