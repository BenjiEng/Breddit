class Api::SubredditsController < ApplicationController
  #need moderator before create, update or destroy

  def create
    @subreddit = Subreddit.new(subreddit_params)
    if @subreddit.save
      render :json => @subreddit
    else
      render :json => @subreddit.errors.full_messages
    end
  end

  def update
    @subreddit = Subreddit.find(params[:id])
    if @subreddit.update(subreddit_params)
      redirect_to(api_subreddit_url(@subreddit))
    else
      flash.now[:errors] = @subreddit.errors.full_messages
      render :edit
    end
  end

  def show
    @subreddit = Subreddit.find(params[:id])
    render :show
  end

  def index
    @subreddits = Subreddit.all
    render :index
  end

  def destroy
    @subreddit = Subreddit.find(params[:id])
    @subreddit.delete
    redirect_to(api_subreddits_url)
  end

  private

    def subreddit_params
      params.require(:subreddit).permit(:name, :description)
    end
end
