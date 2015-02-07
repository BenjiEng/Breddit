class Api::PostsController < ApplicationController
  #before_action :require_signed_in!, except: [:show]
  before_action :require_user_owns_post!, only: [:edit, :update]

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      render "show"
    else
      render :json => @post.errors
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      render "show"
    else
      render :json => @post.errors
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    render "show"
  end

  def index
    @posts = Post.all
    render "index"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    render "show"
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :content, :user_id, :sub_id)
  end

  # def require_user_owns_post!
  #   return if Post.find(params[:id]).user_id == current_user
  #   render json: "Forbidden", status: forbidden
  # end

end
