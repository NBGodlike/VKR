class Admin::ActorsController < Admin::AdminController

  def new
    @theate = Theate.find(params[:theate_id])
    @actor = @theate.actors.new
  end

  def create
    @theate = Theate.find(params[:theate_id])
    @actor = @theate.actors.new(actor_params)
    if @actor.save
      redirect_to theates_path, success: 'Актер успешно добавлен'
    else
      render 'new.html.erb'
    end
  end

  def edit
    @theate = Theate.find(params[:theate_id])
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update_attributes(actor_params)
      redirect_to theates_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @theate = Theate.find(params[:theate_id])
    @actor = Actor.find(params[:id])
    @actor.destroy
    redirect_to  theates_path, success: 'Успешно удалено'
  end
  private

  def actor_params
    params.require(:actor).permit(:surname,  :name, :patronymic)
  end

end
