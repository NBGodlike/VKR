class TicketsController < ApplicationController
  def index
    @perfomance = Perfomance.find(params[:perfomance_id])
    @tickets = @perfomance.tickets.
        joins("LEFT JOIN perfomances AS perfomance ON perfomance.id = tickets.perfomance_id").
        joins("LEFT JOIN repertoires AS repertoire ON repertoire.id = perfomance.repertoire_id").
        joins("LEFT JOIN seats AS seat ON seat.id = tickets.seat_id").
        select("tickets.*, perfomance.date as per_date, repertoire.name as rep_name, seat.row as seat_row, seat.numseat as seat_numseat")

  end


  def show
    @ticket = Ticket.find(params[:id])
  end
end
