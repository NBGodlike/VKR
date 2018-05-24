class Admin::SeatsController <  Admin::AdminController


  def new
    @zone = Zone.find(params[:zone_id])
    @seat = @zone.seats.new
  end

  def create
    @zone = Zone.find(params[:zone_id])
    @seat = @zone.seats.new(seat_params)
    if @seat.save
      redirect_to play_grounds_path, success: 'Успешно добавлено место'
    else
      render new
    end
  end

  def edit
    @zone = Zone.find(params[:id])
    @seat = Seat.find(params[:format])
  end

  def update

    @seat = Seat.find(params[:id])
    if @seat.update_attributes(seat_params)
      redirect_to play_grounds_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @zone = Zone.find(params[:id])
    @seat = Seat.find(params[:format])
    @seat.destroy
    redirect_to  play_grounds_path, success: 'Успешно удалено'
  end
  private

  def seat_params
    params.require(:seat).permit(:row, :numseat)
  end

end
