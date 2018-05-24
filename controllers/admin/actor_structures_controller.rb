class Admin::ActorStructuresController < Admin::AdminController




  def new
    @perfomance = Perfomance.find(params[:perfomance_id])
    @actstr = @perfomance.actor_structures.new
  end

  def create

    @perfomance = Perfomance.find(params[:perfomance_id])
    @actstr = @perfomance.actor_structures.new(actstr_params)
    if @actstr.save
      redirect_to theates_path,success: 'Успешно отредактировано'
    else

      render '_new.html.erb'
    end
  end

  def edit
    @actstr = ActorStructure.find(params[:id])
  end

  def update

    @actstr = ActorStructure.find(params[:id])
    if @actstr.update_attributes(actstr_params)
      redirect_to theates_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy

    @actstr = ActorStructure.find(params[:id])
    @actstr.destroy
    redirect_to theates_path, success: 'Успешно удалено'
  end
  private

  def actstr_params
    params.require(:actor_structure).permit(:role,:actor_id)
  end

end
