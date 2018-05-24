class Admin::LeadersController < Admin::AdminController



  def new
    @theate = Theate.find(params[:theate_id])
    @leader = @theate.leaders.new
  end



  def create
    @theate = Theate.find(params[:theate_id])
    @leader = @theate.leaders.new(leader_params)
    if @leader.save
      redirect_to theates_path, success: 'Успешно создано'
    else
      render 'new.html.erb'
    end
  end

  def edit
    @theate = Theate.find(params[:theate_id])
    @leader = Leader.find(params[:id])
  end

  def update

    @leader = Leader.find(params[:id])
    if @leader.update_attributes(leader_params)
      redirect_to theates_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @theate = Theate.find(params[:theate_id])
    @leader = Leader.find(params[:id])
    @leader.destroy
    redirect_to  theates_path, success: 'Успешно удалено'
  end

  private

  def leader_params
    params.require(:leader).permit(:surname, :telefon, :name, :patronymic, :job)
  end
end
