class Api::SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.user_id = current_user.id
    @subscription.save
    render json: @subscription
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    render json: {status: 'destroyed'}
  end

  private

    def subscription_params
      params.require(:subscription).permit(:sub_id)
    end
end
