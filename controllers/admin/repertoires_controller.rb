class Admin::RepertoiresController < Admin::AdminController



  def new
    @theate = Theate.find(params[:theate_id])
    @repertoire = @theate.repertoires.new
  end

  def create

    @theate = Theate.find(params[:theate_id])
    @repertoire = @theate.repertoires.new(repertoire_params)
    if @repertoire.save
      redirect_to theates_path, success: 'Репертуар успешно добавлен'
    else
      render 'new.html.erb'
    end
  end


  def edit
    @repertoire = Repertoire.find(params[:id])
  end

  def update

    @repertoire = Repertoire.find(params[:id])
    if @repertoire.update_attributes(repertoire_params)
      redirect_to theates_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy

    @repertoire = Repertoire.find(params[:id])
    @repertoire.destroy
    redirect_to  theates_path
  end

  private

  def repertoire_params
    params.require(:repertoire).permit(:producer, :genre, :name)
  end

end
