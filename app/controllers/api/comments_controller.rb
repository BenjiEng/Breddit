class Api::CommentsController < ApplicationController
  before_action :require_signed_in!, except: [:show]
  #body, post_id, user_id null

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.user_id = current_user.id
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
    @new_comment = Comment.new(post_id: @comment.post_id, parent_comment_id: @comment.id)
    render "show"
  end

  def upvote
    @comment = Comment.find(params[:id])
    @comment.upvote_by current_user
    redirect_to :back
  end

  def downvote
    @comment = Comment.find(params[:id])
    @comment.downvote_from current_user
    redirect_to :back
  end


  private

    def comment_params
      params.require(:comment).permit(:body, :post_id, :user_id, :parent_comment_id)
    end
end
