class Api::PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
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

  def subreddit_params
    params.require(:post).permit(:title, :url, :content, :user_id)
  end
end
