class Api::CommentsController < ApplicationController
  before_action :require_signed_in!, except: [:show]
  #body, post_id, user_id null

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render :json => @comment.errors
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy!
    render "show"
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      render "show"
    else
      render :json => @comment.errors
    end
  end

  def show
    @comment = Comment.find(params[:id])
    render "show"
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :post_id, :user_id)
    end
end
