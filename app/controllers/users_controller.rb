class UsersController < ApplicationController
  DEF_SUB_IDS = [54, 58, 59, 57, 56]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sub_to_def(@user)
      sign_in(@user)
      redirect_to("#")
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def sub_to_def(user)
    DEF_SUB_IDS.each do |sub_id|
      Subscription.new(sub_id: sub_id, user_id: user.id)
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
