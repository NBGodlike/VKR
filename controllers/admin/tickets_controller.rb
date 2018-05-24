class Admin::TicketsController < Admin::AdminController

  def new
    @seat = Seat.find(params[:seat_id])
    @ticket = @seat.tickets.new
  end



  def create
    @seat = Seat.find(params[:seat_id])
    @ticket = @seat.tickets.new(ticket_params)
    if @ticket.save
      redirect_to theates_path, success: 'Билет успешно добавлен'
    else
      render 'new.html.erb'
    end
  end

  def edit
    @seat = Seat.find(params[:seat_id])
    @ticket = Ticket.find(params[:id])
  end

  def update

    @ticket = Ticket.find(params[:id])
    if @ticket.update_attributes(ticket_params)
      redirect_to theates_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy

    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to  theates_path, success: 'Успешно удалено'
  end

  private

  def ticket_params
    params.require(:ticket).permit(:numticket, :selldate, :perfomance_id)
  end
end
