class  Admin::PerfomancesController < Admin::AdminController



  def new
    @rep = Repertoire.find(params[:repertoire_id])
    @perfomance = @rep.perfomances.new
  end



  def create

    @rep = Repertoire.find(params[:repertoire_id])
    @perfomance = @rep.perfomances.new(perfomance_params)
    if @perfomance.save
      redirect_to theates_path, success: 'Успешно создано'
    else

      render '_new.html.erb'
    end
  end

  def edit
    @perfomance = Perfomance.find(params[:id])
  end

  def update

    @perfomance = Perfomance.find(params[:id])
    if @perfomance.update_attributes(perfomance_params)
      redirect_to theates_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy

    @repertoire = Repertoire.find(params[:id])
    @perfomance = Perfomance.find(params[:format])
    @perfomance.destroy
    redirect_to theates_path, success: 'Успешно удалено'
  end
  private

  def perfomance_params
    params.require(:perfomance).permit(:status, :date, :play_ground_id, :created_at, :updated_at)
  end
  end
