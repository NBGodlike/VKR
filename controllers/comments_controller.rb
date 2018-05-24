class CommentsController < ApplicationController

  def index
    @theate = Theate.find(params[:theate_id])
    @comments = @theate.comments.all
  end

  def new
    @theate = Theate.find(params[:theate_id])
    @comment = @theate.comments.new
  end

  def create
    @theate = Theate.find(params[:theate_id])
    @comment = @theate.comments.new(comment_params)
    if @comment.save
      redirect_to @theate
    else
      render new
    end
  end

  def destroy


    @theate = Theate.find(params[:theate_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to  @theate
  end

  private



  def comment_params
    params.require(:comment).permit(:like, :content)
  end

end
