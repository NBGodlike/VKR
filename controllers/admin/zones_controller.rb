class Admin::ZonesController <  Admin::AdminController



  def new
    @play_ground = PlayGround.find(params[:play_ground_id])
    @zone = @play_ground.zones.new
  end



  def create
    @play_ground = PlayGround.find(params[:play_ground_id])
    @zone = @play_ground.zones.new(zone_params)
    if @zone.save
      redirect_to play_grounds_path, success: 'Зона успешно добавлена'
    else
      render 'new.html.erb'
    end
  end

  def edit
    @play_ground = PlayGround.find(params[:id])
    @zone = Zone.find(params[:format])
  end

  def update

    @zone = Zone.find(params[:id])
    if @zone.update_attributes(zone_params)
      redirect_to @zone, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @play_ground = PlayGround.find(params[:id])
    @zone = Zone.find(params[:format])
    @zone.destroy
    redirect_to  play_grounds_path, success: 'Успешно удалено'
  end

  private

  def zone_params
    params.require(:zone).permit(:number, :price)
  end
end
