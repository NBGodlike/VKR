class Admin::ReviewsController < Admin::AdminController


  def new
    @perfomance = Perfomance.find(params[:perfomance_id])
    @review = @perfomance.reviews.new
  end



  def create
    @perfomance = Perfomance.find(params[:perfomance_id])
    @review = @perfomance.reviews.new(review_params)
    if @review.save
      redirect_to theates_path, success: 'Отзыв успешно добавлен'
    else
      render 'new.html.erb'
    end
  end

  def edit
    @perfomance = Perfomance.find(params[:perfomance_id])
    @review = Review.find(params[:id])
  end

  def update

    @review = Review.find(params[:id])
    if @leader.update_attributes(leader_params)
      redirect_to theates_path, success: 'Успешно отредактировано'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @perfomance = Perfomance.find(params[:id])
    @review = Review.find(params[:format])
    @review.destroy
    redirect_to  theates_path, success: 'Отзыв успешно удален'
  end

  private

  def review_params
    params.require(:review).permit(:surname, :content, :name, :patronymic)
  end


end
