class Admin::TheatesController < Admin::AdminController

  before_action :set_theate, only: [ :edit, :update, :destroy]


  def new
    @theate = Theate.new
  end

  def create
    @theate = Theate.new(theate_params)
    if @theate.save
      redirect_to @theate, success: 'Театр успеншо добавлен'
    else
      render 'new.html.erb'
    end
  end

  def edit
  end

  def update
    if @theate.update_attributes(theate_params)
      redirect_to @theate, success: 'Успех'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @theate.destroy
    redirect_to  theates_path
  end

  private

  def set_theate
    @theate = Theate.find(params[:id])
  end

  def theate_params
    params.require(:theate).permit(:address, :telefon, :name, :image)
  end
end
