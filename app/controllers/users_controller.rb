class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to("#")
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to(api_subreddits_url)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
