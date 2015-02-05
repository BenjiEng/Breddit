class Api::PostsController < ApplicationController
  #before_action :require_signed_in!, except: [:show]
  before_action :require_user_owns_post!, only: [:edit, :update]

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      render :json => @post
    else
      render :json => @post.errors.full_messages
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to(api_post_url(@post))
    else
      flash.now[:errors] = @post.errors.full_messages
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def index
    @posts = Post.all
    render :index
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to(api_posts_url)
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :content, :user_id)
  end

  def require_user_owns_post!
    return if Post.find(params[:id]).user_id == current_user
    render json: "Forbidden", status: forbidden
  end

end
